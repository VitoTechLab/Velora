BEGIN;

-- ===========================================================================
-- NOTIFICATION SCHEMA V2
-- Consolidated & Optimized from V1 + Updates
-- ===========================================================================

-- ===========================================================================
-- 1. ENUMS & EXTENSIONS
-- ===========================================================================
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

DO $$ BEGIN
  CREATE TYPE public.notification_type AS ENUM (
    'like', 'comment', 'follow', 'follow_request', 'follow_accepted', 
    'donation', 'mention', 'post_share', 'channel_invite',
    'campaign_created', 'campaign_update'
  );
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.notification_target_type AS ENUM (
    'post', 'comment', 'campaign', 'user', 'message'
  );
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

-- ===========================================================================
-- 2. CORE TABLE
-- ===========================================================================
CREATE TABLE IF NOT EXISTS public.notifications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  actor_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  
  type public.notification_type NOT NULL,
  target_id UUID,
  target_type public.notification_target_type,
  
  group_key TEXT,
  group_count INTEGER NOT NULL DEFAULT 1,
  
  -- Optimization: Simpan data preview di sini agar Read sangat cepat
  metadata JSONB NOT NULL DEFAULT '{}'::JSONB, 
  
  is_read BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ===========================================================================
-- 3. INDEXES
-- ===========================================================================
-- Keyset Pagination
CREATE INDEX IF NOT EXISTS idx_notifications_pagination
  ON public.notifications (user_id, created_at DESC, id DESC);

-- Fast Unread Badge
CREATE INDEX IF NOT EXISTS idx_notifications_unread
  ON public.notifications (user_id, is_read) WHERE is_read = FALSE;

-- Grouping Constraint
CREATE UNIQUE INDEX IF NOT EXISTS ux_notifications_grouping
  ON public.notifications (user_id, group_key) WHERE group_key IS NOT NULL;

-- Cleanup Index (for old read notifications)
CREATE INDEX IF NOT EXISTS idx_notifications_cleanup
  ON public.notifications (is_read, created_at) WHERE is_read = TRUE;

-- Follow Checks (for is_following_actor queries)
CREATE INDEX IF NOT EXISTS idx_user_follows_follower_following
  ON public.user_follows (follower_id, following_id);

CREATE INDEX IF NOT EXISTS idx_user_follows_following_follower
  ON public.user_follows (following_id, follower_id);

-- ===========================================================================
-- 3.1 AUTO-UPDATE TRIGGER
-- ===========================================================================
DROP TRIGGER IF EXISTS set_notifications_updated_at ON public.notifications;
CREATE TRIGGER set_notifications_updated_at
  BEFORE UPDATE ON public.notifications
  FOR EACH ROW
  EXECUTE FUNCTION public.set_updated_at();

-- ===========================================================================
-- 4. CORE LOGIC (CENTRALIZED)
-- ===========================================================================

-- [FUNCTION] UPSERT NOTIFICATION
CREATE OR REPLACE FUNCTION public.upsert_notification(
  p_user_id UUID,
  p_actor_id UUID,
  p_type public.notification_type,
  p_target_id UUID DEFAULT NULL,
  p_target_type public.notification_target_type DEFAULT NULL,
  p_group_key TEXT DEFAULT NULL,
  p_metadata JSONB DEFAULT '{}'::JSONB
)
RETURNS UUID
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
DECLARE
  v_notification_id UUID;
BEGIN
  IF p_user_id = p_actor_id THEN RETURN NULL; END IF;

  IF p_group_key IS NOT NULL THEN
    UPDATE public.notifications
    SET 
      actor_id = p_actor_id,
      group_count = group_count + 1,
      is_read = FALSE,
      metadata = public.notifications.metadata || p_metadata,
      updated_at = NOW()
    WHERE user_id = p_user_id AND group_key = p_group_key
    RETURNING id INTO v_notification_id;

    IF v_notification_id IS NOT NULL THEN RETURN v_notification_id; END IF;
  END IF;

  INSERT INTO public.notifications (
    user_id, actor_id, type, target_id, target_type, group_key, group_count, metadata
  ) VALUES (
    p_user_id, p_actor_id, p_type, p_target_id, p_target_type, p_group_key, 1, p_metadata
  ) RETURNING id INTO v_notification_id;

  RETURN v_notification_id;
END;
$$;

-- [FUNCTION] GET NOTIFICATIONS (Optimized with JOINs)
CREATE OR REPLACE FUNCTION public.get_notifications(
  p_limit INTEGER DEFAULT 20,
  p_cursor_created_at TIMESTAMPTZ DEFAULT NULL,
  p_cursor_id UUID DEFAULT NULL
)
RETURNS TABLE (
  id UUID,
  actor_username TEXT,
  actor_avatar_url TEXT,
  type public.notification_type,
  target_id UUID,
  target_type public.notification_target_type,
  group_count INTEGER,
  metadata JSONB,
  is_read BOOLEAN,
  is_following_actor BOOLEAN,
  created_at TIMESTAMPTZ
)
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = public
AS $$
  SELECT 
    n.id, up.username, up.avatar_url, n.type, n.target_id, n.target_type,
    n.group_count, n.metadata, n.is_read,
    EXISTS (
      SELECT 1 FROM public.user_follows uf 
      WHERE uf.follower_id = auth.uid() AND uf.following_id = n.actor_id
    ) AS is_following_actor,
    n.created_at
  FROM public.notifications n
  LEFT JOIN public.user_profiles up ON up.id = n.actor_id
  WHERE n.user_id = auth.uid()
    AND (p_cursor_created_at IS NULL OR (n.created_at, n.id) < (p_cursor_created_at, p_cursor_id))
  ORDER BY n.created_at DESC, n.id DESC
  LIMIT LEAST(GREATEST(p_limit, 1), 100);
$$;

-- [FUNCTION] GET UNREAD COUNT (for badge)
CREATE OR REPLACE FUNCTION public.get_unread_notification_count()
RETURNS INTEGER
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = public
AS $$
  SELECT COALESCE(COUNT(*)::INTEGER, 0)
  FROM public.notifications
  WHERE user_id = auth.uid() AND is_read = FALSE;
$$;

-- [FUNCTION] MARK ALL AS READ
CREATE OR REPLACE FUNCTION public.mark_all_notifications_read()
RETURNS VOID
LANGUAGE plpgsql SECURITY DEFINER SET search_path = public
AS $$
BEGIN
  UPDATE public.notifications
  SET is_read = TRUE, updated_at = NOW()
  WHERE user_id = auth.uid() AND is_read = FALSE;
END;
$$;

-- [FUNCTION] MARK SPECIFIC AS READ
CREATE OR REPLACE FUNCTION public.mark_notifications_read(p_notification_ids UUID[])
RETURNS VOID
LANGUAGE plpgsql SECURITY DEFINER SET search_path = public
AS $$
BEGIN
  UPDATE public.notifications
  SET is_read = TRUE, updated_at = NOW()
  WHERE user_id = auth.uid() 
    AND id = ANY(p_notification_ids) 
    AND is_read = FALSE;
END;
$$;

-- [FUNCTION] REDUCE OR DELETE (Centralized Engine for Unlike/Uncomment)
CREATE OR REPLACE FUNCTION public.reduce_or_delete_notification(
  p_user_id UUID, 
  p_group_key TEXT
) 
RETURNS VOID 
LANGUAGE plpgsql SECURITY DEFINER SET search_path = public
AS $$
BEGIN
  UPDATE public.notifications 
  SET group_count = GREATEST(group_count - 1, 0), updated_at = NOW()
  WHERE user_id = p_user_id AND group_key = p_group_key;

  DELETE FROM public.notifications 
  WHERE user_id = p_user_id AND group_key = p_group_key AND group_count <= 0;
END; 
$$;

-- [FUNCTION] CLEANUP OLD NOTIFICATIONS (Housekeeping)
CREATE OR REPLACE FUNCTION public.cleanup_old_notifications(p_days INTEGER DEFAULT 90)
RETURNS INTEGER
LANGUAGE plpgsql SECURITY DEFINER SET search_path = public
AS $$
DECLARE
  v_deleted INTEGER;
BEGIN
  DELETE FROM public.notifications
  WHERE created_at < NOW() - (p_days || ' days')::INTERVAL
    AND is_read = TRUE;

  GET DIAGNOSTICS v_deleted = ROW_COUNT;
  RETURN v_deleted;
END;
$$;

-- [FUNCTION] IS FOLLOWING (Helper)
CREATE OR REPLACE FUNCTION public.is_following(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_follows
    WHERE follower_id = auth.uid() AND following_id = target_user_id
  );
$$;

-- [FUNCTION] GET FOLLOW STATUS (Helper)
-- Returns: 'none', 'following', 'follower', 'mutual'
CREATE OR REPLACE FUNCTION public.get_follow_status(target_user_id UUID)
RETURNS TEXT
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = public
AS $$
  SELECT 
    CASE 
      WHEN EXISTS (SELECT 1 FROM public.user_follows WHERE follower_id = auth.uid() AND following_id = target_user_id)
       AND EXISTS (SELECT 1 FROM public.user_follows WHERE follower_id = target_user_id AND following_id = auth.uid())
      THEN 'mutual'
      WHEN EXISTS (SELECT 1 FROM public.user_follows WHERE follower_id = auth.uid() AND following_id = target_user_id)
      THEN 'following'
      WHEN EXISTS (SELECT 1 FROM public.user_follows WHERE follower_id = target_user_id AND following_id = auth.uid())
      THEN 'follower'
      ELSE 'none'
    END;
$$;

-- ===========================================================================
-- 5. AUTOMATIC TRIGGERS (CONNECTORS)
-- ===========================================================================

-- [TRIGGER] LIKE (INSERT + DELETE in one handler)
CREATE OR REPLACE FUNCTION public.trg_fn_handler_like() 
RETURNS TRIGGER AS $$
DECLARE v_owner UUID; v_img TEXT; v_key TEXT;
BEGIN
  SELECT user_id, image_urls[1] INTO v_owner, v_img 
  FROM public.feed_posts 
  WHERE id = COALESCE(NEW.post_id, OLD.post_id);
  
  v_key := 'post:' || COALESCE(NEW.post_id, OLD.post_id) || ':like';

  IF (TG_OP = 'INSERT') THEN
    PERFORM public.upsert_notification(
      v_owner, NEW.user_id, 'like'::public.notification_type, 
      NEW.post_id, 'post'::public.notification_target_type, v_key, 
      jsonb_build_object('thumbnail', v_img)
    );
  ELSIF (TG_OP = 'DELETE') THEN
    PERFORM public.reduce_or_delete_notification(v_owner, v_key);
  END IF;
  
  RETURN NULL;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_like ON public.feed_post_likes;
CREATE TRIGGER trg_notif_like 
AFTER INSERT OR DELETE ON public.feed_post_likes 
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_handler_like();

-- [TRIGGER] COMMENT (INSERT + DELETE in one handler)
CREATE OR REPLACE FUNCTION public.trg_fn_handler_comment() 
RETURNS TRIGGER AS $$
DECLARE v_owner UUID; v_img TEXT; v_key TEXT;
BEGIN
  SELECT user_id, image_urls[1] INTO v_owner, v_img 
  FROM public.feed_posts 
  WHERE id = COALESCE(NEW.post_id, OLD.post_id);
  
  v_key := 'post:' || COALESCE(NEW.post_id, OLD.post_id) || ':comment';

  IF (TG_OP = 'INSERT') THEN
    PERFORM public.upsert_notification(
      v_owner, NEW.user_id, 'comment'::public.notification_type, 
      NEW.post_id, 'post'::public.notification_target_type, v_key,
      jsonb_build_object('thumbnail', v_img, 'preview', LEFT(NEW.content, 100))
    );
  ELSIF (TG_OP = 'DELETE') THEN
    PERFORM public.reduce_or_delete_notification(v_owner, v_key);
  END IF;
  
  RETURN NULL;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_comment ON public.feed_comments;
CREATE TRIGGER trg_notif_comment 
AFTER INSERT OR DELETE ON public.feed_comments 
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_handler_comment();

-- [TRIGGER] FOLLOW (INSERT + DELETE in one handler)
CREATE OR REPLACE FUNCTION public.trg_fn_handler_follow() 
RETURNS TRIGGER AS $$
DECLARE v_key TEXT;
BEGIN
  -- Group key: follow:{target_user}:{actor_user} untuk tracking unfollow
  v_key := 'follow:' || COALESCE(NEW.following_id, OLD.following_id) || ':' || COALESCE(NEW.follower_id, OLD.follower_id);

  IF (TG_OP = 'INSERT') THEN
    PERFORM public.upsert_notification(
      NEW.following_id, NEW.follower_id, 
      'follow'::public.notification_type, 
      NEW.follower_id, 'user'::public.notification_target_type, 
      v_key, '{}'::jsonb
    );
  ELSIF (TG_OP = 'DELETE') THEN
    PERFORM public.reduce_or_delete_notification(OLD.following_id, v_key);
  END IF;
  
  RETURN NULL;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_follow ON public.user_follows;
CREATE TRIGGER trg_notif_follow 
AFTER INSERT OR DELETE ON public.user_follows 
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_handler_follow();

-- [TRIGGER] FOLLOW REQUEST (INSERT + UPDATE + DELETE in one handler)
CREATE OR REPLACE FUNCTION public.trg_fn_handler_follow_request() 
RETURNS TRIGGER AS $$
DECLARE v_key TEXT;
BEGIN
  -- Group key untuk tracking cancel request
  v_key := 'follow_request:' || COALESCE(NEW.target_id, OLD.target_id) || ':' || COALESCE(NEW.requester_id, OLD.requester_id);

  IF (TG_OP = 'INSERT' AND NEW.status = 'pending') THEN
    PERFORM public.upsert_notification(
      NEW.target_id, NEW.requester_id, 
      'follow_request'::public.notification_type, 
      NEW.requester_id, 'user'::public.notification_target_type, 
      v_key, '{}'::jsonb
    );
  ELSIF (TG_OP = 'UPDATE' AND NEW.status = 'accepted' AND OLD.status = 'pending') THEN
    -- Hapus notifikasi follow_request lama
    PERFORM public.reduce_or_delete_notification(OLD.target_id, v_key);
    -- Kirim notifikasi follow_accepted ke requester
    PERFORM public.upsert_notification(
      NEW.requester_id, NEW.target_id, 
      'follow_accepted'::public.notification_type, 
      NEW.target_id, 'user'::public.notification_target_type, 
      NULL, '{}'::jsonb
    );
  ELSIF (TG_OP = 'DELETE') THEN
    -- Cancel request → hapus notifikasi pending
    PERFORM public.reduce_or_delete_notification(OLD.target_id, v_key);
  END IF;
  
  RETURN NULL;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_follow_req ON public.user_follow_requests;
CREATE TRIGGER trg_notif_follow_req 
AFTER INSERT OR UPDATE OR DELETE ON public.user_follow_requests 
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_handler_follow_request();

-- [TRIGGER] MENTION (from mentions table)
CREATE OR REPLACE FUNCTION public.trg_fn_notify_mention() 
RETURNS TRIGGER AS $$
BEGIN
  PERFORM public.upsert_notification(
    NEW.user_id, NEW.created_by, 
    'mention'::public.notification_type, 
    NEW.entity_id, 
    CASE 
      WHEN NEW.entity_type = 'message' THEN 'message'::public.notification_target_type 
      ELSE 'post'::public.notification_target_type 
    END,
    NULL, 
    jsonb_build_object('entity_type', NEW.entity_type)
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_mention ON public.mentions;
CREATE TRIGGER trg_notif_mention 
AFTER INSERT ON public.mentions 
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_notify_mention();

-- [TRIGGER] CAMPAIGN CREATED (Notify Followers)
CREATE OR REPLACE FUNCTION public.trg_fn_notify_campaign_created()
RETURNS TRIGGER AS $$
BEGIN
  -- Batch insert for followers
  INSERT INTO public.notifications (
    user_id, actor_id, type, target_id, target_type, metadata
  )
  SELECT 
    follower_id,       -- Target: The follower
    NEW.user_id,       -- Actor: The creator
    'campaign_created',
    NEW.id,
    'campaign',
    jsonb_build_object('title', NEW.title, 'description', LEFT(NEW.description, 50))
  FROM public.user_follows
  WHERE following_id = NEW.user_id;

  RETURN NULL;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_campaign_created ON public.campaigns;
CREATE TRIGGER trg_notif_campaign_created
AFTER INSERT ON public.campaigns
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_notify_campaign_created();

-- [TRIGGER] CAMPAIGN UPDATE (Notify Donors)
CREATE OR REPLACE FUNCTION public.trg_fn_notify_campaign_update()
RETURNS TRIGGER AS $$
DECLARE 
  v_campaign_title TEXT;
  v_owner_id UUID;
BEGIN
  SELECT title, user_id INTO v_campaign_title, v_owner_id 
  FROM public.campaigns WHERE id = NEW.campaign_id;

  -- Notify unique donors
  INSERT INTO public.notifications (
    user_id, actor_id, type, target_id, target_type, metadata
  )
  SELECT DISTINCT
    user_id,
    v_owner_id,
    'campaign_update',
    NEW.campaign_id,
    'campaign',
    jsonb_build_object(
      'update_title', LEFT(NEW.update_text, 50), 
      'campaign_title', v_campaign_title
    )
  FROM public.donations
  WHERE campaign_id = NEW.campaign_id 
    AND user_id IS NOT NULL 
    AND payment_status = 'success'
    AND user_id != v_owner_id;

  RETURN NULL;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_campaign_update ON public.campaign_updates;
CREATE TRIGGER trg_notif_campaign_update
AFTER INSERT ON public.campaign_updates
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_notify_campaign_update();

-- [TRIGGER] DONATION RECEIVED (Notify Owner)
CREATE OR REPLACE FUNCTION public.trg_fn_notify_donation()
RETURNS TRIGGER AS $$
DECLARE v_owner UUID; v_title TEXT;
BEGIN
  IF NEW.payment_status != 'success' THEN RETURN NULL; END IF;
  IF (TG_OP = 'UPDATE' AND OLD.payment_status = 'success') THEN RETURN NULL; END IF;

  SELECT user_id, title INTO v_owner, v_title FROM public.campaigns WHERE id = NEW.campaign_id;
  
  -- Skip self-donation notifs
  IF v_owner = NEW.user_id THEN RETURN NULL; END IF;

  PERFORM public.upsert_notification(
    v_owner, 
    NEW.user_id, -- Can be NULL (Guest)
    'donation'::public.notification_type,
    NEW.campaign_id, 
    'campaign'::public.notification_target_type,
    NULL,
    jsonb_build_object(
      'amount', NEW.amount_total, 
      'donor_name', CASE WHEN NEW.is_anonymous THEN 'Anonymous' ELSE NULL END
    )
  );
  RETURN NULL;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS trg_notif_donation ON public.donations;
CREATE TRIGGER trg_notif_donation 
AFTER INSERT OR UPDATE ON public.donations 
FOR EACH ROW EXECUTE FUNCTION public.trg_fn_notify_donation();

-- ===========================================================================
-- 6. RLS & GRANTS
-- ===========================================================================
ALTER TABLE public.notifications ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "notifications_select_own" ON public.notifications;
CREATE POLICY "notifications_select_own" ON public.notifications
  FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "notifications_update_own" ON public.notifications;
CREATE POLICY "notifications_update_own" ON public.notifications
  FOR UPDATE TO authenticated 
  USING (user_id = auth.uid()) 
  WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "notifications_delete_own" ON public.notifications;
CREATE POLICY "notifications_delete_own" ON public.notifications
  FOR DELETE TO authenticated USING (user_id = auth.uid());

-- Table Grants
GRANT SELECT, UPDATE, DELETE ON public.notifications TO authenticated;

-- Enum Grants
GRANT USAGE ON TYPE public.notification_type TO authenticated;
GRANT USAGE ON TYPE public.notification_target_type TO authenticated;

-- Function Grants
GRANT EXECUTE ON FUNCTION public.upsert_notification TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_notifications TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_unread_notification_count TO authenticated;
GRANT EXECUTE ON FUNCTION public.mark_all_notifications_read TO authenticated;
GRANT EXECUTE ON FUNCTION public.mark_notifications_read TO authenticated;
GRANT EXECUTE ON FUNCTION public.is_following TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_follow_status TO authenticated;

-- ===========================================================================
-- 7. REALTIME
-- ===========================================================================
DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables 
    WHERE pubname = 'supabase_realtime' AND tablename = 'notifications'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.notifications;
  END IF;
END $$;

COMMIT;
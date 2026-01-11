BEGIN;

-- ============================================
-- NOTIFICATION SCHEMA
-- ============================================

CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- [ENUM] NOTIFICATION TYPES
DO $$ BEGIN
  CREATE TYPE public.notification_type AS ENUM (
    'like',
    'comment',
    'follow',
    'follow_request',
    'follow_accepted',
    'donation',
    'mention'
  );
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.notification_target_type AS ENUM (
    'post',
    'comment',
    'campaign',
    'user'
  );
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

-- [TABLE] NOTIFICATIONS
CREATE TABLE IF NOT EXISTS public.notifications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  actor_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  
  TYPE public.notification_type NOT NULL,
  target_id UUID,
  target_type public.notification_target_type,
  
  group_key TEXT,
  group_count INTEGER NOT NULL DEFAULT 1,
  
  is_read BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- [INDEX] KEYSET PAGINATION (cursor-based with created_at + id)
CREATE INDEX IF NOT EXISTS notifications_user_created_id_idx
  ON public.notifications (user_id, created_at DESC, id DESC);

-- [INDEX] UNREAD COUNT (fast badge queries)
CREATE INDEX IF NOT EXISTS notifications_user_unread_idx
  ON public.notifications (user_id, is_read)
  WHERE is_read = FALSE;

-- [INDEX] GROUPING (prevent duplicate notifications)
CREATE UNIQUE INDEX IF NOT EXISTS notifications_group_key_ux
  ON public.notifications (user_id, group_key)
  WHERE group_key IS NOT NULL;

-- [INDEX] CLEANUP (old read notifications)
CREATE INDEX IF NOT EXISTS notifications_cleanup_idx
  ON public.notifications (is_read, created_at)
  WHERE is_read = TRUE;

-- [TRIGGER] AUTO UPDATE updated_at
DROP TRIGGER IF EXISTS set_notifications_updated_at ON public.notifications;
CREATE TRIGGER set_notifications_updated_at
  BEFORE UPDATE ON public.notifications
  FOR EACH ROW
  EXECUTE FUNCTION public.set_updated_at();

-- [FUNCTION] GET NOTIFICATIONS (cursor-based pagination)
CREATE OR REPLACE FUNCTION get_notifications(
  p_limit INTEGER DEFAULT 20,
  p_cursor_created_at TIMESTAMPTZ DEFAULT NULL,
  p_cursor_id UUID DEFAULT NULL
)
RETURNS TABLE (
  id UUID,
  user_id UUID,
  actor_id UUID,
  TYPE public.notification_type,
  target_id UUID,
  target_type public.notification_target_type,
  group_key TEXT,
  group_count INTEGER,
  is_read BOOLEAN,
  created_at TIMESTAMPTZ,
  updated_at TIMESTAMPTZ
)
LANGUAGE SQL
STABLE
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
  SELECT 
    n.id,
    n.user_id,
    n.actor_id,
    n.TYPE,
    n.target_id,
    n.target_type,
    n.group_key,
    n.group_count,
    n.is_read,
    n.created_at,
    n.updated_at
  FROM notifications n
  WHERE n.user_id = auth.uid()
    AND (
      p_cursor_created_at IS NULL 
      OR (n.created_at, n.id) < (p_cursor_created_at, p_cursor_id)
    )
  ORDER BY n.created_at DESC, n.id DESC
  LIMIT LEAST(GREATEST(p_limit, 1), 100);
$$;

GRANT EXECUTE ON FUNCTION get_notifications(INTEGER, TIMESTAMPTZ, UUID) TO authenticated;

-- [FUNCTION] GET UNREAD COUNT
CREATE OR REPLACE FUNCTION get_unread_notification_count()
RETURNS INTEGER
LANGUAGE SQL
STABLE
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
  SELECT COALESCE(COUNT(*)::INTEGER, 0)
  FROM notifications
  WHERE user_id = auth.uid() AND is_read = FALSE;
$$;

GRANT EXECUTE ON FUNCTION get_unread_notification_count() TO authenticated;

-- [FUNCTION] MARK ALL AS READ
CREATE OR REPLACE FUNCTION mark_all_notifications_read()
RETURNS VOID
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
BEGIN
  UPDATE notifications
  SET is_read = TRUE, updated_at = NOW()
  WHERE user_id = auth.uid() AND is_read = FALSE;
END;
$$;

GRANT EXECUTE ON FUNCTION mark_all_notifications_read() TO authenticated;

-- [FUNCTION] MARK SPECIFIC AS READ
CREATE OR REPLACE FUNCTION mark_notifications_read(p_notification_ids UUID[])
RETURNS VOID
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
BEGIN
  UPDATE notifications
  SET is_read = TRUE, updated_at = NOW()
  WHERE user_id = auth.uid() 
    AND id = ANY(p_notification_ids) 
    AND is_read = FALSE;
END;
$$;

GRANT EXECUTE ON FUNCTION mark_notifications_read(UUID[]) TO authenticated;

-- [FUNCTION] UPSERT NOTIFICATION (with grouping)
CREATE OR REPLACE FUNCTION upsert_notification(
  p_user_id UUID,
  p_actor_id UUID,
  p_type public.notification_type,
  p_target_id UUID DEFAULT NULL,
  p_target_type public.notification_target_type DEFAULT NULL,
  p_group_key TEXT DEFAULT NULL
)
RETURNS UUID
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
DECLARE
  v_notification_id UUID;
BEGIN
  IF p_user_id = p_actor_id THEN
    RETURN NULL;
  END IF;

  IF p_group_key IS NOT NULL THEN
    UPDATE notifications
    SET 
      actor_id = p_actor_id,
      group_count = group_count + 1,
      is_read = FALSE,
      updated_at = NOW()
    WHERE user_id = p_user_id AND group_key = p_group_key
    RETURNING id INTO v_notification_id;

    IF v_notification_id IS NOT NULL THEN
      RETURN v_notification_id;
    END IF;
  END IF;

  INSERT INTO notifications (
    user_id, actor_id, TYPE, target_id, target_type, group_key, group_count
  ) VALUES (
    p_user_id, p_actor_id, p_type, p_target_id, p_target_type, p_group_key, 1
  )
  RETURNING id INTO v_notification_id;

  RETURN v_notification_id;
END;
$$;

GRANT EXECUTE ON FUNCTION upsert_notification(UUID, UUID, public.notification_type, UUID, public.notification_target_type, TEXT) TO authenticated;

-- [FUNCTION] DELETE NOTIFICATION BY ACTION
CREATE OR REPLACE FUNCTION delete_notification_by_action(
  p_user_id UUID,
  p_actor_id UUID,
  p_type public.notification_type,
  p_target_id UUID DEFAULT NULL
)
RETURNS VOID
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
BEGIN
  DELETE FROM notifications
  WHERE user_id = p_user_id
    AND actor_id = p_actor_id
    AND TYPE = p_type
    AND (p_target_id IS NULL OR target_id = p_target_id);
END;
$$;

GRANT EXECUTE ON FUNCTION delete_notification_by_action(UUID, UUID, public.notification_type, UUID) TO authenticated;

-- [FUNCTION] CLEANUP OLD NOTIFICATIONS
CREATE OR REPLACE FUNCTION cleanup_old_notifications(p_days INTEGER DEFAULT 90)
RETURNS INTEGER
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
DECLARE
  v_deleted INTEGER;
BEGIN
  DELETE FROM notifications
  WHERE created_at < NOW() - (p_days || ' days')::INTERVAL
    AND is_read = TRUE;

  GET DIAGNOSTICS v_deleted = ROW_COUNT;
  RETURN v_deleted;
END;
$$;

-- [TRIGGER] POST LIKE NOTIFICATION
CREATE OR REPLACE FUNCTION notify_on_post_like()
RETURNS TRIGGER
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
DECLARE
  v_post_owner UUID;
BEGIN
  SELECT user_id INTO v_post_owner FROM feed_posts WHERE id = NEW.post_id;

  IF v_post_owner IS NOT NULL THEN
    PERFORM upsert_notification(
      v_post_owner,
      NEW.user_id,
      'like'::public.notification_type,
      NEW.post_id,
      'post'::public.notification_target_type,
      'post:' || NEW.post_id::TEXT || ':like'
    );
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_notify_on_post_like ON public.feed_post_likes;
CREATE TRIGGER trg_notify_on_post_like
  AFTER INSERT ON public.feed_post_likes
  FOR EACH ROW
  EXECUTE FUNCTION notify_on_post_like();

-- [TRIGGER] REMOVE NOTIFICATION ON UNLIKE
CREATE OR REPLACE FUNCTION notify_remove_on_post_unlike()
RETURNS TRIGGER
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
DECLARE
  v_post_owner UUID;
BEGIN
  SELECT user_id INTO v_post_owner FROM feed_posts WHERE id = OLD.post_id;

  IF v_post_owner IS NOT NULL THEN
    UPDATE notifications
    SET group_count = GREATEST(group_count - 1, 0), updated_at = NOW()
    WHERE user_id = v_post_owner 
      AND group_key = 'post:' || OLD.post_id::TEXT || ':like';

    DELETE FROM notifications
    WHERE user_id = v_post_owner 
      AND group_key = 'post:' || OLD.post_id::TEXT || ':like'
      AND group_count <= 0;
  END IF;

  RETURN OLD;
END;
$$;

DROP TRIGGER IF EXISTS trg_notify_remove_on_post_unlike ON public.feed_post_likes;
CREATE TRIGGER trg_notify_remove_on_post_unlike
  AFTER DELETE ON public.feed_post_likes
  FOR EACH ROW
  EXECUTE FUNCTION notify_remove_on_post_unlike();

-- [TRIGGER] COMMENT NOTIFICATION
CREATE OR REPLACE FUNCTION notify_on_comment()
RETURNS TRIGGER
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
DECLARE
  v_post_owner UUID;
BEGIN
  SELECT user_id INTO v_post_owner FROM feed_posts WHERE id = NEW.post_id;

  IF v_post_owner IS NOT NULL THEN
    PERFORM upsert_notification(
      v_post_owner,
      NEW.user_id,
      'comment'::public.notification_type,
      NEW.post_id,
      'post'::public.notification_target_type,
      NULL
    );
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_notify_on_comment ON public.feed_comments;
CREATE TRIGGER trg_notify_on_comment
  AFTER INSERT ON public.feed_comments
  FOR EACH ROW
  EXECUTE FUNCTION notify_on_comment();

-- [TRIGGER] FOLLOW NOTIFICATION
CREATE OR REPLACE FUNCTION notify_on_follow()
RETURNS TRIGGER
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
BEGIN
  PERFORM upsert_notification(
    NEW.following_id,
    NEW.follower_id,
    'follow'::public.notification_type,
    NEW.follower_id,
    'user'::public.notification_target_type,
    NULL
  );

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_notify_on_follow ON public.user_follows;
CREATE TRIGGER trg_notify_on_follow
  AFTER INSERT ON public.user_follows
  FOR EACH ROW
  EXECUTE FUNCTION notify_on_follow();

-- [TRIGGER] FOLLOW REQUEST NOTIFICATION
CREATE OR REPLACE FUNCTION notify_on_follow_request()
RETURNS TRIGGER
LANGUAGE PLPGSQL
SECURITY DEFINER
SET search_path = PUBLIC
AS $$
BEGIN
  IF NEW.status = 'pending' THEN
    PERFORM upsert_notification(
      NEW.target_id,
      NEW.requester_id,
      'follow_request'::public.notification_type,
      NEW.requester_id,
      'user'::public.notification_target_type,
      'follow_request:' || NEW.target_id::TEXT
    );
  ELSIF NEW.status = 'accepted' AND OLD.status = 'pending' THEN
    PERFORM upsert_notification(
      NEW.requester_id,
      NEW.target_id,
      'follow_accepted'::public.notification_type,
      NEW.target_id,
      'user'::public.notification_target_type,
      NULL
    );
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_notify_on_follow_request ON public.user_follow_requests;
CREATE TRIGGER trg_notify_on_follow_request
  AFTER INSERT OR UPDATE ON public.user_follow_requests
  FOR EACH ROW
  EXECUTE FUNCTION notify_on_follow_request();

-- [RLS] ENABLE ROW LEVEL SECURITY
ALTER TABLE public.notifications ENABLE ROW LEVEL SECURITY;

-- [POLICY] SELECT OWN NOTIFICATIONS
DROP POLICY IF EXISTS notifications_select_own ON public.notifications;
CREATE POLICY notifications_select_own ON public.notifications
  FOR SELECT TO authenticated
  USING (user_id = auth.uid());

-- [POLICY] UPDATE OWN NOTIFICATIONS
DROP POLICY IF EXISTS notifications_update_own ON public.notifications;
CREATE POLICY notifications_update_own ON public.notifications
  FOR UPDATE TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- [POLICY] DELETE OWN NOTIFICATIONS
DROP POLICY IF EXISTS notifications_delete_own ON public.notifications;
CREATE POLICY notifications_delete_own ON public.notifications
  FOR DELETE TO authenticated
  USING (user_id = auth.uid());

-- [GRANT] TABLE PERMISSIONS
GRANT SELECT, UPDATE, DELETE ON public.notifications TO authenticated;

-- [GRANT] ENUM TYPES
GRANT USAGE ON TYPE public.notification_type TO authenticated;
GRANT USAGE ON TYPE public.notification_target_type TO authenticated;

-- [REALTIME] ENABLE PUBLICATION
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'notifications'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.notifications;
  END IF;
END $$;

COMMIT;

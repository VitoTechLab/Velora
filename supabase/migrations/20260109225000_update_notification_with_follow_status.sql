BEGIN;

-- ============================================
-- NOTIFICATION SCHEMA UPDATES
-- Adding is_following_actor to notifications query
-- Adding new notification types
-- ============================================

-- ------------------------------------------------------------
-- 1) ADD NEW NOTIFICATION TYPES TO ENUM
-- ------------------------------------------------------------
DO $$
BEGIN
  -- Add post_share if not exists
  IF NOT EXISTS (
    SELECT 1 FROM pg_enum 
    WHERE enumtypid = 'public.notification_type'::regtype 
      AND enumlabel = 'post_share'
  ) THEN
    ALTER TYPE public.notification_type ADD VALUE IF NOT EXISTS 'post_share';
  END IF;
  
  -- Add channel_invite if not exists
  IF NOT EXISTS (
    SELECT 1 FROM pg_enum 
    WHERE enumtypid = 'public.notification_type'::regtype 
      AND enumlabel = 'channel_invite'
  ) THEN
    ALTER TYPE public.notification_type ADD VALUE IF NOT EXISTS 'channel_invite';
  END IF;
EXCEPTION
  WHEN others THEN NULL;
END $$;

-- ------------------------------------------------------------
-- 2) DROP EXISTING GET_NOTIFICATIONS FUNCTION
-- Must drop first because we're changing the return type
-- ------------------------------------------------------------
DROP FUNCTION IF EXISTS get_notifications(INTEGER, TIMESTAMPTZ, UUID);

-- ------------------------------------------------------------
-- 3) RECREATE GET_NOTIFICATIONS FUNCTION WITH NEW RETURN TYPE
-- Now includes: actor info, target preview, and is_following_actor
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION get_notifications(
  p_limit INTEGER DEFAULT 20,
  p_cursor_created_at TIMESTAMPTZ DEFAULT NULL,
  p_cursor_id UUID DEFAULT NULL
)
RETURNS TABLE (
  id UUID,
  user_id UUID,
  actor_id UUID,
  type public.notification_type,
  target_id UUID,
  target_type public.notification_target_type,
  group_key TEXT,
  group_count INTEGER,
  is_read BOOLEAN,
  created_at TIMESTAMPTZ,
  updated_at TIMESTAMPTZ,
  -- Actor info from user_profiles
  actor_username TEXT,
  actor_photo_url TEXT,
  -- Target preview (post thumbnail)
  target_preview_url TEXT,
  -- Follow relationship: is the current user following the actor?
  is_following_actor BOOLEAN
)
LANGUAGE SQL
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT 
    n.id,
    n.user_id,
    n.actor_id,
    n.type,
    n.target_id,
    n.target_type,
    n.group_key,
    n.group_count,
    n.is_read,
    n.created_at,
    n.updated_at,
    -- Actor info
    actor_profile.username AS actor_username,
    actor_profile.avatar_url AS actor_photo_url,
    -- Target preview (for post-related notifications)
    CASE 
      WHEN n.target_type = 'post' THEN (
        SELECT fp.image_urls[1] 
        FROM public.feed_posts fp 
        WHERE fp.id = n.target_id
        LIMIT 1
      )
      ELSE NULL
    END AS target_preview_url,
    -- Is current user following the actor?
    EXISTS (
      SELECT 1 FROM public.user_follows uf
      WHERE uf.follower_id = auth.uid()
        AND uf.following_id = n.actor_id
    ) AS is_following_actor
  FROM public.notifications n
  LEFT JOIN public.user_profiles actor_profile ON actor_profile.id = n.actor_id
  WHERE n.user_id = auth.uid()
    AND (
      p_cursor_created_at IS NULL 
      OR (n.created_at, n.id) < (p_cursor_created_at, p_cursor_id)
    )
  ORDER BY n.created_at DESC, n.id DESC
  LIMIT LEAST(GREATEST(p_limit, 1), 100);
$$;

-- Grant execute permission
GRANT EXECUTE ON FUNCTION get_notifications(INTEGER, TIMESTAMPTZ, UUID) TO authenticated;

-- ------------------------------------------------------------
-- 4) HELPER FUNCTION: CHECK IF USER FOLLOWS ANOTHER
-- Useful for quick checks in app
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.is_following(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE SQL
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_follows
    WHERE follower_id = auth.uid()
      AND following_id = target_user_id
  );
$$;

GRANT EXECUTE ON FUNCTION public.is_following(UUID) TO authenticated;

-- ------------------------------------------------------------
-- 5) HELPER FUNCTION: GET MUTUAL FOLLOW STATUS
-- Returns: 'none', 'following', 'follower', 'mutual'
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.get_follow_status(target_user_id UUID)
RETURNS TEXT
LANGUAGE SQL
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT 
    CASE 
      WHEN EXISTS (
        SELECT 1 FROM public.user_follows 
        WHERE follower_id = auth.uid() AND following_id = target_user_id
      ) AND EXISTS (
        SELECT 1 FROM public.user_follows 
        WHERE follower_id = target_user_id AND following_id = auth.uid()
      ) THEN 'mutual'
      
      WHEN EXISTS (
        SELECT 1 FROM public.user_follows 
        WHERE follower_id = auth.uid() AND following_id = target_user_id
      ) THEN 'following'
      
      WHEN EXISTS (
        SELECT 1 FROM public.user_follows 
        WHERE follower_id = target_user_id AND following_id = auth.uid()
      ) THEN 'follower'
      
      ELSE 'none'
    END;
$$;

GRANT EXECUTE ON FUNCTION public.get_follow_status(UUID) TO authenticated;

-- ------------------------------------------------------------
-- 6) INDEX FOR FASTER FOLLOW CHECKS IN NOTIFICATIONS
-- ------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_user_follows_follower_following
  ON public.user_follows (follower_id, following_id);

CREATE INDEX IF NOT EXISTS idx_user_follows_following_follower
  ON public.user_follows (following_id, follower_id);

COMMIT;

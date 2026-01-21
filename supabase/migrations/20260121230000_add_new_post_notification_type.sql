-- Add 'new_post' to notification_type enum for new post notifications to followers
BEGIN;

-- Add new enum value if it doesn't exist
DO $$ 
BEGIN
  -- Check if the value already exists
  IF NOT EXISTS (
    SELECT 1 FROM pg_enum 
    WHERE enumlabel = 'new_post' 
    AND enumtypid = (SELECT oid FROM pg_type WHERE typname = 'notification_type')
  ) THEN
    ALTER TYPE public.notification_type ADD VALUE 'new_post';
  END IF;
END $$;

COMMIT;

-- Add preference column for new post notifications (separate transaction because ALTER TYPE requires it)
BEGIN;

-- Add column if it doesn't exist
ALTER TABLE public.notification_preferences 
ADD COLUMN IF NOT EXISTS new_posts_from_following BOOLEAN NOT NULL DEFAULT TRUE;

-- Update should_send_notification function to handle new_post type
CREATE OR REPLACE FUNCTION public.should_send_notification(
  p_user_id UUID,
  p_notification_type public.notification_type
)
RETURNS BOOLEAN
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_prefs notification_preferences;
  v_current_time TIME;
  v_should_send BOOLEAN := TRUE;
BEGIN
  -- Get preferences
  SELECT * INTO v_prefs
  FROM notification_preferences
  WHERE user_id = p_user_id;

  -- If no preferences, allow all notifications
  IF NOT FOUND THEN
    RETURN TRUE;
  END IF;

  -- Check DND
  IF v_prefs.dnd_enabled AND (v_prefs.dnd_until IS NULL OR v_prefs.dnd_until > NOW()) THEN
    RETURN FALSE;
  END IF;

  -- Check quiet hours
  IF v_prefs.quiet_hours_enabled AND v_prefs.quiet_hours_start IS NOT NULL AND v_prefs.quiet_hours_end IS NOT NULL THEN
    v_current_time := LOCALTIME;
    
    IF v_prefs.quiet_hours_start < v_prefs.quiet_hours_end THEN
      -- Normal case: 22:00 to 08:00
      IF v_current_time >= v_prefs.quiet_hours_start AND v_current_time < v_prefs.quiet_hours_end THEN
        RETURN FALSE;
      END IF;
    ELSE
      -- Overnight case: 22:00 to 02:00
      IF v_current_time >= v_prefs.quiet_hours_start OR v_current_time < v_prefs.quiet_hours_end THEN
        RETURN FALSE;
      END IF;
    END IF;
  END IF;

  -- Check specific notification type preferences
  CASE p_notification_type
    WHEN 'chat_message' THEN v_should_send := v_prefs.chat_messages;
    WHEN 'post_like' THEN v_should_send := v_prefs.post_likes;
    WHEN 'post_comment' THEN v_should_send := v_prefs.post_comments;
    WHEN 'comment_reply' THEN v_should_send := v_prefs.comment_replies;
    WHEN 'follow' THEN v_should_send := v_prefs.new_followers;
    WHEN 'mention' THEN v_should_send := v_prefs.post_mentions OR v_prefs.chat_mentions;
    WHEN 'group_invite' THEN v_should_send := v_prefs.chat_group_messages;
    WHEN 'call' THEN v_should_send := v_prefs.chat_calls;
    WHEN 'system' THEN v_should_send := v_prefs.system_updates;
    WHEN 'new_post' THEN v_should_send := v_prefs.new_posts_from_following;
    ELSE v_should_send := TRUE;
  END CASE;

  RETURN v_should_send;
END;
$$;

GRANT EXECUTE ON FUNCTION public.should_send_notification(UUID, public.notification_type) TO authenticated;

COMMIT;

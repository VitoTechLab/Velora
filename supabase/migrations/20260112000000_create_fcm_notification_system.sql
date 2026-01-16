BEGIN;

-- ===========================================================================
-- ENUMS
-- ===========================================================================

DO $$ BEGIN
  CREATE TYPE public.device_platform AS ENUM ('android', 'ios', 'web');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.notification_type AS ENUM (
    'chat_message',
    'post_like',
    'post_comment',
    'comment_reply',
    'follow',
    'mention',
    'group_invite',
    'call',
    'system'
  );
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

-- ===========================================================================
-- USER DEVICES TABLE
-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.user_devices (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  fcm_token TEXT NOT NULL,
  platform public.device_platform NOT NULL,
  device_name TEXT,
  device_model TEXT,
  os_version TEXT,
  app_version TEXT,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (user_id, fcm_token)
);

-- Indexes for performance
CREATE INDEX IF NOT EXISTS idx_user_devices_user_active 
  ON public.user_devices (user_id) 
  WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_user_devices_token 
  ON public.user_devices (fcm_token) 
  WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_user_devices_last_seen 
  ON public.user_devices (user_id, last_seen_at DESC);

-- Auto-update timestamp
DROP TRIGGER IF EXISTS set_user_devices_updated_at ON public.user_devices;
CREATE TRIGGER set_user_devices_updated_at
BEFORE UPDATE ON public.user_devices
FOR EACH ROW
EXECUTE FUNCTION public.set_updated_at();

-- ===========================================================================
-- NOTIFICATION PREFERENCES TABLE
-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.notification_preferences (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  
  -- Chat notifications
  chat_messages BOOLEAN NOT NULL DEFAULT TRUE,
  chat_group_messages BOOLEAN NOT NULL DEFAULT TRUE,
  chat_mentions BOOLEAN NOT NULL DEFAULT TRUE,
  chat_calls BOOLEAN NOT NULL DEFAULT TRUE,
  
  -- Post notifications
  post_likes BOOLEAN NOT NULL DEFAULT TRUE,
  post_comments BOOLEAN NOT NULL DEFAULT TRUE,
  post_mentions BOOLEAN NOT NULL DEFAULT TRUE,
  
  -- Comment notifications
  comment_replies BOOLEAN NOT NULL DEFAULT TRUE,
  comment_likes BOOLEAN NOT NULL DEFAULT FALSE,
  
  -- Social notifications
  new_followers BOOLEAN NOT NULL DEFAULT TRUE,
  follow_requests BOOLEAN NOT NULL DEFAULT TRUE,
  
  -- System notifications
  system_updates BOOLEAN NOT NULL DEFAULT TRUE,
  
  -- Quiet hours
  quiet_hours_enabled BOOLEAN NOT NULL DEFAULT FALSE,
  quiet_hours_start TIME,
  quiet_hours_end TIME,
  
  -- Do not disturb
  dnd_enabled BOOLEAN NOT NULL DEFAULT FALSE,
  dnd_until TIMESTAMPTZ,
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Auto-update timestamp
DROP TRIGGER IF EXISTS set_notification_preferences_updated_at ON public.notification_preferences;
CREATE TRIGGER set_notification_preferences_updated_at
BEFORE UPDATE ON public.notification_preferences
FOR EACH ROW
EXECUTE FUNCTION public.set_updated_at();

-- ===========================================================================
-- NOTIFICATION HISTORY TABLE (optional - for debugging/analytics)
-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.notification_history (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  notification_type public.notification_type NOT NULL,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  data JSONB,
  sent_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  read_at TIMESTAMPTZ,
  clicked_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_notification_history_user_sent 
  ON public.notification_history (user_id, sent_at DESC);

CREATE INDEX IF NOT EXISTS idx_notification_history_user_unread 
  ON public.notification_history (user_id, read_at) 
  WHERE read_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_notification_history_type 
  ON public.notification_history (notification_type, sent_at DESC);

-- ===========================================================================
-- HELPER FUNCTIONS
-- ===========================================================================

-- Function to register or update device token
CREATE OR REPLACE FUNCTION public.register_device_token(
  p_fcm_token TEXT,
  p_platform public.device_platform,
  p_device_name TEXT DEFAULT NULL,
  p_device_model TEXT DEFAULT NULL,
  p_os_version TEXT DEFAULT NULL,
  p_app_version TEXT DEFAULT NULL
)
RETURNS UUID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_user_id UUID := auth.uid();
  v_device_id UUID;
BEGIN
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  -- Upsert device token
  INSERT INTO user_devices (
    user_id, fcm_token, platform, device_name, 
    device_model, os_version, app_version, 
    is_active, last_seen_at
  )
  VALUES (
    v_user_id, p_fcm_token, p_platform, p_device_name,
    p_device_model, p_os_version, p_app_version,
    TRUE, NOW()
  )
  ON CONFLICT (user_id, fcm_token)
  DO UPDATE SET
    is_active = TRUE,
    last_seen_at = NOW(),
    device_name = COALESCE(EXCLUDED.device_name, user_devices.device_name),
    device_model = COALESCE(EXCLUDED.device_model, user_devices.device_model),
    os_version = COALESCE(EXCLUDED.os_version, user_devices.os_version),
    app_version = COALESCE(EXCLUDED.app_version, user_devices.app_version)
  RETURNING id INTO v_device_id;

  -- Create default notification preferences if not exists
  INSERT INTO notification_preferences (user_id)
  VALUES (v_user_id)
  ON CONFLICT (user_id) DO NOTHING;

  RETURN v_device_id;
END;
$$;

GRANT EXECUTE ON FUNCTION public.register_device_token(TEXT, public.device_platform, TEXT, TEXT, TEXT, TEXT) TO authenticated;

-- ===========================================================================

-- Function to deactivate device token
CREATE OR REPLACE FUNCTION public.deactivate_device_token(p_fcm_token TEXT)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_user_id UUID := auth.uid();
BEGIN
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  UPDATE user_devices
  SET is_active = FALSE
  WHERE user_id = v_user_id
    AND fcm_token = p_fcm_token;
END;
$$;

GRANT EXECUTE ON FUNCTION public.deactivate_device_token(TEXT) TO authenticated;

-- ===========================================================================

-- Function to get active devices for a user
CREATE OR REPLACE FUNCTION public.get_user_active_devices(p_user_id UUID)
RETURNS TABLE (
  device_id UUID,
  fcm_token TEXT,
  platform public.device_platform,
  device_name TEXT,
  last_seen_at TIMESTAMPTZ
)
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT id, fcm_token, platform, device_name, last_seen_at
  FROM user_devices
  WHERE user_id = p_user_id
    AND is_active = TRUE
    AND last_seen_at > NOW() - INTERVAL '30 days'
  ORDER BY last_seen_at DESC;
$$;

GRANT EXECUTE ON FUNCTION public.get_user_active_devices(UUID) TO authenticated;

-- ===========================================================================

-- Function to check if user should receive notification
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
    ELSE v_should_send := TRUE;
  END CASE;

  RETURN v_should_send;
END;
$$;

GRANT EXECUTE ON FUNCTION public.should_send_notification(UUID, public.notification_type) TO authenticated;

-- ===========================================================================
-- RLS POLICIES
-- ===========================================================================

ALTER TABLE public.user_devices ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.notification_preferences ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.notification_history ENABLE ROW LEVEL SECURITY;

-- User Devices Policies
DROP POLICY IF EXISTS "user_devices_select_own" ON public.user_devices;
CREATE POLICY "user_devices_select_own" ON public.user_devices
FOR SELECT TO authenticated
USING (user_id = auth.uid());

DROP POLICY IF EXISTS "user_devices_insert_own" ON public.user_devices;
CREATE POLICY "user_devices_insert_own" ON public.user_devices
FOR INSERT TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "user_devices_update_own" ON public.user_devices;
CREATE POLICY "user_devices_update_own" ON public.user_devices
FOR UPDATE TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "user_devices_delete_own" ON public.user_devices;
CREATE POLICY "user_devices_delete_own" ON public.user_devices
FOR DELETE TO authenticated
USING (user_id = auth.uid());

-- Notification Preferences Policies
DROP POLICY IF EXISTS "notification_prefs_select_own" ON public.notification_preferences;
CREATE POLICY "notification_prefs_select_own" ON public.notification_preferences
FOR SELECT TO authenticated
USING (user_id = auth.uid());

DROP POLICY IF EXISTS "notification_prefs_insert_own" ON public.notification_preferences;
CREATE POLICY "notification_prefs_insert_own" ON public.notification_preferences
FOR INSERT TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "notification_prefs_update_own" ON public.notification_preferences;
CREATE POLICY "notification_prefs_update_own" ON public.notification_preferences
FOR UPDATE TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- Notification History Policies
DROP POLICY IF EXISTS "notification_history_select_own" ON public.notification_history;
CREATE POLICY "notification_history_select_own" ON public.notification_history
FOR SELECT TO authenticated
USING (user_id = auth.uid());

DROP POLICY IF EXISTS "notification_history_update_own" ON public.notification_history;
CREATE POLICY "notification_history_update_own" ON public.notification_history
FOR UPDATE TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- ===========================================================================
-- GRANTS
-- ===========================================================================

GRANT SELECT, INSERT, UPDATE, DELETE ON public.user_devices TO authenticated;
GRANT SELECT, INSERT, UPDATE ON public.notification_preferences TO authenticated;
GRANT SELECT, UPDATE ON public.notification_history TO authenticated;

-- ===========================================================================
-- CLEANUP OLD DEVICES (Optional - run periodically)
-- ===========================================================================

-- Function to clean up inactive devices
CREATE OR REPLACE FUNCTION public.cleanup_inactive_devices()
RETURNS INTEGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_deleted INTEGER;
BEGIN
  -- Delete devices not seen in 90 days
  DELETE FROM user_devices
  WHERE last_seen_at < NOW() - INTERVAL '90 days'
    OR (is_active = FALSE AND updated_at < NOW() - INTERVAL '30 days');
  
  GET DIAGNOSTICS v_deleted = ROW_COUNT;
  RETURN v_deleted;
END;
$$;

GRANT EXECUTE ON FUNCTION public.cleanup_inactive_devices() TO authenticated;

COMMIT;

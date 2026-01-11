-- ============================================================================
-- VELORA SETTINGS SCHEMA - User Preferences, Appearance, Notifications
-- Migration: 20260111034515_create_settings_schema_policies.sql
-- ============================================================================
-- This migration creates tables and policies for:
-- 1. User Appearance Settings (Theme, Accessibility)
-- 2. User Language Preferences
-- 3. User Notification Settings
-- ============================================================================

-- ============================================================================
-- ENUMS
-- ============================================================================

-- Theme Mode Enum
CREATE TYPE public.theme_mode AS ENUM ('light', 'dark', 'system');

-- Language Code Enum (5 supported languages)
CREATE TYPE public.language_code AS ENUM ('en', 'id', 'ko', 'ja', 'zh');

-- Text Alignment Enum
CREATE TYPE public.text_alignment AS ENUM ('left', 'center', 'justify');

-- Font Family Enum
CREATE TYPE public.font_family AS ENUM ('Inter', 'DM Sans', 'Serif');

-- Summary Frequency Enum
CREATE TYPE public.summary_frequency AS ENUM ('off', 'daily', 'weekly');

-- Color Palette Enum
CREATE TYPE public.color_palette AS ENUM ('Ocean', 'Velvet', 'Forest', 'Sunset', 'Rose', 'Aqua');


-- ============================================================================
-- TABLE: user_appearance_settings
-- Stores theme and visual customization preferences
-- ============================================================================
CREATE TABLE public.user_appearance_settings (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL UNIQUE REFERENCES auth.users(id) ON DELETE CASCADE,
    
    -- Theme Settings
    theme_mode public.theme_mode NOT NULL DEFAULT 'system',
    dynamic_color BOOLEAN NOT NULL DEFAULT true,
    color_palette public.color_palette NOT NULL DEFAULT 'Ocean',
    corner_radius NUMERIC(4,1) NOT NULL DEFAULT 16.0 CHECK (corner_radius >= 0 AND corner_radius <= 32),
    
    -- Accessibility - Text
    font_size NUMERIC(4,1) NOT NULL DEFAULT 16.0 CHECK (font_size >= 12 AND font_size <= 24),
    font_family public.font_family NOT NULL DEFAULT 'Inter',
    text_alignment public.text_alignment NOT NULL DEFAULT 'left',
    line_spacing NUMERIC(3,2) NOT NULL DEFAULT 1.40 CHECK (line_spacing >= 1.0 AND line_spacing <= 2.0),
    
    -- Accessibility - Visual
    high_contrast BOOLEAN NOT NULL DEFAULT false,
    motion_reduced BOOLEAN NOT NULL DEFAULT false,
    
    -- Timestamps
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Index for faster lookups
CREATE INDEX idx_user_appearance_settings_user_id 
    ON public.user_appearance_settings(user_id);

-- Comment
COMMENT ON TABLE public.user_appearance_settings IS 
    'Stores user theme and accessibility preferences';


-- ============================================================================
-- TABLE: user_language_settings
-- Stores user language/locale preferences
-- ============================================================================
CREATE TABLE public.user_language_settings (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL UNIQUE REFERENCES auth.users(id) ON DELETE CASCADE,
    
    -- Language preference (5 supported: en, id, ko, ja, zh)
    language public.language_code NOT NULL DEFAULT 'en',
    
    -- Optional: region variant (e.g., 'US', 'GB' for English)
    region VARCHAR(5),
    
    -- Timestamps
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Index
CREATE INDEX idx_user_language_settings_user_id 
    ON public.user_language_settings(user_id);

-- Comment
COMMENT ON TABLE public.user_language_settings IS 
    'Stores user language and locale preferences';


-- ============================================================================
-- TABLE: user_notification_settings
-- Stores granular notification preferences
-- ============================================================================
CREATE TABLE public.user_notification_settings (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL UNIQUE REFERENCES auth.users(id) ON DELETE CASCADE,
    
    -- Global Controls
    pause_all BOOLEAN NOT NULL DEFAULT false,
    
    -- Sleep Mode
    sleep_mode_enabled BOOLEAN NOT NULL DEFAULT false,
    sleep_start_hour INT NOT NULL DEFAULT 22 CHECK (sleep_start_hour >= 0 AND sleep_start_hour <= 23),
    sleep_start_minute INT NOT NULL DEFAULT 0 CHECK (sleep_start_minute >= 0 AND sleep_start_minute <= 59),
    sleep_end_hour INT NOT NULL DEFAULT 7 CHECK (sleep_end_hour >= 0 AND sleep_end_hour <= 23),
    sleep_end_minute INT NOT NULL DEFAULT 0 CHECK (sleep_end_minute >= 0 AND sleep_end_minute <= 59),
    
    -- Posts & Stories Section
    notify_posts_and_stories BOOLEAN NOT NULL DEFAULT true,
    notify_live_videos BOOLEAN NOT NULL DEFAULT true,
    notify_new_campaigns BOOLEAN NOT NULL DEFAULT true,
    
    -- Engagement Section
    notify_likes BOOLEAN NOT NULL DEFAULT true,
    notify_comment_replies BOOLEAN NOT NULL DEFAULT true,
    notify_mentions BOOLEAN NOT NULL DEFAULT true,
    notify_new_followers BOOLEAN NOT NULL DEFAULT true,
    
    -- Donations Section
    notify_donation_received BOOLEAN NOT NULL DEFAULT true,
    notify_campaign_milestone BOOLEAN NOT NULL DEFAULT true,
    notify_campaign_updates BOOLEAN NOT NULL DEFAULT true,
    notify_withdrawal_status BOOLEAN NOT NULL DEFAULT true,
    
    -- Messages Section
    notify_direct_messages BOOLEAN NOT NULL DEFAULT true,
    notify_message_requests BOOLEAN NOT NULL DEFAULT false,
    notify_group_invites BOOLEAN NOT NULL DEFAULT true,
    
    -- Summary & Digest
    summary_frequency public.summary_frequency NOT NULL DEFAULT 'daily',
    
    -- Other Channels
    email_notifications BOOLEAN NOT NULL DEFAULT true,
    sms_notifications BOOLEAN NOT NULL DEFAULT false,
    
    -- Timestamps
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Index
CREATE INDEX idx_user_notification_settings_user_id 
    ON public.user_notification_settings(user_id);

-- Comment
COMMENT ON TABLE public.user_notification_settings IS 
    'Stores granular notification preferences for each user';


-- ============================================================================
-- TRIGGER FUNCTIONS
-- ============================================================================

-- Auto-update updated_at timestamp
CREATE OR REPLACE FUNCTION public.trigger_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create triggers for all settings tables
CREATE TRIGGER set_updated_at_user_appearance_settings
    BEFORE UPDATE ON public.user_appearance_settings
    FOR EACH ROW EXECUTE FUNCTION public.trigger_set_updated_at();

CREATE TRIGGER set_updated_at_user_language_settings
    BEFORE UPDATE ON public.user_language_settings
    FOR EACH ROW EXECUTE FUNCTION public.trigger_set_updated_at();

CREATE TRIGGER set_updated_at_user_notification_settings
    BEFORE UPDATE ON public.user_notification_settings
    FOR EACH ROW EXECUTE FUNCTION public.trigger_set_updated_at();


-- ============================================================================
-- AUTO-CREATE SETTINGS ON USER REGISTRATION
-- ============================================================================

-- Function to create default settings for new users
CREATE OR REPLACE FUNCTION public.create_default_user_settings()
RETURNS TRIGGER AS $$
BEGIN
    -- Create appearance settings with defaults
    INSERT INTO public.user_appearance_settings (user_id)
    VALUES (NEW.id)
    ON CONFLICT (user_id) DO NOTHING;
    
    -- Create language settings with defaults
    INSERT INTO public.user_language_settings (user_id)
    VALUES (NEW.id)
    ON CONFLICT (user_id) DO NOTHING;
    
    -- Create notification settings with defaults
    INSERT INTO public.user_notification_settings (user_id)
    VALUES (NEW.id)
    ON CONFLICT (user_id) DO NOTHING;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger on auth.users to auto-create settings
CREATE TRIGGER on_auth_user_created_create_settings
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION public.create_default_user_settings();


-- ============================================================================
-- ENABLE ROW LEVEL SECURITY
-- ============================================================================

ALTER TABLE public.user_appearance_settings ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_language_settings ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_notification_settings ENABLE ROW LEVEL SECURITY;


-- ============================================================================
-- RLS POLICIES - user_appearance_settings
-- ============================================================================

-- Users can view their own appearance settings
CREATE POLICY "Users can view own appearance settings"
    ON public.user_appearance_settings
    FOR SELECT
    USING (auth.uid() = user_id);

-- Users can insert their own appearance settings
CREATE POLICY "Users can insert own appearance settings"
    ON public.user_appearance_settings
    FOR INSERT
    WITH CHECK (auth.uid() = user_id);

-- Users can update their own appearance settings
CREATE POLICY "Users can update own appearance settings"
    ON public.user_appearance_settings
    FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- Users can delete their own appearance settings (cascade will handle this)
CREATE POLICY "Users can delete own appearance settings"
    ON public.user_appearance_settings
    FOR DELETE
    USING (auth.uid() = user_id);


-- ============================================================================
-- RLS POLICIES - user_language_settings
-- ============================================================================

-- Users can view their own language settings
CREATE POLICY "Users can view own language settings"
    ON public.user_language_settings
    FOR SELECT
    USING (auth.uid() = user_id);

-- Users can insert their own language settings
CREATE POLICY "Users can insert own language settings"
    ON public.user_language_settings
    FOR INSERT
    WITH CHECK (auth.uid() = user_id);

-- Users can update their own language settings
CREATE POLICY "Users can update own language settings"
    ON public.user_language_settings
    FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- Users can delete their own language settings
CREATE POLICY "Users can delete own language settings"
    ON public.user_language_settings
    FOR DELETE
    USING (auth.uid() = user_id);


-- ============================================================================
-- RLS POLICIES - user_notification_settings
-- ============================================================================

-- Users can view their own notification settings
CREATE POLICY "Users can view own notification settings"
    ON public.user_notification_settings
    FOR SELECT
    USING (auth.uid() = user_id);

-- Users can insert their own notification settings
CREATE POLICY "Users can insert own notification settings"
    ON public.user_notification_settings
    FOR INSERT
    WITH CHECK (auth.uid() = user_id);

-- Users can update their own notification settings
CREATE POLICY "Users can update own notification settings"
    ON public.user_notification_settings
    FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- Users can delete their own notification settings
CREATE POLICY "Users can delete own notification settings"
    ON public.user_notification_settings
    FOR DELETE
    USING (auth.uid() = user_id);


-- ============================================================================
-- GRANTS - Authenticated Users
-- ============================================================================

-- Appearance Settings
GRANT SELECT, INSERT, UPDATE, DELETE 
    ON public.user_appearance_settings 
    TO authenticated;

-- Language Settings
GRANT SELECT, INSERT, UPDATE, DELETE 
    ON public.user_language_settings 
    TO authenticated;

-- Notification Settings
GRANT SELECT, INSERT, UPDATE, DELETE 
    ON public.user_notification_settings 
    TO authenticated;


-- ============================================================================
-- HELPER FUNCTIONS
-- ============================================================================

-- Get user appearance settings (creates if not exists)
CREATE OR REPLACE FUNCTION public.get_user_appearance_settings(p_user_id UUID DEFAULT auth.uid())
RETURNS public.user_appearance_settings AS $$
DECLARE
    settings public.user_appearance_settings;
BEGIN
    -- Try to get existing settings
    SELECT * INTO settings
    FROM public.user_appearance_settings
    WHERE user_id = p_user_id;
    
    -- If not found, create with defaults
    IF NOT FOUND THEN
        INSERT INTO public.user_appearance_settings (user_id)
        VALUES (p_user_id)
        RETURNING * INTO settings;
    END IF;
    
    RETURN settings;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Get user language settings (creates if not exists)
CREATE OR REPLACE FUNCTION public.get_user_language_settings(p_user_id UUID DEFAULT auth.uid())
RETURNS public.user_language_settings AS $$
DECLARE
    settings public.user_language_settings;
BEGIN
    SELECT * INTO settings
    FROM public.user_language_settings
    WHERE user_id = p_user_id;
    
    IF NOT FOUND THEN
        INSERT INTO public.user_language_settings (user_id)
        VALUES (p_user_id)
        RETURNING * INTO settings;
    END IF;
    
    RETURN settings;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Get user notification settings (creates if not exists)
CREATE OR REPLACE FUNCTION public.get_user_notification_settings(p_user_id UUID DEFAULT auth.uid())
RETURNS public.user_notification_settings AS $$
DECLARE
    settings public.user_notification_settings;
BEGIN
    SELECT * INTO settings
    FROM public.user_notification_settings
    WHERE user_id = p_user_id;
    
    IF NOT FOUND THEN
        INSERT INTO public.user_notification_settings (user_id)
        VALUES (p_user_id)
        RETURNING * INTO settings;
    END IF;
    
    RETURN settings;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Update user language (convenience function)
CREATE OR REPLACE FUNCTION public.update_user_language(
    p_language public.language_code,
    p_region VARCHAR(5) DEFAULT NULL
)
RETURNS public.user_language_settings AS $$
DECLARE
    settings public.user_language_settings;
BEGIN
    INSERT INTO public.user_language_settings (user_id, language, region)
    VALUES (auth.uid(), p_language, p_region)
    ON CONFLICT (user_id) 
    DO UPDATE SET 
        language = EXCLUDED.language,
        region = EXCLUDED.region,
        updated_at = now()
    RETURNING * INTO settings;
    
    RETURN settings;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Check if user has sleep mode active right now
CREATE OR REPLACE FUNCTION public.is_notification_sleep_active(p_user_id UUID DEFAULT auth.uid())
RETURNS BOOLEAN AS $$
DECLARE
    settings RECORD;
    current_minutes INT;
    start_minutes INT;
    end_minutes INT;
BEGIN
    SELECT sleep_mode_enabled, sleep_start_hour, sleep_start_minute, 
           sleep_end_hour, sleep_end_minute
    INTO settings
    FROM public.user_notification_settings
    WHERE user_id = p_user_id;
    
    IF NOT FOUND OR NOT settings.sleep_mode_enabled THEN
        RETURN false;
    END IF;
    
    -- Convert current time to minutes since midnight
    current_minutes := EXTRACT(HOUR FROM now())::INT * 60 + EXTRACT(MINUTE FROM now())::INT;
    start_minutes := settings.sleep_start_hour * 60 + settings.sleep_start_minute;
    end_minutes := settings.sleep_end_hour * 60 + settings.sleep_end_minute;
    
    -- Handle overnight sleep (e.g., 22:00 to 07:00)
    IF start_minutes > end_minutes THEN
        RETURN current_minutes >= start_minutes OR current_minutes < end_minutes;
    ELSE
        RETURN current_minutes >= start_minutes AND current_minutes < end_minutes;
    END IF;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Check if user should receive a notification of a specific type
CREATE OR REPLACE FUNCTION public.should_send_notification(
    p_user_id UUID,
    p_notification_type TEXT
)
RETURNS BOOLEAN AS $$
DECLARE
    settings RECORD;
BEGIN
    SELECT * INTO settings
    FROM public.user_notification_settings
    WHERE user_id = p_user_id;
    
    IF NOT FOUND THEN
        RETURN true; -- Default to sending if no settings
    END IF;
    
    -- Check global pause
    IF settings.pause_all THEN
        RETURN false;
    END IF;
    
    -- Check sleep mode
    IF public.is_notification_sleep_active(p_user_id) THEN
        RETURN false;
    END IF;
    
    -- Check specific notification type
    CASE p_notification_type
        WHEN 'posts_and_stories' THEN RETURN settings.notify_posts_and_stories;
        WHEN 'live_videos' THEN RETURN settings.notify_live_videos;
        WHEN 'new_campaigns' THEN RETURN settings.notify_new_campaigns;
        WHEN 'likes' THEN RETURN settings.notify_likes;
        WHEN 'comment_replies' THEN RETURN settings.notify_comment_replies;
        WHEN 'mentions' THEN RETURN settings.notify_mentions;
        WHEN 'new_followers' THEN RETURN settings.notify_new_followers;
        WHEN 'donation_received' THEN RETURN settings.notify_donation_received;
        WHEN 'campaign_milestone' THEN RETURN settings.notify_campaign_milestone;
        WHEN 'campaign_updates' THEN RETURN settings.notify_campaign_updates;
        WHEN 'withdrawal_status' THEN RETURN settings.notify_withdrawal_status;
        WHEN 'direct_messages' THEN RETURN settings.notify_direct_messages;
        WHEN 'message_requests' THEN RETURN settings.notify_message_requests;
        WHEN 'group_invites' THEN RETURN settings.notify_group_invites;
        ELSE RETURN true; -- Unknown type, default to sending
    END CASE;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;


-- ============================================================================
-- GRANT EXECUTE ON FUNCTIONS
-- ============================================================================

GRANT EXECUTE ON FUNCTION public.get_user_appearance_settings(UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_user_language_settings(UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_user_notification_settings(UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION public.update_user_language(public.language_code, VARCHAR) TO authenticated;
GRANT EXECUTE ON FUNCTION public.is_notification_sleep_active(UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION public.should_send_notification(UUID, TEXT) TO authenticated;


-- ============================================================================
-- END OF MIGRATION
-- ============================================================================

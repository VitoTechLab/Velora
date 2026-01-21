-- ===========================================================================
-- FIX: Add missing notification_type enum values
-- This fixes the "invalid input value for enum notification_type: 'campaign_created'" error
-- ===========================================================================

BEGIN;

-- Add missing enum values to notification_type if they don't exist
DO $$ 
BEGIN
    -- Check if 'campaign_created' exists, if not add it
    IF NOT EXISTS (
        SELECT 1 FROM pg_enum 
        WHERE enumlabel = 'campaign_created' 
        AND enumtypid = 'public.notification_type'::regtype
    ) THEN
        ALTER TYPE public.notification_type ADD VALUE 'campaign_created';
    END IF;
END $$;

DO $$ 
BEGIN
    -- Check if 'campaign_update' exists, if not add it
    IF NOT EXISTS (
        SELECT 1 FROM pg_enum 
        WHERE enumlabel = 'campaign_update' 
        AND enumtypid = 'public.notification_type'::regtype
    ) THEN
        ALTER TYPE public.notification_type ADD VALUE 'campaign_update';
    END IF;
END $$;

COMMIT;

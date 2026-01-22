-- ===========================================================================
-- FIX: Add foreign key relationship from campaigns to user_profiles
-- ===========================================================================
-- This enables PostgREST to automatically join campaigns with user_profiles
-- for fetching organizer username and avatar.
-- ===========================================================================

-- Add foreign key constraint from campaigns.user_id to user_profiles.id
-- Both tables reference auth.users(id), and user_profiles.id = auth.users.id
-- So we can safely add this FK since user_profiles.id is the same as the user's auth id

-- First, ensure we don't add duplicate constraints
DO $$
BEGIN
  -- Check if constraint already exists
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.table_constraints 
    WHERE constraint_name = 'campaigns_user_id_fkey_profiles'
    AND table_name = 'campaigns'
  ) THEN
    -- Add foreign key to user_profiles
    ALTER TABLE public.campaigns 
    ADD CONSTRAINT campaigns_user_id_fkey_profiles
    FOREIGN KEY (user_id) REFERENCES public.user_profiles(id)
    ON DELETE CASCADE;
  END IF;
END $$;

-- Grant necessary permissions
GRANT SELECT ON public.user_profiles TO anon;

BEGIN;

-- ============================================
-- USER PROFILES EXTENDED SCHEMA
-- Adding bio, date_of_birth, gender, organization fields
-- ============================================

-- ------------------------------------------------------------
-- 1) GENDER ENUM
-- ------------------------------------------------------------
DO $$
BEGIN
  CREATE TYPE public.user_gender AS ENUM (
    'male',
    'female',
    'other',
    'prefer_not_to_say'
  );
EXCEPTION
  WHEN duplicate_object THEN NULL;
END $$;

-- ------------------------------------------------------------
-- 2) ADD NEW COLUMNS TO USER_PROFILES
-- ------------------------------------------------------------

-- Bio field for user description (max 500 chars recommended in app)
ALTER TABLE public.user_profiles 
  ADD COLUMN IF NOT EXISTS bio TEXT;

-- Date of birth for age verification and birthday features
ALTER TABLE public.user_profiles 
  ADD COLUMN IF NOT EXISTS date_of_birth DATE;

-- Gender field using enum
ALTER TABLE public.user_profiles 
  ADD COLUMN IF NOT EXISTS gender public.user_gender;

-- Organization flag - indicates if this is a business/organization account
ALTER TABLE public.user_profiles 
  ADD COLUMN IF NOT EXISTS is_organization BOOLEAN NOT NULL DEFAULT FALSE;

-- Organization/Business name (only applicable if is_organization = true)
ALTER TABLE public.user_profiles 
  ADD COLUMN IF NOT EXISTS organization_name TEXT;

-- Website URL for profile
ALTER TABLE public.user_profiles 
  ADD COLUMN IF NOT EXISTS website_url TEXT;

-- Location/City for display
ALTER TABLE public.user_profiles 
  ADD COLUMN IF NOT EXISTS location TEXT;

-- ------------------------------------------------------------
-- 3) ADD INDEXES FOR NEW COLUMNS
-- ------------------------------------------------------------

-- Index for organization filtering (partial index for efficiency)
CREATE INDEX IF NOT EXISTS idx_user_profiles_is_organization
  ON public.user_profiles (is_organization)
  WHERE is_organization = TRUE;

-- Index for date_of_birth (for birthday queries)
CREATE INDEX IF NOT EXISTS idx_user_profiles_date_of_birth
  ON public.user_profiles (date_of_birth)
  WHERE date_of_birth IS NOT NULL;

-- Index for gender filtering
CREATE INDEX IF NOT EXISTS idx_user_profiles_gender
  ON public.user_profiles (gender)
  WHERE gender IS NOT NULL;

-- Composite index for organization search
CREATE INDEX IF NOT EXISTS idx_user_profiles_org_name_trgm
  ON public.user_profiles USING gin (lower(organization_name) gin_trgm_ops)
  WHERE organization_name IS NOT NULL;

-- Index for location search
CREATE INDEX IF NOT EXISTS idx_user_profiles_location_trgm
  ON public.user_profiles USING gin (lower(location) gin_trgm_ops)
  WHERE location IS NOT NULL;

-- Composite index for filtering: organization + verified (common query pattern)
CREATE INDEX IF NOT EXISTS idx_user_profiles_org_verified
  ON public.user_profiles (is_organization, is_verified)
  WHERE is_organization = TRUE;

-- ------------------------------------------------------------
-- 4) UPDATE VIEWS TO INCLUDE NEW FIELDS
-- ------------------------------------------------------------

-- Drop and recreate the header view with new fields
DROP VIEW IF EXISTS public.user_profile_header_view;

CREATE OR REPLACE VIEW public.user_profile_header_view AS
SELECT
  up.id,
  up.email,
  up.username,
  up.full_name,
  up.avatar_url,
  up.bio,
  up.date_of_birth,
  up.gender,
  up.is_organization,
  up.organization_name,
  up.website_url,
  up.location,
  up.role,
  up.is_verified,
  up.is_private,
  up.followers_count,
  up.following_count,
  up.show_activity_status,
  up.created_at,
  up.updated_at,
  -- Computed: is this the current user?
  (up.id = auth.uid()) AS is_me,
  -- Computed: is current user following this profile?
  EXISTS (
    SELECT 1 FROM public.user_follows f
    WHERE f.follower_id = auth.uid()
      AND f.following_id = up.id
  ) AS is_following,
  -- Computed: is there a pending follow request?
  EXISTS (
    SELECT 1 FROM public.user_follow_requests fr
    WHERE fr.requester_id = auth.uid()
      AND fr.target_id = up.id
      AND fr.status = 'pending'
  ) AS is_follow_request_pending,
  -- Computed: did I block them?
  EXISTS (
    SELECT 1 FROM public.user_blocks b
    WHERE b.blocker_id = auth.uid()
      AND b.blocked_id = up.id
  ) AS i_blocked_them,
  -- Computed: did they block me?
  EXISTS (
    SELECT 1 FROM public.user_blocks b
    WHERE b.blocker_id = up.id
      AND b.blocked_id = auth.uid()
  ) AS they_blocked_me
FROM public.user_profiles up;

-- Grant access to view
GRANT SELECT ON public.user_profile_header_view TO authenticated;

-- ------------------------------------------------------------
-- 5) FUNCTION TO CALCULATE AGE FROM DATE_OF_BIRTH
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.calculate_age(birth_date DATE)
RETURNS INTEGER
LANGUAGE sql
IMMUTABLE
AS $$
  SELECT CASE 
    WHEN birth_date IS NULL THEN NULL
    ELSE EXTRACT(YEAR FROM age(CURRENT_DATE, birth_date))::INTEGER
  END;
$$;

-- ------------------------------------------------------------
-- 6) UPDATE HANDLE_NEW_AUTH_USER TO SUPPORT NEW FIELDS
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.handle_new_auth_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
SET row_security = off
AS $$
DECLARE
  base_username TEXT;
  candidate TEXT;
  attempt INT := 0;
  max_attempts INT := 10;
BEGIN
  base_username := NULLIF(NEW.raw_user_meta_data ->> 'username', '');

  IF base_username IS NULL THEN
    base_username := split_part(NEW.email, '@', 1);
  END IF;

  base_username := lower(base_username);
  base_username := regexp_replace(base_username, '[^a-z0-9_]+', '_', 'g');
  base_username := trim(BOTH '_' FROM base_username);

  IF base_username IS NULL OR base_username = '' THEN
    base_username := 'user';
  END IF;

  candidate := base_username;

  -- Optimized: limit attempts and use longer random suffix
  WHILE EXISTS (
    SELECT 1
    FROM public.user_profiles up
    WHERE lower(up.username) = lower(candidate)
  ) LOOP
    attempt := attempt + 1;
    
    -- Prevent infinite loop
    IF attempt >= max_attempts THEN
      -- Fallback: use UUID-based username
      candidate := 'user_' || substr(replace(NEW.id::TEXT, '-', ''), 1, 12);
      EXIT;
    END IF;
    
    -- Use longer random suffix to reduce collisions
    candidate := base_username || '_' || substr(md5(random()::TEXT || attempt::TEXT), 1, 8);
  END LOOP;

  INSERT INTO public.user_profiles (
    id, 
    email, 
    username, 
    full_name, 
    avatar_url,
    bio,
    gender,
    is_organization
  )
  VALUES (
    NEW.id,
    NEW.email,
    candidate,
    NEW.raw_user_meta_data ->> 'full_name',
    NEW.raw_user_meta_data ->> 'avatar_url',
    NEW.raw_user_meta_data ->> 'bio',
    (NEW.raw_user_meta_data ->> 'gender')::public.user_gender,
    COALESCE((NEW.raw_user_meta_data ->> 'is_organization')::BOOLEAN, FALSE)
  )
  ON CONFLICT (id) DO NOTHING;

  RETURN NEW;
END;
$$;

-- ------------------------------------------------------------
-- 7) GRANT PERMISSIONS FOR NEW COLUMNS
-- ------------------------------------------------------------

-- Users can update their own profile info (except sensitive fields)
GRANT UPDATE (
  username,
  full_name,
  avatar_url,
  bio,
  date_of_birth,
  gender,
  is_organization,
  organization_name,
  website_url,
  location,
  is_private,
  show_activity_status
) ON public.user_profiles TO authenticated;

COMMIT;

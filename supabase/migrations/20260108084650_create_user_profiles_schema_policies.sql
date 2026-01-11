BEGIN;

-- ============================================
-- USER PROFILES SCHEMA
-- ============================================

CREATE EXTENSION IF NOT EXISTS pg_trgm;

-- ------------------------------------------------------------
-- 0) ENUM ROLE
-- ------------------------------------------------------------
DO $$
BEGIN
  CREATE TYPE public.app_role AS ENUM ('user', 'admin');
EXCEPTION
  WHEN duplicate_object THEN NULL;
END $$;

-- ------------------------------------------------------------
-- 1) UPDATED_AT HELPER
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ------------------------------------------------------------
-- 2) USER_PROFILES TABLE
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.user_profiles (
  id UUID PRIMARY KEY REFERENCES auth.users (id) ON DELETE CASCADE,
  email TEXT NOT NULL,

  username TEXT NOT NULL,
  full_name TEXT,
  avatar_url TEXT,

  role public.app_role NOT NULL DEFAULT 'user',
  is_verified BOOLEAN NOT NULL DEFAULT FALSE,

  is_private BOOLEAN NOT NULL DEFAULT FALSE,

  followers_count INT NOT NULL DEFAULT 0,
  following_count INT NOT NULL DEFAULT 0,

  show_activity_status BOOLEAN NOT NULL DEFAULT TRUE,

  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- INDEXES FOR PERFORMANCE
CREATE INDEX IF NOT EXISTS idx_user_profiles_email_lower
  ON public.user_profiles (lower(email));

CREATE UNIQUE INDEX IF NOT EXISTS ux_user_profiles_username_lower
  ON public.user_profiles (lower(username));

-- TRIGRAM INDEXES FOR SEARCH (requires pg_trgm extension)
CREATE INDEX IF NOT EXISTS idx_user_profiles_username_trgm
  ON public.user_profiles USING gin (lower(username) gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_user_profiles_full_name_trgm
  ON public.user_profiles USING gin (lower(full_name) gin_trgm_ops);

-- UPDATED_AT TRIGGER
DROP TRIGGER IF EXISTS set_user_profiles_updated_at ON public.user_profiles;
CREATE TRIGGER set_user_profiles_updated_at
BEFORE UPDATE ON public.user_profiles
FOR EACH ROW
EXECUTE FUNCTION public.set_updated_at();

-- ------------------------------------------------------------
-- 3) IS_ADMIN() FUNCTION
-- NOTE: security definer + row_security off => aman dipakai di policy
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
SET row_security = off
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_profiles p
    WHERE p.id = auth.uid()
      AND p.role = 'admin'
  );
$$;

-- ------------------------------------------------------------
-- 4) CAN_VIEW_USER_PROFILE FUNCTION
-- Check if viewer can see profile of target user
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.can_view_user_profile(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = public
SET row_security = off
AS $$
DECLARE
  v UUID;
  priv BOOLEAN;
BEGIN
  v := auth.uid();
  IF v IS NULL THEN
    RETURN FALSE;
  END IF;

  -- Self always allowed
  IF v = target_user_id THEN
    RETURN TRUE;
  END IF;

  -- Blocked => no access
  IF public.is_blocked_between(v, target_user_id) THEN
    RETURN FALSE;
  END IF;

  -- Get privacy setting
  SELECT up.is_private INTO priv
  FROM public.user_profiles up
  WHERE up.id = target_user_id;

  -- Public profile => allowed
  IF COALESCE(priv, FALSE) = FALSE THEN
    RETURN TRUE;
  END IF;

  -- Private => only if viewer follows target
  RETURN EXISTS (
    SELECT 1
    FROM public.user_follows f
    WHERE f.follower_id = v
      AND f.following_id = target_user_id
  );
END;
$$;

-- ------------------------------------------------------------
-- 5) RLS + POLICIES
-- ------------------------------------------------------------
ALTER TABLE public.user_profiles ENABLE ROW LEVEL SECURITY;

-- SELECT: Self, admin, or can view profile (based on privacy + follow status)
DROP POLICY IF EXISTS "profiles_select_social" ON public.user_profiles;
CREATE POLICY "profiles_select_social"
ON public.user_profiles
FOR SELECT
TO authenticated
USING (
  id = auth.uid()
  OR public.is_admin()
  OR public.can_view_user_profile(id)
);

-- UPDATE: Only own profile
DROP POLICY IF EXISTS "user_profiles_update_own" ON public.user_profiles;
CREATE POLICY "user_profiles_update_own"
ON public.user_profiles
FOR UPDATE
TO authenticated
USING (id = auth.uid())
WITH CHECK (id = auth.uid());

-- ------------------------------------------------------------
-- 6) AUTO-CREATE PROFILE ON NEW AUTH USER
-- Optimized username generation to prevent infinite loops
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

  INSERT INTO public.user_profiles (id, email, username, full_name, avatar_url)
  VALUES (
    NEW.id,
    NEW.email,
    candidate,
    NEW.raw_user_meta_data ->> 'full_name',
    NEW.raw_user_meta_data ->> 'avatar_url'
  )
  ON CONFLICT (id) DO NOTHING;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
AFTER INSERT ON auth.users
FOR EACH ROW
EXECUTE FUNCTION public.handle_new_auth_user();

-- ============================================
-- GRANT PERMISSIONS
-- ============================================

-- User Profiles
GRANT SELECT, INSERT, UPDATE ON public.user_profiles TO authenticated;

-- Prevent users from updating sensitive columns
REVOKE UPDATE (role, is_verified) ON public.user_profiles FROM authenticated;

COMMIT;
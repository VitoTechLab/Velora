BEGIN;

-- ===========================================================================
-- USER PROFILES V2 (Complete, Consolidated & Optimized)
-- ===========================================================================
-- Structure:
-- 1. Extensions & Enums
-- 2. Tables & Columns
-- 3. Indexes & Constraints
-- 4. Utility Functions
-- 5. RLS & Security Policies
-- 6. Auth Triggers (Sync System)
-- 7. Views (Headers & Lists)
-- 8. RPC Functions (Features like Suggestions)
-- 9. Permissions & Grants
-- ===========================================================================

-- 1. EXTENSIONS & ENUMS
-- ---------------------------------------------------------------------------
CREATE EXTENSION IF NOT EXISTS pg_trgm;

DO $$ BEGIN
  CREATE TYPE public.app_role AS ENUM ('user', 'admin', 'moderator');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.user_gender AS ENUM ('male', 'female', 'other', 'prefer_not_to_say');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

-- 2. TABLE DEFINITION
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.user_profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  email TEXT NOT NULL,
  
  -- Identity
  username TEXT NOT NULL,
  full_name TEXT,
  avatar_url TEXT,
  bio TEXT, 
  
  -- Attributes
  gender public.user_gender DEFAULT 'prefer_not_to_say',
  date_of_birth DATE,
  location TEXT,
  website_url TEXT,
  
  -- Business / Organization
  is_organization BOOLEAN NOT NULL DEFAULT FALSE,
  organization_name TEXT,
  
  -- System & Roles
  role public.app_role NOT NULL DEFAULT 'user',
  is_verified BOOLEAN NOT NULL DEFAULT FALSE,
  
  -- Privacy & Settings
  is_private BOOLEAN NOT NULL DEFAULT FALSE,
  show_activity_status BOOLEAN NOT NULL DEFAULT TRUE,
  
  -- Counters 
  followers_count INT NOT NULL DEFAULT 0,
  following_count INT NOT NULL DEFAULT 0,
  
  -- Timestamps
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  -- Constraints
  CONSTRAINT username_length CHECK (char_length(username) >= 3)
);

-- 3. INDEXING STRATEGY (Best Practices)
-- ---------------------------------------------------------------------------
-- Unique Lowercase Username
CREATE UNIQUE INDEX IF NOT EXISTS ux_user_profiles_username_lower 
  ON public.user_profiles (lower(username));

-- Lookup by Email
CREATE INDEX IF NOT EXISTS idx_user_profiles_email_lower 
  ON public.user_profiles (lower(email));

-- Search Optimizations (Trigram for fuzzy search)
CREATE INDEX IF NOT EXISTS idx_user_profiles_username_trgm 
  ON public.user_profiles USING gin (lower(username) gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_user_profiles_fullname_trgm 
  ON public.user_profiles USING gin (lower(full_name) gin_trgm_ops);

-- Partial Indexes (Optimization: Only index what we filter frequently)
CREATE INDEX IF NOT EXISTS idx_user_profiles_is_org 
  ON public.user_profiles (is_organization) 
  WHERE is_organization = TRUE;

CREATE INDEX IF NOT EXISTS idx_user_profiles_verified 
  ON public.user_profiles (is_verified) 
  WHERE is_verified = TRUE;

-- 4. UTILITY FUNCTIONS
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW IS DISTINCT FROM OLD THEN
    NEW.updated_at = NOW();
    RETURN NEW;
  END IF;
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_user_profiles_updated_at
BEFORE UPDATE ON public.user_profiles
FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

CREATE OR REPLACE FUNCTION public.calculate_age(birth_date DATE)
RETURNS INTEGER
LANGUAGE sql IMMUTABLE
AS $$
  SELECT CASE 
    WHEN birth_date IS NULL THEN NULL
    ELSE EXTRACT(YEAR FROM age(CURRENT_DATE, birth_date))::INTEGER
  END;
$$;

CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = public
AS $$
  SELECT EXISTS (SELECT 1 FROM public.user_profiles WHERE id = auth.uid() AND role = 'admin');
$$;

-- 5. RLS & SECURITY
-- ---------------------------------------------------------------------------
ALTER TABLE public.user_profiles ENABLE ROW LEVEL SECURITY;

-- 5.1 Visibility (Optimized: "True" is extremely fast, filter privacy in Views/App)
DROP POLICY IF EXISTS "public_view_profiles" ON public.user_profiles;
CREATE POLICY "public_view_profiles" ON public.user_profiles
  FOR SELECT TO authenticated
  USING (true);

-- 5.2 Update Policy (Self only)
DROP POLICY IF EXISTS "users_update_own_profile" ON public.user_profiles;
CREATE POLICY "users_update_own_profile" ON public.user_profiles
  FOR UPDATE TO authenticated
  USING (id = auth.uid())
  WITH CHECK (id = auth.uid());

-- 6. AUTH TRIGGERS (Auto-Create & Sync)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.handle_new_auth_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
DECLARE
  base_username TEXT;
  candidate TEXT;
  attempt INT := 0;
BEGIN
  -- 1. Determine base username
  base_username := COALESCE(
    NULLIF(NEW.raw_user_meta_data ->> 'username', ''),
    split_part(NEW.email, '@', 1),
    'user'
  );
  
  -- 2. Sanitize
  base_username := regexp_replace(lower(base_username), '[^a-z0-9_]', '', 'g');
  IF length(base_username) < 3 THEN base_username := base_username || 'user'; END IF;

  candidate := base_username;

  -- 3. Collision Resolution
  WHILE EXISTS (SELECT 1 FROM public.user_profiles WHERE username = candidate) LOOP
    attempt := attempt + 1;
    IF attempt > 10 THEN
      candidate := base_username || '_' || substr(replace(NEW.id::text, '-', ''), 1, 6);
    ELSE
      candidate := base_username || '_' || floor(random() * 1000)::text;
    END IF;
  END LOOP;

  -- 4. Insert Profile
  INSERT INTO public.user_profiles (
    id, email, username, full_name, avatar_url, 
    role, is_organization, gender, bio
  )
  VALUES (
    NEW.id,
    NEW.email,
    candidate,
    NEW.raw_user_meta_data ->> 'full_name',
    NEW.raw_user_meta_data ->> 'avatar_url',
    'user',
    COALESCE((NEW.raw_user_meta_data ->> 'is_organization')::boolean, FALSE),
    COALESCE((NEW.raw_user_meta_data ->> 'gender')::public.user_gender, 'prefer_not_to_say'),
    NEW.raw_user_meta_data ->> 'bio'
  )
  ON CONFLICT (id) DO NOTHING;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
AFTER INSERT ON auth.users
FOR EACH ROW EXECUTE FUNCTION public.handle_new_auth_user();

-- Email Sync
CREATE OR REPLACE FUNCTION public.handle_auth_user_email_update()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
BEGIN
  IF NEW.email IS DISTINCT FROM OLD.email THEN
    UPDATE public.user_profiles
    SET email = NEW.email, updated_at = NOW()
    WHERE id = NEW.id;
  END IF;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_updated ON auth.users;
CREATE TRIGGER on_auth_user_updated
AFTER UPDATE ON auth.users
FOR EACH ROW EXECUTE FUNCTION public.handle_auth_user_email_update();



-- 9. PERMISSIONS (Grants)
-- ---------------------------------------------------------------------------
GRANT SELECT, UPDATE ON public.user_profiles TO authenticated;
REVOKE UPDATE (role, is_verified, followers_count, following_count) ON public.user_profiles FROM authenticated;



COMMIT;
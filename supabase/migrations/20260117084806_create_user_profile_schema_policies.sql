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

-- 7. VIEWS (API)
-- ---------------------------------------------------------------------------

-- 7.1 Single Profile View (Enriched with Auth Context)
CREATE OR REPLACE VIEW public.v_user_profile_header 
WITH (security_invoker=true)
AS
SELECT
  up.id,
  up.username,
  up.full_name,
  up.avatar_url,
  up.bio,
  up.gender,
  public.calculate_age(up.date_of_birth) AS age,
  up.is_organization,
  up.organization_name,
  
  -- Privacy Logic: Return NULL for restricted data if conditions not met
  CASE 
    WHEN (NOT up.is_private) OR (auth.uid() = up.id) OR (
      EXISTS (SELECT 1 FROM public.user_follows uf WHERE uf.follower_id = auth.uid() AND uf.following_id = up.id)
    ) THEN up.location
    ELSE NULL
  END AS location,
  
  CASE 
    WHEN (NOT up.is_private) OR (auth.uid() = up.id) OR (
      EXISTS (SELECT 1 FROM public.user_follows uf WHERE uf.follower_id = auth.uid() AND uf.following_id = up.id)
    ) THEN up.website_url
    ELSE NULL
  END AS website_url,

  up.is_verified,
  up.role,
  up.is_private,
  up.followers_count,
  up.following_count,
  up.show_activity_status,
  up.created_at,
  
  -- Computed Context
  (auth.uid() = up.id) AS is_me,
  
  -- Auth User -> Profile Relationship
  EXISTS (
    SELECT 1 FROM public.user_follows uf 
    WHERE uf.follower_id = auth.uid() AND uf.following_id = up.id
  ) AS is_following,
  
  EXISTS (
    SELECT 1 FROM public.user_follows uf 
    WHERE uf.follower_id = up.id AND uf.following_id = auth.uid()
  ) AS is_follower,
  
  EXISTS (
    SELECT 1 FROM public.user_follow_requests fr 
    WHERE fr.requester_id = auth.uid() AND fr.target_id = up.id AND fr.status = 'pending'
  ) AS has_pending_request,
  
  EXISTS (
    SELECT 1 FROM public.user_blocks ub 
    WHERE ub.blocker_id = auth.uid() AND ub.blocked_id = up.id
  ) AS is_blocked_by_me

FROM public.user_profiles up;

-- 7.2 Followers List
CREATE OR REPLACE VIEW public.v_profile_followers_list
WITH (security_invoker=true)
AS
SELECT 
  uf.following_id AS target_user_id, 
  uf.created_at AS followed_at,
  p.*,
  -- Relationship Label Logic
  CASE 
    WHEN p.is_following AND p.is_follower THEN 'mutual'
    WHEN p.is_follower THEN 'follows_you' -- Tetap muncul 'follows_you' meskipun saya belum follow back (kondisi natural)
    WHEN p.is_following THEN 'following'
    ELSE 'none'
  END AS relationship_label
FROM public.user_follows uf
JOIN public.v_user_profile_header p ON p.id = uf.follower_id;

-- 7.3 Following List
CREATE OR REPLACE VIEW public.v_profile_following_list
WITH (security_invoker=true)
AS
SELECT 
  uf.follower_id AS source_user_id,
  uf.created_at AS followed_at,
  p.*,
  -- Relationship Label Logic (Consistent)
  CASE 
    WHEN p.is_following AND p.is_follower THEN 'mutual'
    WHEN p.is_follower THEN 'follows_you'
    WHEN p.is_following THEN 'following'
    ELSE 'none'
  END AS relationship_label
FROM public.user_follows uf
JOIN public.v_user_profile_header p ON p.id = uf.following_id;

-- 8. RPC FUNCTIONS (Complex Logic)
-- ---------------------------------------------------------------------------
-- 8.1 Friend Suggestions Engine
CREATE OR REPLACE FUNCTION public.get_friend_suggestions(p_limit INT DEFAULT 10)
RETURNS TABLE (
    suggested_user_id UUID,
    username TEXT,
    full_name TEXT,
    avatar_url TEXT,
    is_verified BOOLEAN,
    mutual_count BIGINT,
    reason TEXT
) 
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_uid UUID := auth.uid();
BEGIN
    RETURN QUERY
    WITH 
    -- A. Who do I follow?
    my_followings AS (
        SELECT following_id FROM public.user_follows WHERE follower_id = v_uid
    ),
    -- B. Friends of Friends (The most relevant suggestions)
    friends_of_friends AS (
        SELECT 
            uf.following_id AS candidate_id, 
            COUNT(uf.follower_id) AS mutuals
        FROM public.user_follows uf
        WHERE uf.follower_id IN (SELECT following_id FROM my_followings) -- Followed by my friends
          AND uf.following_id != v_uid
          AND uf.following_id NOT IN (SELECT following_id FROM my_followings) -- Not already followed
        GROUP BY uf.following_id
    ),
    -- C. People who follow me (Stalkers/Fans)
    stalkers AS (
        SELECT follower_id AS candidate_id
        FROM public.user_follows
        WHERE following_id = v_uid
          AND follower_id NOT IN (SELECT following_id FROM my_followings)
    )

    SELECT 
        up.id,
        up.username,
        up.full_name,
        up.avatar_url,
        up.is_verified,
        COALESCE(fof.mutuals, 0) as mutual_count,
        CASE 
            WHEN fof.mutuals > 0 THEN 'Followed by ' || fof.mutuals || ' friends'
            WHEN s.candidate_id IS NOT NULL THEN 'Follows you'
            WHEN up.organization_name IS NOT NULL AND up.organization_name = (SELECT organization_name FROM user_profiles WHERE id = v_uid) THEN 'In the same organization'
            ELSE 'Popular near you'
        END as reason
    FROM public.user_profiles up
    LEFT JOIN friends_of_friends fof ON up.id = fof.candidate_id
    LEFT JOIN stalkers s ON up.id = s.candidate_id
    WHERE up.id != v_uid
      AND up.id NOT IN (SELECT following_id FROM my_followings)
      -- Exclude blocked users
      AND NOT EXISTS (
        SELECT 1 FROM user_blocks ub 
        WHERE (ub.blocker_id = v_uid AND ub.blocked_id = up.id) 
           OR (ub.blocker_id = up.id AND ub.blocked_id = v_uid)
      )
    ORDER BY 
        (COALESCE(fof.mutuals, 0) * 10) +  -- Weight: Mutuals (Highest)
        (CASE WHEN s.candidate_id IS NOT NULL THEN 5 ELSE 0 END) + -- Weight: Follows You
        (CASE WHEN up.is_verified THEN 2 ELSE 0 END) DESC -- Weight: Verified
    LIMIT p_limit;
END;
$$;

-- 8.2 Get Mutual Friends (List overlap between Me and Target)
CREATE OR REPLACE FUNCTION public.get_mutual_friends(p_target_user_id UUID, p_limit INT DEFAULT 5)
RETURNS TABLE (
    id UUID,
    username TEXT,
    full_name TEXT,
    avatar_url TEXT
) 
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
    SELECT 
        up.id, up.username, up.full_name, up.avatar_url
    FROM public.user_profiles up
    WHERE up.id IN (
        -- Orang yang saya follow
        SELECT following_id FROM public.user_follows WHERE follower_id = auth.uid()
        INTERSECT
        -- Orang yang mem-follow target (Target's followers)
        SELECT follower_id FROM public.user_follows WHERE following_id = p_target_user_id
    )
    LIMIT p_limit;
$$;

-- 9. PERMISSIONS (Grants)
-- ---------------------------------------------------------------------------
GRANT SELECT, UPDATE ON public.user_profiles TO authenticated;
REVOKE UPDATE (role, is_verified, followers_count, following_count) ON public.user_profiles FROM authenticated;

GRANT SELECT ON public.v_user_profile_header TO authenticated;
GRANT SELECT ON public.v_profile_followers_list TO authenticated;
GRANT SELECT ON public.v_profile_following_list TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_friend_suggestions(INT) TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_mutual_friends(UUID, INT) TO authenticated;

COMMIT;
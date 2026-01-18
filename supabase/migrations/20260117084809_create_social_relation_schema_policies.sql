BEGIN;

-- ===========================================================================
-- SOCIAL RELATIONS V2 (Consolidated & Optimized)
-- ===========================================================================
-- Features:
-- 1. Relations: Follows, Blocks, Mutes, Restricts
-- 2. Logic: Follow Requests (for private accounts)
-- 3. Auto-Cleanup: Blocking destroys relationships
-- 4. Sync: Updates User Profile Counters automatically
-- ===========================================================================

-- 1. TABLES
-- ---------------------------------------------------------------------------

-- 1.1 USER BLOCKS (Highest Priority for Privacy)
CREATE TABLE IF NOT EXISTS public.user_blocks (
  blocker_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  blocked_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (blocker_id, blocked_id),
  CONSTRAINT user_blocks_no_self CHECK (blocker_id <> blocked_id)
);

-- 1.2 USER FOLLOWS (Public relationships)
CREATE TABLE IF NOT EXISTS public.user_follows (
  follower_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  following_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (follower_id, following_id),
  CONSTRAINT user_follows_no_self CHECK (follower_id <> following_id)
);

-- 1.3 USER FOLLOW REQUESTS (Private relationships pending approval)
-- Status: 'pending' (default), 'accepted' (moved to follows), 'rejected' (deleted)
CREATE TABLE IF NOT EXISTS public.user_follow_requests (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  requester_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  target_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending')), -- Logic: accepted -> delete & insert to follows
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(requester_id, target_id),
  CONSTRAINT follow_requests_no_self CHECK (requester_id <> target_id)
);

-- 1.4 USER MUTES (Hide content without unfollowing)
CREATE TABLE IF NOT EXISTS public.user_mutes (
  muter_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  muted_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (muter_id, muted_id),
  CONSTRAINT user_mutes_no_self CHECK (muter_id <> muted_id)
);

-- 1.5 USER RESTRICTS (Limit interactions quietly)
CREATE TABLE IF NOT EXISTS public.user_restricts (
  restrictor_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  restricted_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (restrictor_id, restricted_id),
  CONSTRAINT user_restricts_no_self CHECK (restrictor_id <> restricted_id)
);

-- 2. INDEXING STRATEGY
-- ---------------------------------------------------------------------------
-- Note: Primary Keys handle the main (A, B) lookups.
-- We need reverse lookups (Find everyone who blocked Me, or follows Me).

-- Blocks
CREATE INDEX IF NOT EXISTS idx_user_blocks_blocked_id 
  ON public.user_blocks(blocked_id);

-- Follows (For "My Followers" list)
CREATE INDEX IF NOT EXISTS idx_user_follows_following_id_created 
  ON public.user_follows(following_id, created_at DESC);

-- Requests (For "My Pending Requests" list)
CREATE INDEX IF NOT EXISTS idx_follow_requests_target_created 
  ON public.user_follow_requests(target_id, created_at DESC);

-- Mutes & Restricts
CREATE INDEX IF NOT EXISTS idx_user_mutes_muted_id 
  ON public.user_mutes(muted_id);
CREATE INDEX IF NOT EXISTS idx_user_restricts_restricted_id 
  ON public.user_restricts(restricted_id);

-- 3. UTILITY FUNCTIONS (Centralized Logic)
-- ---------------------------------------------------------------------------

-- 3.1 Check Block Status (Critical for RLS)
DROP FUNCTION IF EXISTS public.is_blocked_between(uuid, uuid);

CREATE OR REPLACE FUNCTION public.is_blocked_between(user_a UUID, user_b UUID)
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
STABLE
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_blocks 
    WHERE (blocker_id = user_a AND blocked_id = user_b)
       OR (blocker_id = user_b AND blocked_id = user_a)
  );
$$;

-- 3.2 Content Visibility Check (Replaces complex old logic)
-- Used by: Posts, Stories, Feed RLS
CREATE OR REPLACE FUNCTION public.can_view_user_content(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
STABLE
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_is_private BOOLEAN;
BEGIN
  -- 1. Self always allowed
  IF v_uid = target_user_id THEN RETURN TRUE; END IF;

  -- 2. Blocked -> No Access
  IF public.is_blocked_between(v_uid, target_user_id) THEN RETURN FALSE; END IF;

  -- 3. Check Account Privacy
  SELECT is_private INTO v_is_private 
  FROM public.user_profiles 
  WHERE id = target_user_id;
  
  -- If Public -> Allowed
  IF NOT COALESCE(v_is_private, FALSE) THEN RETURN TRUE; END IF;

  -- 4. If Private -> Must Follow
  RETURN EXISTS (
    SELECT 1 FROM public.user_follows 
    WHERE follower_id = v_uid AND following_id = target_user_id
  );
END;
$$;

-- 4. TRIGGERS & LOGIC
-- ---------------------------------------------------------------------------

-- 4.1 Follow Counter Sync (Updates User Profile stats)
CREATE OR REPLACE FUNCTION public.handle_follow_count_update()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    -- Increment Following (Actor)
    UPDATE public.user_profiles 
    SET following_count = following_count + 1, updated_at = NOW() 
    WHERE id = NEW.follower_id;

    -- Increment Followers (Target)
    UPDATE public.user_profiles 
    SET followers_count = followers_count + 1, updated_at = NOW() 
    WHERE id = NEW.following_id;
    
    RETURN NEW;
    
  ELSIF TG_OP = 'DELETE' THEN
    -- Decrement Following (Actor)
    UPDATE public.user_profiles 
    SET following_count = GREATEST(following_count - 1, 0), updated_at = NOW() 
    WHERE id = OLD.follower_id;

    -- Decrement Followers (Target)
    UPDATE public.user_profiles 
    SET followers_count = GREATEST(followers_count - 1, 0), updated_at = NOW() 
    WHERE id = OLD.following_id;
    
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;

DROP TRIGGER IF EXISTS on_follow_changed ON public.user_follows;
CREATE TRIGGER on_follow_changed
AFTER INSERT OR DELETE ON public.user_follows
FOR EACH ROW EXECUTE FUNCTION public.handle_follow_count_update();

-- 4.2 Cleanup Relations on Block (Enforce Block Rules)
CREATE OR REPLACE FUNCTION public.handle_block_cleanup()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  -- 1. Delete Follows (Bidirectional)
  DELETE FROM public.user_follows 
  WHERE (follower_id = NEW.blocker_id AND following_id = NEW.blocked_id)
     OR (follower_id = NEW.blocked_id AND following_id = NEW.blocker_id);

  -- 2. Delete Requests (Bidirectional)
  DELETE FROM public.user_follow_requests 
  WHERE (requester_id = NEW.blocker_id AND target_id = NEW.blocked_id)
     OR (requester_id = NEW.blocked_id AND target_id = NEW.blocker_id);

  -- 3. Delete Mutes & Restricts
  DELETE FROM public.user_mutes
  WHERE (muter_id = NEW.blocker_id AND muted_id = NEW.blocked_id)
     OR (muter_id = NEW.blocked_id AND muted_id = NEW.blocker_id);

  DELETE FROM public.user_restricts
  WHERE (restrictor_id = NEW.blocker_id AND restricted_id = NEW.blocked_id)
     OR (restrictor_id = NEW.blocked_id AND restricted_id = NEW.blocker_id);

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_block_created ON public.user_blocks;
CREATE TRIGGER on_block_created
AFTER INSERT ON public.user_blocks
FOR EACH ROW EXECUTE FUNCTION public.handle_block_cleanup();

-- 5. RPC FUNCTIONS (Transaction Helpers)
-- ---------------------------------------------------------------------------

-- 5.1 Accept Follow Request (Atomic Transaction)
-- Replaces usage of UPDATE status='accepted'
CREATE OR REPLACE FUNCTION public.accept_follow_request(p_requester_id UUID)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  -- 1. Check if request exists for Me
  IF NOT EXISTS (
    SELECT 1 FROM public.user_follow_requests 
    WHERE requester_id = p_requester_id AND target_id = auth.uid()
  ) THEN
    RAISE EXCEPTION 'Request not found';
  END IF;

  -- 2. Delete Request
  DELETE FROM public.user_follow_requests 
  WHERE requester_id = p_requester_id AND target_id = auth.uid();

  -- 3. Insert Follow (Ignore if already follows to prevent duplicate error)
  INSERT INTO public.user_follows (follower_id, following_id)
  VALUES (p_requester_id, auth.uid())
  ON CONFLICT DO NOTHING;
END;
$$;
GRANT EXECUTE ON FUNCTION public.accept_follow_request(UUID) TO authenticated;


-- 6. RLS POLICIES
-- ---------------------------------------------------------------------------
-- Enable RLS
ALTER TABLE public.user_blocks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_follows ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_follow_requests ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_mutes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_restricts ENABLE ROW LEVEL SECURITY;

-- 6.1 Blocks
CREATE POLICY "blocks_select_own" ON public.user_blocks 
  FOR SELECT TO authenticated USING (blocker_id = auth.uid());
CREATE POLICY "blocks_insert_own" ON public.user_blocks 
  FOR INSERT TO authenticated WITH CHECK (blocker_id = auth.uid());
CREATE POLICY "blocks_delete_own" ON public.user_blocks 
  FOR DELETE TO authenticated USING (blocker_id = auth.uid());

-- 6.2 Follows
-- View: Public, unless blocked
CREATE POLICY "follows_select_public" ON public.user_follows
  FOR SELECT TO authenticated 
  USING (
    NOT public.is_blocked_between(auth.uid(), follower_id) AND
    NOT public.is_blocked_between(auth.uid(), following_id)
  );

-- Insert: Own only. PREVENT forcing follow on Private accounts via RLS.
-- Private accounts must go through 'request' flow -> 'accept_follow_request' RPC.
CREATE POLICY "follows_insert_own_public_only" ON public.user_follows
  FOR INSERT TO authenticated 
  WITH CHECK (
    follower_id = auth.uid() AND
    NOT public.is_blocked_between(auth.uid(), following_id) AND
    (
      -- Allow insert ONLY if target is NOT private
      NOT EXISTS (SELECT 1 FROM public.user_profiles WHERE id = following_id AND is_private = true)
    )
  );

CREATE POLICY "follows_delete_own" ON public.user_follows
  FOR DELETE TO authenticated 
  USING (follower_id = auth.uid());

-- 6.3 Follow Requests
-- View: Sender or Receiver
CREATE POLICY "requests_select_party" ON public.user_follow_requests
  FOR SELECT TO authenticated 
  USING (requester_id = auth.uid() OR target_id = auth.uid());

-- Insert: Requester only
CREATE POLICY "requests_insert_own" ON public.user_follow_requests
  FOR INSERT TO authenticated 
  WITH CHECK (
    requester_id = auth.uid() AND
    NOT public.is_blocked_between(auth.uid(), target_id)
  );

-- Delete: Sender (Cancel) or Receiver (Reject)
CREATE POLICY "requests_delete_party" ON public.user_follow_requests
  FOR DELETE TO authenticated 
  USING (requester_id = auth.uid() OR target_id = auth.uid());

-- 6.4 Mutes & Restricts
CREATE POLICY "mutes_all_own" ON public.user_mutes
  FOR ALL TO authenticated USING (muter_id = auth.uid()) WITH CHECK (muter_id = auth.uid());

CREATE POLICY "restricts_all_own" ON public.user_restricts
  FOR ALL TO authenticated USING (restrictor_id = auth.uid()) WITH CHECK (restrictor_id = auth.uid());

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

-- 7. PERMISSIONS
-- ---------------------------------------------------------------------------
GRANT SELECT, INSERT, DELETE ON public.user_blocks TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.user_follows TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.user_follow_requests TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.user_mutes TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.user_restricts TO authenticated; 
GRANT SELECT ON public.v_user_profile_header TO authenticated;
GRANT SELECT ON public.v_profile_followers_list TO authenticated;
GRANT SELECT ON public.v_profile_following_list TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_friend_suggestions(INT) TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_mutual_friends(UUID, INT) TO authenticated;


-- ===========================================================================
-- POST-MIGRATION FEED POLICIES (Moved from Feed Schema due to dependencies)
-- ===========================================================================

-- Posts Select
DROP POLICY IF EXISTS "posts_select_auth" ON public.feed_posts;
CREATE POLICY "posts_select_auth" ON public.feed_posts
  FOR SELECT TO authenticated
  USING (
    public.can_view_user_content(user_id) 
    AND (is_active = TRUE OR user_id = auth.uid())
  );

-- Comments Select
DROP POLICY IF EXISTS "comments_select_auth" ON public.feed_comments;
CREATE POLICY "comments_select_auth" ON public.feed_comments
  FOR SELECT TO authenticated
  USING (
    (is_active = TRUE OR user_id = auth.uid()) AND
    EXISTS (
      SELECT 1 FROM public.feed_posts 
      WHERE id = post_id AND public.can_view_user_content(feed_posts.user_id)
    )
  );

-- Comments Insert
DROP POLICY IF EXISTS "comments_insert_auth" ON public.feed_comments;
CREATE POLICY "comments_insert_auth" ON public.feed_comments
  FOR INSERT TO authenticated
  WITH CHECK (
    user_id = auth.uid() AND
    EXISTS (
      SELECT 1 FROM public.feed_posts 
      WHERE id = post_id 
      AND public.can_view_user_content(feed_posts.user_id)
      AND (allow_comments = TRUE OR feed_posts.user_id = auth.uid())
    )
  );

-- Shares Insert
DROP POLICY IF EXISTS "shares_insert" ON public.feed_post_shares;
CREATE POLICY "shares_insert" ON public.feed_post_shares 
  FOR INSERT TO authenticated 
  WITH CHECK (
    user_id = auth.uid() AND
    EXISTS (
      SELECT 1 FROM public.feed_posts 
      WHERE id = post_id 
      AND allow_share = TRUE 
      AND public.can_view_user_content(feed_posts.user_id)
    )
  );

COMMIT;

BEGIN;

-- ==================================================================
-- SOCIAL RELATIONS SCHEMA
-- Tables: blocks, follows, follow_requests, mutes, restricts
-- ==================================================================

-- ==================================================================
-- 1) USER BLOCKS
-- ==================================================================
CREATE TABLE IF NOT EXISTS public.user_blocks (
  blocker_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  blocked_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  PRIMARY KEY (blocker_id, blocked_id),
  CONSTRAINT user_blocks_no_self CHECK (blocker_id <> blocked_id)
);

-- Covering index for bidirectional block checks
CREATE INDEX IF NOT EXISTS idx_user_blocks_relationship
  ON public.user_blocks (blocker_id, blocked_id);

-- Sorted lists
CREATE INDEX IF NOT EXISTS idx_user_blocks_blocker_created
  ON public.user_blocks (blocker_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_user_blocks_blocked_created
  ON public.user_blocks (blocked_id, created_at DESC);

ALTER TABLE public.user_blocks ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "user_blocks_select_own" ON public.user_blocks;
CREATE POLICY "user_blocks_select_own"
  ON public.user_blocks FOR SELECT
  USING (blocker_id = AUTH.uid());

DROP POLICY IF EXISTS "user_blocks_insert_own" ON public.user_blocks;
CREATE POLICY "user_blocks_insert_own"
  ON public.user_blocks FOR INSERT
  WITH CHECK (blocker_id = AUTH.uid());

DROP POLICY IF EXISTS "user_blocks_delete_own" ON public.user_blocks;
CREATE POLICY "user_blocks_delete_own"
  ON public.user_blocks FOR DELETE
  USING (blocker_id = AUTH.uid());


-- ==================================================================
-- 2) USER FOLLOWS
-- ==================================================================
CREATE TABLE IF NOT EXISTS public.user_follows (
  follower_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  following_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  PRIMARY KEY (follower_id, following_id),
  CONSTRAINT user_follows_no_self_follow CHECK (follower_id <> following_id)
);

-- Covering index for EXISTS checks (already exists from previous migration)
-- CREATE INDEX idx_user_follows_follower_following ...

-- Sorted lists
CREATE INDEX IF NOT EXISTS idx_user_follows_follower_created
  ON public.user_follows (follower_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_user_follows_following_created
  ON public.user_follows (following_id, created_at DESC);

ALTER TABLE public.user_follows ENABLE ROW LEVEL SECURITY;


-- ==================================================================
-- 3) USER FOLLOW REQUESTS (private accounts)
-- ==================================================================
CREATE TABLE IF NOT EXISTS public.user_follow_requests (
  requester_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  target_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  status TEXT NOT NULL DEFAULT 'pending'
    CHECK (status IN ('pending', 'accepted', 'rejected', 'canceled')),

  PRIMARY KEY (requester_id, target_id),
  CONSTRAINT follow_requests_no_self CHECK (requester_id <> target_id)
);

-- Sorted lists
CREATE INDEX IF NOT EXISTS idx_follow_requests_requester_created
  ON public.user_follow_requests (requester_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_follow_requests_target_created
  ON public.user_follow_requests (target_id, created_at DESC);

ALTER TABLE public.user_follow_requests ENABLE ROW LEVEL SECURITY;


-- ==================================================================
-- 4) USER MUTES (hide posts without unfollowing)
-- ==================================================================
CREATE TABLE IF NOT EXISTS public.user_mutes (
  muter_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  muted_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  PRIMARY KEY (muter_id, muted_id),
  CONSTRAINT user_mutes_no_self CHECK (muter_id <> muted_id)
);

-- Covering index for mute checks
CREATE INDEX IF NOT EXISTS idx_user_mutes_relationship
  ON public.user_mutes (muter_id, muted_id);

-- Sorted lists
CREATE INDEX IF NOT EXISTS idx_user_mutes_muter_created
  ON public.user_mutes (muter_id, created_at DESC);

ALTER TABLE public.user_mutes ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "user_mutes_select_own" ON public.user_mutes;
CREATE POLICY "user_mutes_select_own"
  ON public.user_mutes FOR SELECT
  USING (muter_id = AUTH.uid());

DROP POLICY IF EXISTS "user_mutes_insert_own" ON public.user_mutes;
CREATE POLICY "user_mutes_insert_own"
  ON public.user_mutes FOR INSERT
  WITH CHECK (muter_id = AUTH.uid());

DROP POLICY IF EXISTS "user_mutes_delete_own" ON public.user_mutes;
CREATE POLICY "user_mutes_delete_own"
  ON public.user_mutes FOR DELETE
  USING (muter_id = AUTH.uid());


-- ==================================================================
-- 5) USER RESTRICTS (limit interaction)
-- ==================================================================
CREATE TABLE IF NOT EXISTS public.user_restricts (
  restrictor_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  restricted_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  PRIMARY KEY (restrictor_id, restricted_id),
  CONSTRAINT user_restricts_no_self CHECK (restrictor_id <> restricted_id)
);

-- Covering index for restrict checks
CREATE INDEX IF NOT EXISTS idx_user_restricts_relationship
  ON public.user_restricts (restrictor_id, restricted_id);

-- Sorted lists
CREATE INDEX IF NOT EXISTS idx_user_restricts_restrictor_created
  ON public.user_restricts (restrictor_id, created_at DESC);

ALTER TABLE public.user_restricts ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "user_restricts_select_own" ON public.user_restricts;
CREATE POLICY "user_restricts_select_own"
  ON public.user_restricts FOR SELECT
  USING (restrictor_id = AUTH.uid());

DROP POLICY IF EXISTS "user_restricts_insert_own" ON public.user_restricts;
CREATE POLICY "user_restricts_insert_own"
  ON public.user_restricts FOR INSERT
  WITH CHECK (restrictor_id = AUTH.uid());

DROP POLICY IF EXISTS "user_restricts_delete_own" ON public.user_restricts;
CREATE POLICY "user_restricts_delete_own"
  ON public.user_restricts FOR DELETE
  USING (restrictor_id = AUTH.uid());


-- ==================================================================
-- HELPER FUNCTIONS (security definer, avoid RLS recursion)
-- ==================================================================

CREATE OR REPLACE FUNCTION public.is_blocked_between(a UUID, b UUID)
RETURNS BOOLEAN
LANGUAGE SQL
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_blocks ub
    WHERE (ub.blocker_id = a AND ub.blocked_id = b)
       OR (ub.blocker_id = b AND ub.blocked_id = a)
  );
$$;

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
  v := AUTH.uid();
  IF v IS NULL THEN RETURN FALSE; END IF;

  -- Self always allowed
  IF v = target_user_id THEN RETURN TRUE; END IF;

  -- Blocked => no access
  IF public.is_blocked_between(v, target_user_id) THEN RETURN FALSE; END IF;

  -- Check if account is private
  SELECT up.is_private INTO priv
  FROM public.user_profiles up
  WHERE up.id = target_user_id;

  -- Public => allowed
  IF COALESCE(priv, FALSE) = FALSE THEN RETURN TRUE; END IF;

  -- Private => only if viewer follows target
  RETURN EXISTS (
    SELECT 1 FROM public.user_follows f
    WHERE f.follower_id = v AND f.following_id = target_user_id
  );
END;
$$;

-- Alias for feed views
CREATE OR REPLACE FUNCTION public.can_view_user_content(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE SQL
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT public.can_view_user_profile(target_user_id);
$$;


-- ==================================================================
-- RLS POLICIES - USER_FOLLOWS
-- ==================================================================

DROP POLICY IF EXISTS "user_follows_select_private_block" ON public.user_follows;
CREATE POLICY "user_follows_select_private_block"
  ON public.user_follows FOR SELECT
  USING (
    AUTH.uid() = follower_id
    OR AUTH.uid() = following_id
    OR (
      AUTH.uid() IS NOT NULL
      AND public.is_blocked_between(AUTH.uid(), follower_id) = FALSE
      AND public.is_blocked_between(AUTH.uid(), following_id) = FALSE
      AND (
        public.can_view_user_profile(follower_id)
        OR public.can_view_user_profile(following_id)
      )
    )
  );

DROP POLICY IF EXISTS "user_follows_insert_own_block_aware" ON public.user_follows;
CREATE POLICY "user_follows_insert_own_block_aware"
  ON public.user_follows FOR INSERT
  WITH CHECK (
    follower_id = AUTH.uid()
    AND AUTH.uid() IS NOT NULL
    AND public.is_blocked_between(follower_id, following_id) = FALSE
    AND (
      COALESCE((SELECT up.is_private FROM public.user_profiles up WHERE up.id = following_id), FALSE) = FALSE
      OR EXISTS (
        SELECT 1 FROM public.user_follow_requests r
        WHERE r.requester_id = follower_id
          AND r.target_id = following_id
          AND r.status = 'accepted'
      )
    )
  );

DROP POLICY IF EXISTS "user_follows_delete_own" ON public.user_follows;
CREATE POLICY "user_follows_delete_own"
  ON public.user_follows FOR DELETE
  USING (follower_id = AUTH.uid());


-- ==================================================================
-- RLS POLICIES - USER_FOLLOW_REQUESTS
-- ==================================================================

DROP POLICY IF EXISTS "follow_requests_select_party_block_aware" ON public.user_follow_requests;
CREATE POLICY "follow_requests_select_party_block_aware"
  ON public.user_follow_requests FOR SELECT
  USING (
    (AUTH.uid() = requester_id OR AUTH.uid() = target_id)
    AND NOT EXISTS (
      SELECT 1 FROM public.user_blocks b
      WHERE (b.blocker_id = requester_id AND b.blocked_id = target_id)
         OR (b.blocker_id = target_id AND b.blocked_id = requester_id)
    )
  );

DROP POLICY IF EXISTS "follow_requests_insert_requester_private_block_aware" ON public.user_follow_requests;
CREATE POLICY "follow_requests_insert_requester_private_block_aware"
  ON public.user_follow_requests FOR INSERT
  WITH CHECK (
    requester_id = AUTH.uid()
    AND COALESCE((SELECT up.is_private FROM public.user_profiles up WHERE up.id = target_id), FALSE) = TRUE
    AND NOT EXISTS (
      SELECT 1 FROM public.user_blocks b
      WHERE (b.blocker_id = requester_id AND b.blocked_id = target_id)
         OR (b.blocker_id = target_id AND b.blocked_id = requester_id)
    )
    AND NOT EXISTS (
      SELECT 1 FROM public.user_follows f
      WHERE f.follower_id = requester_id AND f.following_id = target_id
    )
  );

DROP POLICY IF EXISTS "follow_requests_update_target_only_block_aware" ON public.user_follow_requests;
CREATE POLICY "follow_requests_update_target_only_block_aware"
  ON public.user_follow_requests FOR UPDATE
  USING (
    target_id = AUTH.uid()
    AND NOT EXISTS (
      SELECT 1 FROM public.user_blocks b
      WHERE (b.blocker_id = requester_id AND b.blocked_id = target_id)
         OR (b.blocker_id = target_id AND b.blocked_id = requester_id)
    )
  )
  WITH CHECK (
    target_id = AUTH.uid()
    AND NOT EXISTS (
      SELECT 1 FROM public.user_blocks b
      WHERE (b.blocker_id = requester_id AND b.blocked_id = target_id)
         OR (b.blocker_id = target_id AND b.blocked_id = requester_id)
    )
  );

DROP POLICY IF EXISTS "follow_requests_delete_party_block_aware" ON public.user_follow_requests;
CREATE POLICY "follow_requests_delete_party_block_aware"
  ON public.user_follow_requests FOR DELETE
  USING (
    (AUTH.uid() = requester_id OR AUTH.uid() = target_id)
    AND NOT EXISTS (
      SELECT 1 FROM public.user_blocks b
      WHERE (b.blocker_id = requester_id AND b.blocked_id = target_id)
         OR (b.blocker_id = target_id AND b.blocked_id = requester_id)
    )
  );


-- ==================================================================
-- COUNTERS TRIGGER (followers_count / following_count)
-- ==================================================================

CREATE OR REPLACE FUNCTION public.apply_follow_counts()
RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE public.user_profiles
    SET following_count = following_count + 1
    WHERE id = NEW.follower_id;

    UPDATE public.user_profiles
    SET followers_count = followers_count + 1
    WHERE id = NEW.following_id;

  ELSIF TG_OP = 'DELETE' THEN
    UPDATE public.user_profiles
    SET following_count = GREATEST(following_count - 1, 0)
    WHERE id = OLD.follower_id;

    UPDATE public.user_profiles
    SET followers_count = GREATEST(followers_count - 1, 0)
    WHERE id = OLD.following_id;
  END IF;

  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_apply_follow_counts_ins ON public.user_follows;
CREATE TRIGGER trg_apply_follow_counts_ins
  AFTER INSERT ON public.user_follows
  FOR EACH ROW EXECUTE FUNCTION public.apply_follow_counts();

DROP TRIGGER IF EXISTS trg_apply_follow_counts_del ON public.user_follows;
CREATE TRIGGER trg_apply_follow_counts_del
  AFTER DELETE ON public.user_follows
  FOR EACH ROW EXECUTE FUNCTION public.apply_follow_counts();


-- ==================================================================
-- CLEANUP ON BLOCK TRIGGER (remove all relationships bidirectional)
-- ==================================================================

CREATE OR REPLACE FUNCTION public.cleanup_on_block()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  -- Remove follows in both directions
  DELETE FROM public.user_follows f
  WHERE (f.follower_id = NEW.blocker_id AND f.following_id = NEW.blocked_id)
     OR (f.follower_id = NEW.blocked_id AND f.following_id = NEW.blocker_id);

  -- Remove follow requests in both directions
  DELETE FROM public.user_follow_requests r
  WHERE (r.requester_id = NEW.blocker_id AND r.target_id = NEW.blocked_id)
     OR (r.requester_id = NEW.blocked_id AND r.target_id = NEW.blocker_id);

  -- Remove mutes in both directions
  DELETE FROM public.user_mutes m
  WHERE (m.muter_id = NEW.blocker_id AND m.muted_id = NEW.blocked_id)
     OR (m.muter_id = NEW.blocked_id AND m.muted_id = NEW.blocker_id);

  -- Remove restricts in both directions
  DELETE FROM public.user_restricts r
  WHERE (r.restrictor_id = NEW.blocker_id AND r.restricted_id = NEW.blocked_id)
     OR (r.restrictor_id = NEW.blocked_id AND r.restricted_id = NEW.blocker_id);

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_cleanup_on_block ON public.user_blocks;
CREATE TRIGGER trg_cleanup_on_block
  AFTER INSERT ON public.user_blocks
  FOR EACH ROW EXECUTE FUNCTION public.cleanup_on_block();


-- ==================================================================
-- GRANT PERMISSIONS
-- ==================================================================

GRANT SELECT, INSERT, DELETE ON public.user_blocks TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.user_follows TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.user_follow_requests TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.user_mutes TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.user_restricts TO authenticated;

COMMIT;
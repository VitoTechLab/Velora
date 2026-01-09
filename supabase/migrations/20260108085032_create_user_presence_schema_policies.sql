BEGIN;

-- ===========================================================================
-- TABLE: user_presence
-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.user_presence (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_user_presence_last_seen_at
  ON public.user_presence (last_seen_at DESC);

-- Index for checking online status queries (user_id lookup with last_seen_at)
-- Note: Cannot use NOW() in partial index predicate as it's a VOLATILE function.
-- The query planner will use this index for online status checks.
CREATE INDEX IF NOT EXISTS idx_user_presence_user_last_seen
  ON public.user_presence (user_id, last_seen_at DESC);

DROP TRIGGER IF EXISTS set_user_presence_updated_at ON public.user_presence;
CREATE TRIGGER set_user_presence_updated_at
BEFORE UPDATE ON public.user_presence
FOR EACH ROW
EXECUTE FUNCTION public.set_updated_at();

-- ===========================================================================
-- INDEXES: user_profiles (RLS optimization)
-- ===========================================================================

CREATE INDEX IF NOT EXISTS idx_user_profiles_privacy_settings
  ON public.user_profiles (id, show_activity_status, is_private)
  WHERE show_activity_status = TRUE OR is_private = TRUE;

-- ===========================================================================
-- RPC: touch_presence
-- ===========================================================================

CREATE OR REPLACE FUNCTION public.touch_presence()
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.user_presence (user_id, last_seen_at, updated_at)
  VALUES (auth.uid(), NOW(), NOW())
  ON CONFLICT (user_id) DO UPDATE
    SET last_seen_at = EXCLUDED.last_seen_at,
        updated_at = EXCLUDED.updated_at;
END;
$$;

-- ===========================================================================
-- VIEW: user_presence_view
-- ===========================================================================

CREATE OR REPLACE VIEW public.user_presence_view
WITH (security_invoker=true) AS
SELECT
  p.user_id,
  p.last_seen_at,
  (NOW() - p.last_seen_at) <= INTERVAL '2 minutes' AS is_online
FROM public.user_presence p;

-- ===========================================================================
-- RLS POLICIES
-- ===========================================================================

ALTER TABLE public.user_presence ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "presence_select_private_block" ON public.user_presence;
CREATE POLICY "presence_select_private_block"
ON public.user_presence
FOR SELECT
TO authenticated
USING (
  user_id = auth.uid()
  OR (
    EXISTS (
      SELECT 1 FROM public.user_profiles up
      WHERE up.id = user_id
        AND COALESCE(up.show_activity_status, TRUE) = TRUE
    )
    AND NOT EXISTS (
      SELECT 1 FROM public.user_blocks b
      WHERE (b.blocker_id = auth.uid() AND b.blocked_id = user_id)
         OR (b.blocker_id = user_id AND b.blocked_id = auth.uid())
    )
    AND (
      NOT EXISTS (
        SELECT 1 FROM public.user_profiles up2
        WHERE up2.id = user_id AND up2.is_private = TRUE
      )
      OR EXISTS (
        SELECT 1 FROM public.user_follows f
        WHERE f.follower_id = auth.uid() AND f.following_id = user_id
      )
    )
  )
);

DROP POLICY IF EXISTS "presence_insert_own" ON public.user_presence;
CREATE POLICY "presence_insert_own"
ON public.user_presence
FOR INSERT
TO authenticated
WITH CHECK (
  user_id = auth.uid()
  AND last_seen_at <= NOW() + INTERVAL '1 minute'
);

DROP POLICY IF EXISTS "presence_update_own" ON public.user_presence;
CREATE POLICY "presence_update_own"
ON public.user_presence
FOR UPDATE
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (
  user_id = auth.uid()
  AND last_seen_at <= NOW() + INTERVAL '1 minute'
);

-- ===========================================================================
-- GRANTS
-- ===========================================================================

GRANT SELECT ON public.user_presence TO authenticated;
GRANT INSERT ON public.user_presence TO authenticated;
GRANT UPDATE ON public.user_presence TO authenticated;

GRANT SELECT ON public.user_presence_view TO authenticated;

GRANT EXECUTE ON FUNCTION public.touch_presence() TO authenticated;

-- ===========================================================================
-- REALTIME PUBLICATION
-- ===========================================================================

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'user_presence'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.user_presence;
  END IF;
END $$;

-- ===========================================================================
-- CLEANUP FUNCTION
-- ===========================================================================

CREATE OR REPLACE FUNCTION public.cleanup_old_presence(days_threshold INT DEFAULT 30)
RETURNS TABLE(deleted_count BIGINT)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_deleted_count BIGINT;
BEGIN
  DELETE FROM public.user_presence
  WHERE last_seen_at < NOW() - (days_threshold || ' days')::INTERVAL;
  
  GET DIAGNOSTICS v_deleted_count = ROW_COUNT;
  
  RETURN QUERY SELECT v_deleted_count;
END;
$$;

GRANT EXECUTE ON FUNCTION public.cleanup_old_presence(INT) TO authenticated;

COMMIT;

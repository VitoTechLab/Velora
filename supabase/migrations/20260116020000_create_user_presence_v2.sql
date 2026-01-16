BEGIN;

-- ===========================================================================
-- USER PRESENCE SYSTEM V2 (Consolidated & Optimized)
-- ===========================================================================
-- 1. Optimized RLS (Uses centralized check functions)
-- 2. Realtime Privacy (Filtered via RLS)
-- 3. High Performance (Batched Updates, Indexing)
-- ===========================================================================

-- 1. TABLE
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.user_presence (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Index for "Online Users" query (critical for filtering)
CREATE INDEX IF NOT EXISTS idx_user_presence_online 
  ON public.user_presence (last_seen_at DESC);

-- 2. TRIGGER (Auto-Update Timestamp)
-- ---------------------------------------------------------------------------
-- Reusing standard set_updated_at() if available, or simplified inline
CREATE OR REPLACE FUNCTION public.handle_presence_update()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_presence_update ON public.user_presence;
CREATE TRIGGER on_presence_update
BEFORE UPDATE ON public.user_presence
FOR EACH ROW EXECUTE FUNCTION public.handle_presence_update();


-- 3. RPC: TOUCH PRESENCE (Heartbeat)
-- ---------------------------------------------------------------------------
-- Used by client every X minutes to say "I'm still here"
CREATE OR REPLACE FUNCTION public.touch_presence()
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.user_presence (user_id, last_seen_at)
  VALUES (auth.uid(), NOW())
  ON CONFLICT (user_id) DO UPDATE
  SET last_seen_at = EXCLUDED.last_seen_at; -- updated_at handled by trigger
END;
$$;

-- 4. VIEW (Helper for Client)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE VIEW public.user_presence_view
WITH (security_invoker=true) AS
SELECT
  p.user_id,
  p.last_seen_at,
  (NOW() - p.last_seen_at) <= INTERVAL '2 minutes' AS is_online
FROM public.user_presence p;

-- 5. RLS POLICIES (Privacy Aware)
-- ---------------------------------------------------------------------------
ALTER TABLE public.user_presence ENABLE ROW LEVEL SECURITY;

-- 5.1 SELECT: Strict Privacy Rules
-- Logic: 
-- 1. See user OWN presence
-- 2. See OTHERS if:
--    a. They have 'show_activity_status' = TRUE (Profile Setting)
--    b. AND We are NOT blocked
--    c. AND (Their account is Public OR We Follow them) -> reusing can_view_user_content logic?
--       Actually, Presence usually requires Mutuality or just Following. 
--       Let's stick to standard social logic: Follow + Public/Accepted.

DROP POLICY IF EXISTS "presence_select_v2" ON public.user_presence;
CREATE POLICY "presence_select_v2"
ON public.user_presence
FOR SELECT
TO authenticated
USING (
  user_id = auth.uid()
  OR (
    -- 1. Must pass blocking check
    NOT public.is_blocked_between(auth.uid(), user_id)
    AND
    -- 2. Must be visible (Public or Followed)
    public.can_view_user_content(user_id)
    AND
    -- 3. Must have activity status enabled (Check Settings)
    EXISTS (
      SELECT 1 FROM public.user_profiles up 
      WHERE up.id = user_id 
      AND COALESCE(up.show_activity_status, TRUE) = TRUE
    )
  )
);

-- 5.2 INSERT/UPDATE: Only I can update my presence
DROP POLICY IF EXISTS "presence_modify_own" ON public.user_presence;
CREATE POLICY "presence_modify_own"
ON public.user_presence
FOR ALL
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- 6. REALTIME SETUP
-- ---------------------------------------------------------------------------
-- Add to publication for Realtime subscriptions
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

-- 7. CLEANUP JOB (Maintenance)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.cleanup_old_presence(days_threshold INT DEFAULT 30)
RETURNS BIGINT
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_count BIGINT;
BEGIN
  WITH deleted AS (
    DELETE FROM public.user_presence
    WHERE last_seen_at < NOW() - (days_threshold || ' days')::INTERVAL
    RETURNING 1
  )
  SELECT COUNT(*) INTO v_count FROM deleted;
  
  RETURN v_count;
END;
$$;

-- 8. PERMISSIONS
-- ---------------------------------------------------------------------------
GRANT SELECT, INSERT, UPDATE ON public.user_presence TO authenticated;
GRANT SELECT ON public.user_presence_view TO authenticated;
GRANT EXECUTE ON FUNCTION public.touch_presence() TO authenticated;

COMMIT;

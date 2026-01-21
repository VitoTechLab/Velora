-- ===========================================================================
-- CAMPAIGN UPDATES TABLE
-- ===========================================================================

-- 1. TABLE STRUCTURE
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaign_updates (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  title TEXT, 
  update_text TEXT NOT NULL,
  image_url TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. RLS POLICIES
-- ---------------------------------------------------------------------------
ALTER TABLE public.campaign_updates ENABLE ROW LEVEL SECURITY;

-- Drop existing policies to avoid conflicts
DROP POLICY IF EXISTS "Public can view campaign updates" ON public.campaign_updates;
DROP POLICY IF EXISTS "Campaign owners can add updates" ON public.campaign_updates;
DROP POLICY IF EXISTS "Campaign owners can delete updates" ON public.campaign_updates;

-- Public can read all updates
CREATE POLICY "Public can view campaign updates" ON public.campaign_updates
  FOR SELECT USING (true);

-- Owners can ADD updates (Fixed policy integrated)
CREATE POLICY "Campaign owners can add updates" ON public.campaign_updates
  FOR INSERT TO authenticated
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.campaigns c 
      WHERE c.id = campaign_id 
      AND c.user_id = auth.uid()
    )
  );

-- Owners can DELETE updates
CREATE POLICY "Campaign owners can delete updates" ON public.campaign_updates
  FOR DELETE TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM public.campaigns c 
      WHERE c.id = campaign_id 
      AND c.user_id = auth.uid()
    )
  );

-- 3. REALTIME
-- ---------------------------------------------------------------------------
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_publication WHERE pubname = 'supabase_realtime') THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.campaign_updates;
  END IF;
END $$;

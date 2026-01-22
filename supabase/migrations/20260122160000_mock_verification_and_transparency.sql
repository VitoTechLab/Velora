-- ===========================================================================
-- MOCK VERIFICATION + TRANSPARENCY TABLES
-- ===========================================================================
-- 1. Mock: Set all campaigns as verified by default
-- 2. Create transparency schema: documents, milestones, fund_breakdown
-- ===========================================================================

-- ============================================
-- 1. MOCK VERIFICATION
-- ============================================
-- Set default to TRUE for mock purposes
ALTER TABLE public.campaigns ALTER COLUMN is_verified SET DEFAULT TRUE;

-- Update all existing campaigns to be verified
UPDATE public.campaigns SET is_verified = TRUE WHERE is_verified = FALSE;

-- ============================================
-- 2. CAMPAIGN DOCUMENTS TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS public.campaign_documents (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  type_label TEXT NOT NULL DEFAULT 'Document', -- e.g., 'Legal', 'Financial', 'Compliance'
  file_url TEXT,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'verified', 'rejected')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_campaign_documents_campaign ON public.campaign_documents(campaign_id);

-- RLS
ALTER TABLE public.campaign_documents ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public read documents" ON public.campaign_documents;
DROP POLICY IF EXISTS "Owners manage documents" ON public.campaign_documents;

-- Anyone can view documents
CREATE POLICY "Public read documents" ON public.campaign_documents
  FOR SELECT USING (true);

-- Campaign owners can manage their documents
CREATE POLICY "Owners manage documents" ON public.campaign_documents
  FOR ALL TO authenticated
  USING (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()))
  WITH CHECK (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()));

GRANT SELECT ON public.campaign_documents TO authenticated, anon;
GRANT INSERT, UPDATE, DELETE ON public.campaign_documents TO authenticated;

-- ============================================
-- 3. CAMPAIGN MILESTONES TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS public.campaign_milestones (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT,
  target_amount NUMERIC(15, 2) NOT NULL CHECK (target_amount > 0),
  due_date TIMESTAMPTZ,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'in_progress', 'completed', 'missed')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  completed_at TIMESTAMPTZ
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_campaign_milestones_campaign ON public.campaign_milestones(campaign_id);

-- RLS
ALTER TABLE public.campaign_milestones ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public read milestones" ON public.campaign_milestones;
DROP POLICY IF EXISTS "Owners manage milestones" ON public.campaign_milestones;

-- Anyone can view milestones
CREATE POLICY "Public read milestones" ON public.campaign_milestones
  FOR SELECT USING (true);

-- Campaign owners can manage milestones
CREATE POLICY "Owners manage milestones" ON public.campaign_milestones
  FOR ALL TO authenticated
  USING (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()))
  WITH CHECK (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()));

GRANT SELECT ON public.campaign_milestones TO authenticated, anon;
GRANT INSERT, UPDATE, DELETE ON public.campaign_milestones TO authenticated;

-- ============================================
-- 4. CAMPAIGN FUND BREAKDOWN TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS public.campaign_fund_breakdown (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  label TEXT NOT NULL,
  amount NUMERIC(15, 2) NOT NULL CHECK (amount >= 0),
  percentage NUMERIC(5, 2) NOT NULL CHECK (percentage >= 0 AND percentage <= 100),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_campaign_fund_breakdown_campaign ON public.campaign_fund_breakdown(campaign_id);

-- RLS
ALTER TABLE public.campaign_fund_breakdown ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public read fund breakdown" ON public.campaign_fund_breakdown;
DROP POLICY IF EXISTS "Owners manage fund breakdown" ON public.campaign_fund_breakdown;

-- Anyone can view fund breakdown
CREATE POLICY "Public read fund breakdown" ON public.campaign_fund_breakdown
  FOR SELECT USING (true);

-- Campaign owners can manage fund breakdown
CREATE POLICY "Owners manage fund breakdown" ON public.campaign_fund_breakdown
  FOR ALL TO authenticated
  USING (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()))
  WITH CHECK (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()));

GRANT SELECT ON public.campaign_fund_breakdown TO authenticated, anon;
GRANT INSERT, UPDATE, DELETE ON public.campaign_fund_breakdown TO authenticated;

-- ============================================
-- 5. CAMPAIGN PROOF ITEMS TABLE (Photo/Video proof)
-- ============================================
CREATE TABLE IF NOT EXISTS public.campaign_proof_items (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  media_url TEXT NOT NULL,
  caption TEXT,
  media_type TEXT NOT NULL DEFAULT 'image' CHECK (media_type IN ('image', 'video')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_campaign_proof_items_campaign ON public.campaign_proof_items(campaign_id);

-- RLS
ALTER TABLE public.campaign_proof_items ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public read proof items" ON public.campaign_proof_items;
DROP POLICY IF EXISTS "Owners manage proof items" ON public.campaign_proof_items;

-- Anyone can view proof items
CREATE POLICY "Public read proof items" ON public.campaign_proof_items
  FOR SELECT USING (true);

-- Campaign owners can manage proof items
CREATE POLICY "Owners manage proof items" ON public.campaign_proof_items
  FOR ALL TO authenticated
  USING (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()))
  WITH CHECK (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()));

GRANT SELECT ON public.campaign_proof_items TO authenticated, anon;
GRANT INSERT, UPDATE, DELETE ON public.campaign_proof_items TO authenticated;

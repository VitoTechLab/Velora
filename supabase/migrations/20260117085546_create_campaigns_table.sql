-- ===========================================================================
-- CAMPAIGNS TABLE
-- ===========================================================================

-- 1. ENUMS
-- ---------------------------------------------------------------------------
DO $$ BEGIN
  CREATE TYPE public.campaign_status AS ENUM ('active', 'paused', 'completed', 'withdrawn', 'banned');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

-- 2. TABLE STRUCTURE
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaigns (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  category_id UUID REFERENCES public.campaign_categories(id) ON DELETE SET NULL,
  
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  cover_image_url TEXT,
  
  target_amount NUMERIC(15, 2) NOT NULL CHECK (target_amount > 0),
  
  -- Social Proof (Gross Amount)
  amount_raised NUMERIC(15, 2) NOT NULL DEFAULT 0,
  -- Valid Balance (Net Amount)
  current_balance NUMERIC(15, 2) NOT NULL DEFAULT 0, 
  
  donor_count INTEGER DEFAULT 0,
  
  status public.campaign_status NOT NULL DEFAULT 'active',
  is_verified BOOLEAN DEFAULT FALSE,
  
  location_city TEXT,
  end_date TIMESTAMPTZ,
  
  -- Bank Details for Withdrawal (Added from later migration)
  withdrawal_bank_name TEXT,
  withdrawal_account_number TEXT,
  withdrawal_account_holder TEXT,
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  completed_at TIMESTAMPTZ
);

-- 3. INDEXES
-- ---------------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_campaigns_category ON public.campaigns(category_id);
CREATE INDEX IF NOT EXISTS idx_campaigns_user ON public.campaigns(user_id);
CREATE INDEX IF NOT EXISTS idx_campaigns_status ON public.campaigns(status);

-- 4. RLS POLICIES
-- ---------------------------------------------------------------------------
ALTER TABLE public.campaigns ENABLE ROW LEVEL SECURITY;

-- Drop existing policies to avoid conflicts
DROP POLICY IF EXISTS "Public view active campaigns" ON public.campaigns;
DROP POLICY IF EXISTS "Users create campaigns" ON public.campaigns;
DROP POLICY IF EXISTS "Owners update campaigns" ON public.campaigns;
DROP POLICY IF EXISTS "Anyone can view campaigns" ON public.campaigns;

-- Anyone can view active campaigns (including anonymous users)
CREATE POLICY "Anyone can view campaigns" ON public.campaigns 
  FOR SELECT USING (status = 'active' OR user_id = auth.uid());

-- Authenticated users can create campaigns
CREATE POLICY "Users create campaigns" ON public.campaigns 
  FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

-- Owners can update their own campaigns
CREATE POLICY "Owners update campaigns" ON public.campaigns 
  FOR UPDATE TO authenticated USING (user_id = auth.uid());

-- 5. GRANT PERMISSIONS
-- ---------------------------------------------------------------------------
GRANT SELECT ON public.campaigns TO anon, authenticated;
GRANT INSERT, UPDATE ON public.campaigns TO authenticated;

-- 5. REALTIME
-- ---------------------------------------------------------------------------
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_publication WHERE pubname = 'supabase_realtime') THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.campaigns;
  END IF;
END $$;

-- ===========================================================================
-- DONATIONS TABLE
-- ===========================================================================

-- 1. TABLE STRUCTURE
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.donations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  
  amount_total NUMERIC(15, 2) NOT NULL,
  platform_fee_percent NUMERIC(5, 2) DEFAULT 0,
  platform_fee_amount NUMERIC(15, 2) GENERATED ALWAYS AS (amount_total * (platform_fee_percent / 100)) STORED,
  amount_net NUMERIC(15, 2) GENERATED ALWAYS AS (amount_total - (amount_total * (platform_fee_percent / 100))) STORED,
  
  is_anonymous BOOLEAN DEFAULT FALSE,
  message TEXT,
  
  payment_status TEXT DEFAULT 'pending', -- pending, success, failed
  payment_id TEXT,
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. INDEXES
-- ---------------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_donations_campaign ON public.donations(campaign_id);

-- 3. RLS POLICIES
-- ---------------------------------------------------------------------------
ALTER TABLE public.donations ENABLE ROW LEVEL SECURITY;

-- Drop existing policies to avoid conflicts
DROP POLICY IF EXISTS "Public create donation" ON public.donations;
DROP POLICY IF EXISTS "User see own donations" ON public.donations;
DROP POLICY IF EXISTS "Campaign owner see donations" ON public.donations;

-- Public can create donation
CREATE POLICY "Public create donation" ON public.donations 
  FOR INSERT TO anon, authenticated WITH CHECK (true);

-- User see their own donations
CREATE POLICY "User see own donations" ON public.donations 
  FOR SELECT TO authenticated USING (user_id = auth.uid());

-- Campaign Owner can see donations for their campaign
CREATE POLICY "Campaign owner see donations" ON public.donations 
  FOR SELECT TO authenticated 
  USING (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()));

-- Grant permissions
GRANT SELECT ON public.donations TO authenticated;
GRANT INSERT ON public.donations TO anon, authenticated;

-- 4. TRIGGERS (Donation Success -> Campaign Stats)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.fn_on_donation_success_v2()
RETURNS TRIGGER AS $$
BEGIN
  -- Only run if status changes to success
  IF NEW.payment_status = 'success' AND (OLD.payment_status IS NULL OR OLD.payment_status != 'success') THEN
    UPDATE public.campaigns
    SET 
        amount_raised = amount_raised + NEW.amount_total,
        current_balance = current_balance + NEW.amount_net,
        donor_count = donor_count + 1
    WHERE id = NEW.campaign_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Drop triggers if they exist to avoid conflicts
DROP TRIGGER IF EXISTS trg_on_donation_success_v2 ON public.donations;
DROP TRIGGER IF EXISTS trg_on_donation_insert_success ON public.donations;

CREATE TRIGGER trg_on_donation_success_v2
AFTER UPDATE ON public.donations
FOR EACH ROW 
WHEN (NEW.payment_status = 'success' AND OLD.payment_status != 'success')
EXECUTE FUNCTION public.fn_on_donation_success_v2();

-- Handle INSERT case (e.g. testing)
CREATE TRIGGER trg_on_donation_insert_success
AFTER INSERT ON public.donations
FOR EACH ROW
WHEN (NEW.payment_status = 'success')
EXECUTE FUNCTION public.fn_on_donation_success_v2();

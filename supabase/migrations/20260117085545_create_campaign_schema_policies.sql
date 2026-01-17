BEGIN;

-- ===========================================================================
-- CAMPAIGN & DONATION SYSTEM (GoFundMe Style Architecture)
-- ===========================================================================

-- 1. ENUMS & UTILS
-- ---------------------------------------------------------------------------
DO $$ BEGIN
  CREATE TYPE public.campaign_status AS ENUM ('active', 'paused', 'completed', 'withdrawn', 'banned');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

-- 2. CATEGORIES (Master Data)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaign_categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  slug TEXT NOT NULL UNIQUE,
  icon_name TEXT, -- Referensi icon flutter
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Seed Default Categories
INSERT INTO public.campaign_categories (name, slug, icon_name) VALUES
('Medical', 'medical', 'medical_services'),
('Education', 'education', 'school'),
('Emergency', 'emergency', 'warning'),
('Charity', 'charity', 'volunteer_activism')
ON CONFLICT (slug) DO NOTHING;

-- 3. CAMPAIGNS (Tabel Utama)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaigns (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  category_id UUID REFERENCES public.campaign_categories(id) ON DELETE SET NULL,
  
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  cover_image_url TEXT, -- Essential for display cards
  
  target_amount NUMERIC(15, 2) NOT NULL CHECK (target_amount > 0),
  
  -- Social Proof (Gross Amount - Apa yang dilihat publik)
  amount_raised NUMERIC(15, 2) NOT NULL DEFAULT 0,
  -- Valid Balance (Net Amount - Apa yang bisa dicairkan setelah fee)
  current_balance NUMERIC(15, 2) NOT NULL DEFAULT 0, 
  
  donor_count INTEGER DEFAULT 0, -- Cache count agar query list cepat
  
  status public.campaign_status NOT NULL DEFAULT 'active',
  is_verified BOOLEAN DEFAULT FALSE, -- Trust signal
  
  location_city TEXT,
  end_date TIMESTAMPTZ, -- Optional deadline
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  completed_at TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_campaigns_category ON public.campaigns(category_id);
CREATE INDEX IF NOT EXISTS idx_campaigns_user ON public.campaigns(user_id);
CREATE INDEX IF NOT EXISTS idx_campaigns_status ON public.campaigns(status);

-- 4. DONATIONS (Ledger Transaksi)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.donations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE, -- Mandatory Login
  
  amount_total NUMERIC(15, 2) NOT NULL, -- Gross Donasi user
  platform_fee_percent NUMERIC(5, 2) DEFAULT 0,
  platform_fee_amount NUMERIC(15, 2) GENERATED ALWAYS AS (amount_total * (platform_fee_percent / 100)) STORED,
  amount_net NUMERIC(15, 2) GENERATED ALWAYS AS (amount_total - (amount_total * (platform_fee_percent / 100))) STORED,
  
  is_anonymous BOOLEAN DEFAULT FALSE,
  message TEXT, -- Pesan dukungan
  
  payment_status TEXT DEFAULT 'pending', -- pending, success, failed
  payment_id TEXT, -- ID dari Payment Gateway (Xendit/Midtrans/Stripe)
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_donations_campaign ON public.donations(campaign_id);

-- 5. CAMPAIGN UPDATES (Kabar Terbaru)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaign_updates (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  title TEXT, 
  update_text TEXT NOT NULL,
  image_url TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 6. COMMENTS (Diskusi)
-- ---------------------------------------------------------------------------
-- Menggunakan tabel donasi untuk "Words of Support" (pesan saat donasi)
-- Tabel ini untuk komentar umum/diskusi (opsional, mirip GoFundMe "Comments")
CREATE TABLE IF NOT EXISTS public.campaign_comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  comment_text TEXT NOT NULL,
  parent_id UUID REFERENCES public.campaign_comments(id), -- Threaded comments
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 7. WITHDRAWALS (Pencairan Dana)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaign_withdrawals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id), -- Requestor (Must be owner)
  
  amount NUMERIC(15, 2) NOT NULL CHECK (amount > 0),
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected', 'processed')),
  
  -- Bank Destination
  target_bank_name TEXT NOT NULL,
  target_account_number TEXT NOT NULL,
  target_account_holder TEXT NOT NULL,
  
  proof_file_url TEXT, -- Bukti transfer dari admin
  admin_notes TEXT,
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  processed_at TIMESTAMPTZ
);

-- Validate Withdrawal Request vs Balance
CREATE OR REPLACE FUNCTION public.fn_handle_withdrawal_request()
RETURNS TRIGGER AS $$
DECLARE v_balance NUMERIC; v_owner UUID;
BEGIN
  -- 1. Check Ownership
  SELECT user_id, current_balance INTO v_owner, v_balance 
  FROM public.campaigns WHERE id = NEW.campaign_id;
  
  IF v_owner != NEW.user_id THEN
    RAISE EXCEPTION 'Only campaign owner can request withdrawal.';
  END IF;

  -- 2. Check Balance (Only on Insert)
  IF (TG_OP = 'INSERT') THEN
    IF NEW.amount > v_balance THEN
      RAISE EXCEPTION 'Insufficient funds. Available: %, Requested: %', v_balance, NEW.amount;
    END IF;
  END IF;

  -- 3. Deduct on Processed
  IF (TG_OP = 'UPDATE' AND NEW.status = 'processed' AND OLD.status != 'processed') THEN
    UPDATE public.campaigns
    SET current_balance = current_balance - NEW.amount
    WHERE id = NEW.campaign_id;
    
    NEW.processed_at = NOW();
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER trg_withdrawal_logic
BEFORE INSERT OR UPDATE ON public.campaign_withdrawals
FOR EACH ROW EXECUTE FUNCTION public.fn_handle_withdrawal_request();

-- ===========================================================================
-- LOGIC: TRIGGERS
-- ===========================================================================

-- Trigger: On Donation Success -> Update Campaign Stats
CREATE OR REPLACE FUNCTION public.fn_on_donation_success_v2()
RETURNS TRIGGER AS $$
BEGIN
  -- Hanya jalankan jika status berubah menjadi success
  IF NEW.payment_status = 'success' AND (OLD.payment_status IS NULL OR OLD.payment_status != 'success') THEN
    UPDATE public.campaigns
    SET 
        -- Public melihat Total Gross (Rp 100.000)
        amount_raised = amount_raised + NEW.amount_total,
        -- Organizer menerima Net (Rp 95.000)
        current_balance = current_balance + NEW.amount_net,
        -- Counter naik
        donor_count = donor_count + 1
    WHERE id = NEW.campaign_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER trg_on_donation_success_v2
AFTER UPDATE ON public.donations -- Biasanya Payment Gateway melakukan UPDATE status dari pending ke success
FOR EACH ROW 
WHEN (NEW.payment_status = 'success' AND OLD.payment_status != 'success')
EXECUTE FUNCTION public.fn_on_donation_success_v2();

-- Note: Handle INSERT case if donation is created directly as 'success' (e.g. testing)
CREATE TRIGGER trg_on_donation_insert_success
AFTER INSERT ON public.donations
FOR EACH ROW
WHEN (NEW.payment_status = 'success')
EXECUTE FUNCTION public.fn_on_donation_success_v2();


-- ===========================================================================
-- SECURITY: RLS POLICIES (CRITICAL)
-- ===========================================================================
ALTER TABLE public.campaigns ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.donations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.campaign_updates ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.campaign_comments ENABLE ROW LEVEL SECURITY;

-- Campaigns
-- Public read active campaigns
CREATE POLICY "Public view active campaigns" ON public.campaigns 
  FOR SELECT USING (status = 'active' OR user_id = auth.uid());

-- User create campaign
CREATE POLICY "Users create campaigns" ON public.campaigns 
  FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

-- Editor update own
CREATE POLICY "Owners update campaigns" ON public.campaigns 
  FOR UPDATE TO authenticated USING (user_id = auth.uid());

-- Donations
-- Public can create donation (intention)
CREATE POLICY "Public create donation" ON public.donations 
  FOR INSERT TO anon, authenticated WITH CHECK (true);

-- User see their own donations
CREATE POLICY "User see own donations" ON public.donations 
  FOR SELECT TO authenticated USING (user_id = auth.uid());

-- Campaign Owner can see donations for their campaign
CREATE POLICY "Campaign owner see donations" ON public.donations 
  FOR SELECT TO authenticated 
  USING (EXISTS (SELECT 1 FROM public.campaigns c WHERE c.id = campaign_id AND c.user_id = auth.uid()));

-- Withdrawals
CREATE POLICY "Owners manage own withdrawals" ON public.campaign_withdrawals
  FOR ALL TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- ===========================================================================
-- VIEWS
-- ===========================================================================
-- Top Donors View (Updated logic)
CREATE OR REPLACE VIEW public.v_campaign_donors AS
SELECT 
    d.campaign_id,
    d.amount_total,
    d.created_at,
    d.message,
    d.is_anonymous,
    CASE 
        WHEN d.is_anonymous THEN 'Anonymous'
        ELSE up.display_name 
    END as donor_name,
    CASE 
        WHEN d.is_anonymous THEN NULL 
        ELSE up.avatar_url 
    END as donor_avatar
FROM public.donations d
LEFT JOIN public.user_profiles up ON d.user_id = up.id
WHERE d.payment_status = 'success'
ORDER BY d.created_at DESC;

-- Realtime Setup
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_publication WHERE pubname = 'supabase_realtime') THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.campaigns;
    ALTER PUBLICATION supabase_realtime ADD TABLE public.campaign_updates;
    -- Jangan expose tabel donations ke public realtime karena data sensitif
  END IF;
END $$;

COMMIT;
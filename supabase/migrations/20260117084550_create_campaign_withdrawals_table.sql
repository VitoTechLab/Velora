-- ===========================================================================
-- CAMPAIGN WITHDRAWALS TABLE
-- ===========================================================================

-- 1. TABLE STRUCTURE
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

-- 2. RLS POLICIES
-- ---------------------------------------------------------------------------
ALTER TABLE public.campaign_withdrawals ENABLE ROW LEVEL SECURITY;

-- Drop existing policy to avoid conflicts
DROP POLICY IF EXISTS "Owners manage own withdrawals" ON public.campaign_withdrawals;

-- Owners can manage (select, insert) their own withdrawals
CREATE POLICY "Owners manage own withdrawals" ON public.campaign_withdrawals
  FOR ALL TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- 3. AUTO-APPROVE LOGIC (Mock Implementation)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.fn_auto_approve_withdrawal()
RETURNS TRIGGER AS $$
DECLARE 
  v_balance NUMERIC;
  v_owner UUID;
BEGIN
  -- 1. Check Ownership - Only campaign owner can request withdrawal
  SELECT user_id, current_balance INTO v_owner, v_balance 
  FROM public.campaigns WHERE id = NEW.campaign_id;
  
  IF v_owner != NEW.user_id THEN
    RAISE EXCEPTION 'Only campaign owner can request withdrawal.';
  END IF;

  -- 2. Check Balance - Cannot withdraw more than available
  IF NEW.amount > v_balance THEN
    RAISE EXCEPTION 'Insufficient funds. Available: %, Requested: %', v_balance, NEW.amount;
  END IF;

  -- 3. Auto-Approve logic (MOCK: process immediately)
  NEW.status := 'processed';
  NEW.processed_at := NOW();
  NEW.admin_notes := '[AUTO-APPROVED] Mock gateway - instant processing';
  
  -- 4. Deduct from campaign balance
  UPDATE public.campaigns
  SET current_balance = current_balance - NEW.amount
  WHERE id = NEW.campaign_id;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Drop trigger if exists to avoid conflicts
DROP TRIGGER IF EXISTS trg_withdrawal_auto_approve ON public.campaign_withdrawals;

-- Trigger: Before Insert
CREATE TRIGGER trg_withdrawal_auto_approve
BEFORE INSERT ON public.campaign_withdrawals
FOR EACH ROW EXECUTE FUNCTION public.fn_auto_approve_withdrawal();

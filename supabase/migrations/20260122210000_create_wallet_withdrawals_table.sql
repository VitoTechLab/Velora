-- Migration: Create wallet_withdrawals table
-- Description: Tracks withdrawal requests from wallets with bank transfer details

-- Create withdrawal status enum if it doesn't exist
DO $$ 
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'wallet_withdrawal_status') THEN
    CREATE TYPE public.wallet_withdrawal_status AS ENUM (
      'pending',
      'processing', 
      'completed',
      'failed',
      'cancelled'
    );
  END IF;
END $$;

-- Create wallet_withdrawals table
CREATE TABLE IF NOT EXISTS public.wallet_withdrawals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  wallet_id UUID NOT NULL REFERENCES public.wallets(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  amount DECIMAL(15, 2) NOT NULL CHECK (amount > 0),
  status public.wallet_withdrawal_status NOT NULL DEFAULT 'pending',
  
  -- Bank transfer details
  target_bank_name TEXT,
  target_account_number TEXT,
  target_account_holder TEXT,
  transfer_reference TEXT,
  
  -- Additional info
  notes TEXT,
  failure_reason TEXT,
  
  -- Timestamps
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  processed_at TIMESTAMPTZ,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Create indexes for efficient querying
CREATE INDEX IF NOT EXISTS idx_wallet_withdrawals_wallet_id ON public.wallet_withdrawals(wallet_id);
CREATE INDEX IF NOT EXISTS idx_wallet_withdrawals_user_id ON public.wallet_withdrawals(user_id);
CREATE INDEX IF NOT EXISTS idx_wallet_withdrawals_status ON public.wallet_withdrawals(status);
CREATE INDEX IF NOT EXISTS idx_wallet_withdrawals_created_at ON public.wallet_withdrawals(created_at DESC);

-- Enable RLS
ALTER TABLE public.wallet_withdrawals ENABLE ROW LEVEL SECURITY;

-- Drop existing policies if they exist
DROP POLICY IF EXISTS "Users can view their own withdrawals" ON public.wallet_withdrawals;
DROP POLICY IF EXISTS "Users can create withdrawals for their wallets" ON public.wallet_withdrawals;
DROP POLICY IF EXISTS "Users can cancel their pending withdrawals" ON public.wallet_withdrawals;

-- RLS Policies
-- Users can view their own withdrawals
CREATE POLICY "Users can view their own withdrawals"
  ON public.wallet_withdrawals
  FOR SELECT
  USING (auth.uid() = user_id);

-- Users can create withdrawals for their own wallets
CREATE POLICY "Users can create withdrawals for their wallets"
  ON public.wallet_withdrawals
  FOR INSERT
  WITH CHECK (
    auth.uid() = user_id 
    AND EXISTS (
      SELECT 1 FROM public.wallets 
      WHERE id = wallet_id AND user_id = auth.uid()
    )
  );

-- Users can cancel their own pending withdrawals
CREATE POLICY "Users can cancel their pending withdrawals"
  ON public.wallet_withdrawals
  FOR UPDATE
  USING (
    auth.uid() = user_id 
    AND status = 'pending'
  )
  WITH CHECK (
    status = 'cancelled'
  );

-- Create updated_at trigger function if it doesn't exist
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create updated_at trigger
DROP TRIGGER IF EXISTS update_wallet_withdrawals_updated_at ON public.wallet_withdrawals;

CREATE TRIGGER update_wallet_withdrawals_updated_at
  BEFORE UPDATE ON public.wallet_withdrawals
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();

-- ============================================
-- MOCK BANK TRANSFER AUTO-PROCESSING
-- ============================================
-- This trigger simulates instant bank transfer processing for development.
-- In production, this would be replaced with actual payment gateway integration.
--
-- MOCK BEHAVIOR:
-- 1. When a withdrawal is inserted, it's immediately marked as 'processing'
-- 2. After a brief moment, it's marked as 'completed' with a mock reference number
-- 3. The wallet balance is deducted
-- 
-- For production, remove this trigger and implement:
-- - Queue-based processing
-- - Webhook handlers for payment gateway callbacks
-- - Manual admin approval workflow
-- ============================================

CREATE OR REPLACE FUNCTION public.fn_mock_process_wallet_withdrawal()
RETURNS TRIGGER AS $$
DECLARE
  v_wallet_balance DECIMAL(15, 2);
  v_mock_reference TEXT;
BEGIN
  -- Get current wallet balance
  SELECT balance INTO v_wallet_balance
  FROM public.wallets
  WHERE id = NEW.wallet_id;

  -- Validate sufficient balance
  IF v_wallet_balance < NEW.amount THEN
    NEW.status := 'failed';
    NEW.failure_reason := 'Insufficient wallet balance';
    NEW.processed_at := NOW();
    RETURN NEW;
  END IF;

  -- Generate mock transfer reference
  v_mock_reference := 'MOCK-' || UPPER(SUBSTRING(gen_random_uuid()::TEXT FROM 1 FOR 8));

  -- MOCK: Instantly process the withdrawal
  NEW.status := 'completed';
  NEW.transfer_reference := v_mock_reference;
  NEW.notes := COALESCE(NEW.notes || ' | ', '') || '[MOCK] Auto-processed bank transfer';
  NEW.processed_at := NOW();

  -- Deduct from wallet balance
  UPDATE public.wallets
  SET 
    balance = balance - NEW.amount,
    updated_at = NOW()
  WHERE id = NEW.wallet_id;

  -- Create transaction record
  INSERT INTO public.wallet_transactions (
    wallet_id,
    user_id,
    type,
    amount,
    balance_change,
    balance_after,
    status,
    reference_id,
    reference_type,
    description,
    completed_at
  ) VALUES (
    NEW.wallet_id,
    NEW.user_id,
    'withdrawal',
    NEW.amount,
    -NEW.amount,
    v_wallet_balance - NEW.amount,
    'success',
    NEW.id,
    'wallet_withdrawal',
    'Withdrawal to ' || NEW.target_bank_name || ' - ' || NEW.target_account_number,
    NOW()
  );

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Apply mock processing trigger
DROP TRIGGER IF EXISTS trg_mock_process_wallet_withdrawal ON public.wallet_withdrawals;

CREATE TRIGGER trg_mock_process_wallet_withdrawal
  BEFORE INSERT ON public.wallet_withdrawals
  FOR EACH ROW
  EXECUTE FUNCTION public.fn_mock_process_wallet_withdrawal();

-- Grant permissions
GRANT SELECT, INSERT, UPDATE ON public.wallet_withdrawals TO authenticated;

-- Add comment
COMMENT ON TABLE public.wallet_withdrawals IS 'Tracks wallet withdrawal requests with bank transfer details and status. Uses MOCK auto-processing in development.';

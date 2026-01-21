-- ============================================
-- WALLETS SCHEMA
-- Multi-wallet system: Main wallet + Campaign wallets
-- ============================================

-- Create wallet type enum
CREATE TYPE wallet_type AS ENUM ('main', 'campaign');

-- Create wallets table
CREATE TABLE IF NOT EXISTS wallets (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    type wallet_type NOT NULL DEFAULT 'main',
    balance NUMERIC(15, 2) NOT NULL DEFAULT 0 CHECK (balance >= 0),
    campaign_id UUID REFERENCES campaigns(id) ON DELETE CASCADE,
    bank_name TEXT,
    bank_account_number TEXT,
    bank_account_holder TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ,
    
    -- Constraints
    CONSTRAINT wallet_campaign_unique UNIQUE (campaign_id),
    CONSTRAINT wallet_main_unique UNIQUE (user_id, type) 
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT wallet_campaign_requires_campaign_id 
        CHECK (type != 'campaign' OR campaign_id IS NOT NULL),
    CONSTRAINT wallet_main_no_campaign_id 
        CHECK (type != 'main' OR campaign_id IS NULL)
);

-- Create wallet_transactions table
CREATE TYPE wallet_transaction_type AS ENUM (
    'topup', 
    'donationSent', 
    'donationReceived', 
    'withdrawal', 
    'platformFee', 
    'refund'
);

CREATE TYPE wallet_transaction_status AS ENUM (
    'pending', 
    'success', 
    'failed', 
    'cancelled'
);

CREATE TABLE IF NOT EXISTS wallet_transactions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    wallet_id UUID NOT NULL REFERENCES wallets(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    type wallet_transaction_type NOT NULL,
    amount NUMERIC(15, 2) NOT NULL CHECK (amount > 0),
    balance_change NUMERIC(15, 2) NOT NULL,
    balance_after NUMERIC(15, 2) NOT NULL,
    status wallet_transaction_status NOT NULL DEFAULT 'pending',
    reference_id UUID,
    reference_type TEXT,
    description TEXT,
    payment_id TEXT,
    payment_method TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    completed_at TIMESTAMPTZ
);

-- Indexes
CREATE INDEX idx_wallets_user_id ON wallets(user_id);
CREATE INDEX idx_wallets_campaign_id ON wallets(campaign_id) WHERE campaign_id IS NOT NULL;
CREATE INDEX idx_wallets_type ON wallets(type);
CREATE INDEX idx_wallet_transactions_wallet_id ON wallet_transactions(wallet_id);
CREATE INDEX idx_wallet_transactions_user_id ON wallet_transactions(user_id);
CREATE INDEX idx_wallet_transactions_status ON wallet_transactions(status);
CREATE INDEX idx_wallet_transactions_created_at ON wallet_transactions(created_at DESC);

-- ============================================
-- TRIGGER: Auto-create campaign wallet when campaign is created
-- ============================================
CREATE OR REPLACE FUNCTION create_campaign_wallet()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO wallets (user_id, type, campaign_id, balance)
    VALUES (NEW.user_id, 'campaign', NEW.id, 0);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER trigger_create_campaign_wallet
    AFTER INSERT ON campaigns
    FOR EACH ROW
    EXECUTE FUNCTION create_campaign_wallet();

-- ============================================
-- TRIGGER: Auto-create main wallet when user signs up
-- ============================================
CREATE OR REPLACE FUNCTION create_main_wallet()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO wallets (user_id, type, balance)
    VALUES (NEW.id, 'main', 0)
    ON CONFLICT (user_id, type) DO NOTHING;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- This trigger should be on user_profiles since auth.users is managed by Supabase
CREATE TRIGGER trigger_create_main_wallet
    AFTER INSERT ON user_profiles
    FOR EACH ROW
    EXECUTE FUNCTION create_main_wallet();

-- ============================================
-- RLS POLICIES
-- ============================================
ALTER TABLE wallets ENABLE ROW LEVEL SECURITY;
ALTER TABLE wallet_transactions ENABLE ROW LEVEL SECURITY;

-- Wallets policies
CREATE POLICY "Users can view their own wallets"
    ON wallets FOR SELECT
    USING (auth.uid() = user_id);

CREATE POLICY "Users can update their own wallets bank details"
    ON wallets FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- Service role can insert wallets (for triggers)
CREATE POLICY "Service can insert wallets"
    ON wallets FOR INSERT
    WITH CHECK (true);

-- Transactions policies
CREATE POLICY "Users can view their own transactions"
    ON wallet_transactions FOR SELECT
    USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own transactions"
    ON wallet_transactions FOR INSERT
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own transactions"
    ON wallet_transactions FOR UPDATE
    USING (auth.uid() = user_id);

-- ============================================
-- MIGRATE EXISTING DATA
-- ============================================

-- Create main wallets for existing users who don't have one
INSERT INTO wallets (user_id, type, balance)
SELECT id, 'main', 0
FROM auth.users
WHERE id NOT IN (SELECT user_id FROM wallets WHERE type = 'main')
ON CONFLICT DO NOTHING;

-- Create campaign wallets for existing campaigns
INSERT INTO wallets (user_id, type, campaign_id, balance, bank_name, bank_account_number, bank_account_holder)
SELECT 
    user_id, 
    'campaign', 
    id, 
    current_balance,
    withdrawal_bank_name,
    withdrawal_account_number,
    withdrawal_account_holder
FROM campaigns
WHERE id NOT IN (SELECT campaign_id FROM wallets WHERE campaign_id IS NOT NULL)
ON CONFLICT DO NOTHING;

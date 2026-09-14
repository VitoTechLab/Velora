# Campaign & Wallet System Architecture

This document outlines the technical implementation of the Campaign and Wallet systems in Velora, focusing on how they interact to handle donations, fund management, and transparency.

## 1. High-Level Architecture

The system uses a **Dual-Wallet Architecture**:
1.  **Main Wallet**: Every user has a personal wallet for storing funds (top-ups) and making donations.
2.  **Campaign Wallet**: Every campaign has a dedicated wallet that receives donations.

Flow: `User Main Wallet` -> `Donation Transaction` -> `Campaign Wallet`

```mermaid
graph TD
    User[User] -->|Top Up| MainWallet[Main Wallet]
    MainWallet -->|Donation (with Fee)| CampaignWallet[Campaign Wallet]
    CampaignWallet -->|Withdrawal| BankAccount[Bank Account]
    
    subgraph Database Triggers
    Campaign[Campaign Table] -.->|Auto-Create| CampaignWallet
    Donation[Donation Table] -.->|Update Stats| Campaign
    end
```

---

## 2. Database Schema (Supabase/PostgreSQL)

### A. Campaigns Table (`public.campaigns`)
Stores the core campaign data.
*   **Key Columns**: `id`, `user_id`, `current_balance`, `target_amount`, `amount_raised`, `donor_count`.
*   **Source**: `supabase/migrations/20260117084546_create_campaigns_table.sql`

### B. Wallets Table (`public.wallets`)
Unified table for both user and campaign wallets.
*   **Enum**: `wallet_type` ('main', 'campaign').
*   **Constraint**: A wallet must have either a `user_id` (Main) or a `campaign_id` (Campaign).
*   **Source**: `supabase/migrations/20260122185500_create_wallet_schema.sql`

### C. Wallet Transactions (`public.wallet_transactions`)
Ledger of all money movements.
*   **Types**: `topup`, `donationSent`, `donationReceived`, `withdrawal`, `platformFee`, `refund`.
*   **Source**: `supabase/migrations/20260122185500_create_wallet_schema.sql`

---

## 3. Critical Database Functions & Triggers

These database objects automate data consistency and business rules.

### 1. Auto-Create Campaign Wallet
**Trigger**: `trigger_create_campaign_wallet`
**Function**: `public.create_campaign_wallet()`
**Behavior**: When a row is inserted into `campaigns`, this trigger immediately creates a corresponding `wallet` of type `campaign`.
**File**: `supabase/migrations/20260122185500_create_wallet_schema.sql`

### 2. Auto-Update Campaign Stats (Donations)
**Trigger**: `trg_on_donation_success_v2`
**Function**: `public.fn_on_donation_success_v2()`
**Behavior**: When a `donation` status changes to `'success'`, this function increments the campaign's `amount_raised`, `current_balance`, and `donor_count`.
**File**: `supabase/migrations/20260122221000_fix_donation_trigger.sql`

### 3. Global Search
**Function**: `public.search_campaigns` & `public.search_app`
**Behavior**: Advanced search using PostgreSQL full-text search and trigram similarity to find campaigns by title or description.
**File**: `supabase/migrations/20260117085601_create_search_schema_policies.sql`

---

## 4. Critical Code Paths (Dart/Flutter)

### A. Processing Donations (The "Glue")
The detailed logic for moving money from User -> Campaign is handled in `WalletRepositoryImpl`.

**File**: `lib/features/wallet/data/repositories/wallet_repository_impl.dart`
**Method**: `processDonation`

**Logic Flow:**
1.  **Validation**: checks source balance and existence of wallets.
2.  **Fee Calculation**: Calculates platform fee (e.g., 5%).
3.  **Debit Source**: Updates User Wallet (`balance` - `amount`).
4.  **Credit Destination**: Updates Campaign Wallet (`balance` + `net_amount`).
5.  **Ledger Entries**: Creates 3 transactions:
    *   `donationSent` (User)
    *   `donationReceived` (Campaign)
    *   `platformFee` (System)

### B. Remote Data Sources
These classes handle the raw SQL/Supabase interactions.

*   **Wallet**: `lib/features/wallet/data/datasources/wallet_remote_datasource_impl.dart`
    *   Handles `createTransaction`, `updateWalletBalance`, `getWalletById`.
*   **Campaign**: `lib/features/campaign/data/datasources/campaign_remote_datasource_impl.dart`
    *   Handles `createCampaign`, `getCampaignById` (with joins for user profile/category).

---

## 5. Directory of Critical Files

| Component | File Path |
| :--- | :--- |
| **Wallet Repo** | `lib/features/wallet/data/repositories/wallet_repository_impl.dart` |
| **Campaign DS** | `lib/features/campaign/data/datasources/campaign_remote_datasource_impl.dart` |
| **Wallet Schema** | `supabase/migrations/20260122185500_create_wallet_schema.sql` |
| **Donation Trigger** | `supabase/migrations/20260122221000_fix_donation_trigger.sql` |
| **Search Function** | `supabase/migrations/20260117085601_create_search_schema_policies.sql` |

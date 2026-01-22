-- ===========================================================================
-- FIX: CAMPAIGNS RLS POLICIES
-- ===========================================================================
-- This migration fixes the RLS policies for campaigns table

-- Drop existing policies to avoid conflicts
DROP POLICY IF EXISTS "Public view active campaigns" ON public.campaigns;
DROP POLICY IF EXISTS "Users create campaigns" ON public.campaigns;
DROP POLICY IF EXISTS "Owners update campaigns" ON public.campaigns;
DROP POLICY IF EXISTS "Anyone can view campaigns" ON public.campaigns;

-- Ensure RLS is enabled
ALTER TABLE public.campaigns ENABLE ROW LEVEL SECURITY;

-- Anyone can view active campaigns (including anonymous users)
-- Also allows owners to see their own campaigns regardless of status
CREATE POLICY "Anyone can view campaigns" ON public.campaigns 
  FOR SELECT USING (status = 'active' OR user_id = auth.uid());

-- Authenticated users can create campaigns
CREATE POLICY "Users create campaigns" ON public.campaigns 
  FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

-- Owners can update their own campaigns
CREATE POLICY "Owners update campaigns" ON public.campaigns 
  FOR UPDATE TO authenticated USING (user_id = auth.uid());

-- Grant table permissions
GRANT SELECT ON public.campaigns TO anon, authenticated;
GRANT INSERT, UPDATE ON public.campaigns TO authenticated;

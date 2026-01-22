-- ===========================================================================
-- ADD UPDATE POLICY FOR DONATIONS TABLE
-- ===========================================================================
-- This migration adds the missing UPDATE policy that allows users to update
-- their own donation status (e.g., when confirming payment transfer)

-- Drop existing update policy if it exists
DROP POLICY IF EXISTS "User update own donations" ON public.donations;

-- User can update their own donations (for status updates like confirming transfer)
CREATE POLICY "User update own donations" ON public.donations 
  FOR UPDATE TO authenticated 
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- Grant UPDATE permission
GRANT UPDATE ON public.donations TO authenticated;

-- ===========================================================================
-- FIX: DONATION SUCCESS TRIGGER FUNCTION
-- ===========================================================================
-- This migration fixes the trigger function that updates campaign stats
-- when a donation is marked as successful.
-- 
-- The issue: The trigger function needs to properly bypass RLS and have
-- the correct search path to update campaigns table.

-- Drop and recreate the trigger function with proper settings
CREATE OR REPLACE FUNCTION public.fn_on_donation_success_v2()
RETURNS TRIGGER 
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  -- Log for debugging (can be removed in production)
  RAISE NOTICE 'Donation trigger fired: id=%, status=%, amount=%', 
    NEW.id, NEW.payment_status, NEW.amount_total;
  
  -- Only run if status is success (trigger WHEN clause handles old status check)
  IF NEW.payment_status = 'success' THEN
    UPDATE public.campaigns
    SET 
        amount_raised = COALESCE(amount_raised, 0) + NEW.amount_total,
        current_balance = COALESCE(current_balance, 0) + NEW.amount_net,
        donor_count = COALESCE(donor_count, 0) + 1,
        updated_at = NOW()
    WHERE id = NEW.campaign_id;
    
    RAISE NOTICE 'Campaign % updated: +% raised', NEW.campaign_id, NEW.amount_total;
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Ensure the function is owned by postgres (or appropriate superuser)
-- This ensures SECURITY DEFINER has full permissions
ALTER FUNCTION public.fn_on_donation_success_v2() OWNER TO postgres;

-- Recreate triggers to ensure they use the updated function
DROP TRIGGER IF EXISTS trg_on_donation_success_v2 ON public.donations;
DROP TRIGGER IF EXISTS trg_on_donation_insert_success ON public.donations;

-- Trigger for UPDATE (status change to success)
CREATE TRIGGER trg_on_donation_success_v2
AFTER UPDATE ON public.donations
FOR EACH ROW 
WHEN (NEW.payment_status = 'success' AND OLD.payment_status IS DISTINCT FROM 'success')
EXECUTE FUNCTION public.fn_on_donation_success_v2();

-- Trigger for INSERT with status = success (direct insert case)
CREATE TRIGGER trg_on_donation_insert_success
AFTER INSERT ON public.donations
FOR EACH ROW
WHEN (NEW.payment_status = 'success')
EXECUTE FUNCTION public.fn_on_donation_success_v2();

-- Grant execute permission on the function
GRANT EXECUTE ON FUNCTION public.fn_on_donation_success_v2() TO authenticated;

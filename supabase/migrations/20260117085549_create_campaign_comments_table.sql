-- ===========================================================================
-- CAMPAIGN COMMENTS TABLE
-- ===========================================================================

-- 1. TABLE STRUCTURE
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaign_comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  campaign_id UUID NOT NULL REFERENCES public.campaigns(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  comment_text TEXT NOT NULL,
  parent_id UUID REFERENCES public.campaign_comments(id), -- Threaded comments
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. RLS POLICIES
-- ---------------------------------------------------------------------------
ALTER TABLE public.campaign_comments ENABLE ROW LEVEL SECURITY;

-- Drop existing policies to avoid conflicts
DROP POLICY IF EXISTS "Public read comments" ON public.campaign_comments;
DROP POLICY IF EXISTS "Authenticated users comment" ON public.campaign_comments;
DROP POLICY IF EXISTS "Users delete own comments" ON public.campaign_comments;

-- Everyone can read comments
CREATE POLICY "Public read comments" ON public.campaign_comments
  FOR SELECT USING (true);

-- Authenticated users can comment
CREATE POLICY "Authenticated users comment" ON public.campaign_comments
  FOR INSERT TO authenticated WITH CHECK (auth.uid() = user_id);

-- Users can delete their own comments
CREATE POLICY "Users delete own comments" ON public.campaign_comments
  FOR DELETE TO authenticated USING (auth.uid() = user_id);

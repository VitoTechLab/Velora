-- ===========================================================================
-- FIX: CREATE CAMPAIGN CATEGORIES TABLE IF NOT EXISTS
-- ===========================================================================
-- This migration ensures the campaign_categories table exists with sample data

-- 1. TABLE STRUCTURE
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.campaign_categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  slug TEXT NOT NULL UNIQUE,
  icon_name TEXT, -- Flutter icon reference (Material Icons name)
  description TEXT, -- Category description
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. SEED DATA - 5 Crowdfunding Categories
-- ---------------------------------------------------------------------------
INSERT INTO public.campaign_categories (name, slug, icon_name, description) VALUES
  ('Medical & Health', 'medical', 'medical_services', 'Healthcare expenses, medical treatments, surgeries, and health-related emergencies'),
  ('Education', 'education', 'school', 'Tuition fees, scholarships, school supplies, and educational programs'),
  ('Emergency Relief', 'emergency', 'warning_amber', 'Natural disasters, accidents, urgent situations requiring immediate help'),
  ('Community & Social', 'community', 'groups', 'Community projects, social causes, local initiatives, and public welfare'),
  ('Creative & Arts', 'creative', 'palette', 'Art projects, music, films, creative endeavors, and cultural initiatives')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  icon_name = EXCLUDED.icon_name,
  description = EXCLUDED.description;

-- 3. RLS POLICIES
-- ---------------------------------------------------------------------------
ALTER TABLE public.campaign_categories ENABLE ROW LEVEL SECURITY;

-- Drop existing policy if exists (to avoid conflicts)
DROP POLICY IF EXISTS "Public read categories" ON public.campaign_categories;

-- Public read access - anyone can view categories
CREATE POLICY "Public read categories" ON public.campaign_categories
  FOR SELECT USING (true);

-- 4. INDEXES
-- ---------------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_campaign_categories_slug ON public.campaign_categories(slug);
CREATE INDEX IF NOT EXISTS idx_campaign_categories_is_active ON public.campaign_categories(is_active);

-- 5. GRANT PERMISSIONS
-- ---------------------------------------------------------------------------
GRANT SELECT ON public.campaign_categories TO authenticated, anon;

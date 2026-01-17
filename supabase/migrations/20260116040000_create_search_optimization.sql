BEGIN;

-- ===========================================================================
-- GLOBAL SEARCH & DISCOVERY V2
-- ===========================================================================
-- 1. Enable Full Text Search & Fuzzy Search Extensions
-- 2. Create Optimized Indexes (GIN Trigram)
-- 3. Unified "search_app" RPC function for instant results across entities
-- ===========================================================================

CREATE EXTENSION IF NOT EXISTS pg_trgm;

-- 1. INDEXES (Make Search Fast)
-- ---------------------------------------------------------------------------

-- Campaign Indexes
CREATE INDEX IF NOT EXISTS idx_campaigns_title_trgm 
  ON public.campaigns USING gin (title gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_campaigns_desc_trgm 
  ON public.campaigns USING gin (description gin_trgm_ops);

-- Feed Posts Indexes (Caption)
CREATE INDEX IF NOT EXISTS idx_feed_posts_caption_trgm 
  ON public.feed_posts USING gin (caption gin_trgm_ops);

-- User Profiles Indexes (Already created in Profile V2, but good for reference)
-- public.user_profiles (username gin_trgm_ops)
-- public.user_profiles (full_name gin_trgm_ops)

-- 2. FUNCTIONS
-- ---------------------------------------------------------------------------

-- 2.1 USERS SEARCH (Strategic Scope)
-- Scope: 'global' (All), 'following' (My Network), 'followers' (Following Me)
CREATE OR REPLACE FUNCTION public.search_users(
  query_text TEXT,
  search_scope TEXT DEFAULT 'global',
  limit_count INT DEFAULT 10
)
RETURNS TABLE (
  id UUID,
  username TEXT,
  full_name TEXT,
  avatar_url TEXT,
  is_verified BOOLEAN,
  is_following BOOLEAN,
  relationship TEXT
)
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
DECLARE
  clean_query TEXT;
  current_uid UUID := auth.uid();
BEGIN
  clean_query := lower(trim(query_text));
  
  RETURN QUERY
  SELECT 
    up.id, 
    up.username, 
    up.full_name, 
    up.avatar_url, 
    up.is_verified,
    (EXISTS (SELECT 1 FROM public.user_follows uf WHERE uf.follower_id = current_uid AND uf.following_id = up.id)) as is_following,
    CASE 
      WHEN EXISTS (SELECT 1 FROM public.user_follows uf WHERE uf.follower_id = up.id AND uf.following_id = current_uid) THEN 'follower'
      ELSE 'none'
    END as relationship
  FROM public.user_profiles up
  WHERE 
    -- 1. Search Match
    (lower(up.username) LIKE '%' || clean_query || '%' OR lower(up.full_name) LIKE '%' || clean_query || '%')
    
    -- 2. Scope Logic
    AND (
      CASE 
        WHEN search_scope = 'following' THEN 
          EXISTS (SELECT 1 FROM public.user_follows uf WHERE uf.follower_id = current_uid AND uf.following_id = up.id)
        WHEN search_scope = 'followers' THEN 
          EXISTS (SELECT 1 FROM public.user_follows uf WHERE uf.follower_id = up.id AND uf.following_id = current_uid)
        ELSE TRUE -- 'global'
      END
    )
    
    -- 3. Exclude Blocked (Privacy Policy)
    AND NOT EXISTS (
       SELECT 1 FROM public.user_blocks ub 
       WHERE (ub.blocker_id = current_uid AND ub.blocked_id = up.id) 
          OR (ub.blocker_id = up.id AND ub.blocked_id = current_uid)
    )
    
  ORDER BY 
    up.is_verified DESC, 
    similarity(up.username, clean_query) DESC
  LIMIT limit_count;
END;
$$;

-- 2.2 CAMPAIGNS SEARCH (Category Filter)
CREATE OR REPLACE FUNCTION public.search_campaigns(
  query_text TEXT,
  p_category_id UUID DEFAULT NULL,
  limit_count INT DEFAULT 10
)
RETURNS TABLE (
  id UUID,
  title TEXT,
  cover_image_url TEXT,
  amount_raised NUMERIC,
  target_amount NUMERIC,
  organizer_username TEXT,
  category_name TEXT
)
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
DECLARE
  clean_query TEXT;
BEGIN
  clean_query := lower(trim(query_text));

  RETURN QUERY
  SELECT 
    c.id, 
    c.title, 
    c.cover_image_url, 
    c.amount_raised, 
    c.target_amount, 
    up.username,
    cat.name
  FROM public.campaigns c
  JOIN public.user_profiles up ON c.user_id = up.id
  LEFT JOIN public.campaign_categories cat ON c.category_id = cat.id
  WHERE 
    c.status = 'active'
    AND (lower(c.title) LIKE '%' || clean_query || '%' OR lower(c.description) LIKE '%' || clean_query || '%')
    AND (p_category_id IS NULL OR c.category_id = p_category_id)
  ORDER BY similarity(c.title, clean_query) DESC
  LIMIT limit_count;
END;
$$;

-- 2.3 UNIFIED SEARCH (The "Super Search" Function)
-- Used by: user_search_screen.dart (Default View)
CREATE OR REPLACE FUNCTION public.search_app(
  query_text TEXT, 
  limit_count INT DEFAULT 5
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  result_users JSONB;
  result_campaigns JSONB;
  result_posts JSONB;
BEGIN
  -- A. SEARCH USERS (Reuse logic implicitly or query directly for speed)
  SELECT jsonb_agg(t) INTO result_users FROM (
    SELECT * FROM public.search_users(query_text, 'global', limit_count)
  ) t;

  -- B. SEARCH CAMPAIGNS
  SELECT jsonb_agg(t) INTO result_campaigns FROM (
    SELECT * FROM public.search_campaigns(query_text, NULL, limit_count)
  ) t;

  -- C. SEARCH POSTS (Keep logic inline for quick caption search)
  SELECT jsonb_agg(t) INTO result_posts FROM (
    SELECT 
      fp.id, 
      fp.caption, 
      fp.media_urls,
      fp.created_at, 
      up.username, 
      up.avatar_url,
      similarity(fp.caption, lower(trim(query_text))) as sim_score
    FROM public.feed_posts fp
    JOIN public.user_profiles up ON fp.user_id = up.id
    WHERE 
      fp.is_active = TRUE AND 
      up.is_private = FALSE AND 
      lower(fp.caption) LIKE '%' || lower(trim(query_text)) || '%'
    ORDER BY fp.created_at DESC
    LIMIT limit_count
  ) t;

  -- Return Combined Result
  RETURN jsonb_build_object(
    'users', COALESCE(result_users, '[]'::jsonb),
    'campaigns', COALESCE(result_campaigns, '[]'::jsonb),
    'posts', COALESCE(result_posts, '[]'::jsonb)
  );
END;
$$;
    ORDER BY fp.created_at DESC -- Berita terbaru dulu jika relevan
    LIMIT limit_count
  ) t;

  -- Return Combined Result
  RETURN jsonb_build_object(
    'users', COALESCE(result_users, '[]'::jsonb),
    'campaigns', COALESCE(result_campaigns, '[]'::jsonb),
    'posts', COALESCE(result_posts, '[]'::jsonb)
  );
END;
$$;

-- Grant Execution to App Users
GRANT EXECUTE ON FUNCTION public.search_app(TEXT, INT) TO authenticated;
GRANT EXECUTE ON FUNCTION public.search_app(TEXT, INT) TO anon; 

GRANT EXECUTE ON FUNCTION public.search_users(TEXT, TEXT, INT) TO authenticated;
GRANT EXECUTE ON FUNCTION public.search_campaigns(TEXT, UUID, INT) TO authenticated;

COMMIT;

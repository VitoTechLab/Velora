BEGIN;

-- ===========================================================================
-- FEED SCHEMA V2 (Consolidated & Optimized)
-- ===========================================================================
-- Changes & Optimizations:
-- 1. Added "pgcrypto" extension check (Critical for UUIDs).
-- 2. Security: Added "SET search_path = public" to all SECURITY DEFINER functions.
-- 3. Robustness: Added DROP TRIGGER/POLICY IF EXISTS to preventing migration collisions.
-- 4. Logic: Enforced "allow_share" setting in Share RLS.
-- 5. Logic: Counters now handle INSERT/DELETE in single triggers.
-- ===========================================================================

CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- 1. TABLES
-- ---------------------------------------------------------------------------

-- 1.1 POSTS
CREATE TABLE IF NOT EXISTS public.feed_posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  
  -- Content
  caption TEXT,
  media_urls TEXT[] DEFAULT '{}',
  location JSONB,
  tags TEXT[] DEFAULT '{}',
  mention_ids UUID[] DEFAULT '{}',
  
  -- Settings
  allow_comments BOOLEAN DEFAULT TRUE,
  allow_share BOOLEAN DEFAULT TRUE,
  is_active BOOLEAN DEFAULT TRUE,
  campaign_title TEXT,
  
  -- Counters (Denormalized)
  likes_count INTEGER NOT NULL DEFAULT 0,
  comments_count INTEGER NOT NULL DEFAULT 0,
  shares_count INTEGER NOT NULL DEFAULT 0,
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 1.2 POST INTERACTIONS
CREATE TABLE IF NOT EXISTS public.feed_post_likes (
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (post_id, user_id)
);

CREATE TABLE IF NOT EXISTS public.feed_post_bookmarks (
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (post_id, user_id)
);

CREATE TABLE IF NOT EXISTS public.feed_post_shares (
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (post_id, user_id)
);

-- 1.3 COMMENTS (Threaded)
CREATE TABLE IF NOT EXISTS public.feed_comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  parent_comment_id UUID REFERENCES public.feed_comments(id) ON DELETE CASCADE,
  
  content TEXT NOT NULL,
  mention_ids UUID[] DEFAULT '{}',
  is_active BOOLEAN DEFAULT TRUE,
  
  -- Counters
  likes_count INTEGER NOT NULL DEFAULT 0,
  reply_count INTEGER NOT NULL DEFAULT 0,
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 1.4 COMMENT INTERACTIONS
CREATE TABLE IF NOT EXISTS public.feed_comment_likes (
  comment_id UUID NOT NULL REFERENCES public.feed_comments(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (comment_id, user_id)
);

-- 2. INDEXING STRATEGY
-- ---------------------------------------------------------------------------

-- 2.1 Pagination
CREATE INDEX IF NOT EXISTS idx_feed_posts_pagination 
  ON public.feed_posts (created_at DESC, id DESC);

CREATE INDEX IF NOT EXISTS idx_feed_comments_pagination 
  ON public.feed_comments (post_id, created_at DESC, id DESC);

-- 2.2 Checks & Lookups
CREATE INDEX IF NOT EXISTS idx_feed_comments_parent 
  ON public.feed_comments (parent_comment_id) 
  WHERE parent_comment_id IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_feed_posts_user ON public.feed_posts(user_id);
CREATE INDEX IF NOT EXISTS idx_feed_post_likes_user ON public.feed_post_likes(user_id);
CREATE INDEX IF NOT EXISTS idx_feed_post_bookmarks_user ON public.feed_post_bookmarks(user_id);

-- 3. ATOMIC RPCs (Toggles)
-- ---------------------------------------------------------------------------

-- 3.1 Toggle Post Like
CREATE OR REPLACE FUNCTION public.toggle_post_like(p_post_id UUID)
RETURNS BOOLEAN 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public 
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_exists BOOLEAN;
BEGIN
  DELETE FROM public.feed_post_likes 
  WHERE post_id = p_post_id AND user_id = v_uid;
  
  GET DIAGNOSTICS v_exists = ROW_COUNT;
  IF v_exists > 0 THEN RETURN FALSE; END IF;

  INSERT INTO public.feed_post_likes (post_id, user_id)
  VALUES (p_post_id, v_uid)
  ON CONFLICT DO NOTHING;
  
  RETURN TRUE;
END;
$$;

-- 3.2 Toggle Bookmark
CREATE OR REPLACE FUNCTION public.toggle_post_bookmark(p_post_id UUID)
RETURNS BOOLEAN 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public 
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_exists BOOLEAN;
BEGIN
  DELETE FROM public.feed_post_bookmarks 
  WHERE post_id = p_post_id AND user_id = v_uid;
  
  GET DIAGNOSTICS v_exists = ROW_COUNT;
  IF v_exists > 0 THEN RETURN FALSE; END IF;

  INSERT INTO public.feed_post_bookmarks (post_id, user_id)
  VALUES (p_post_id, v_uid)
  ON CONFLICT DO NOTHING;
  
  RETURN TRUE;
END;
$$;

-- 3.3 Toggle Comment Like
CREATE OR REPLACE FUNCTION public.toggle_comment_like(p_comment_id UUID)
RETURNS BOOLEAN 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public 
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_exists BOOLEAN;
BEGIN
  DELETE FROM public.feed_comment_likes 
  WHERE comment_id = p_comment_id AND user_id = v_uid;
  
  GET DIAGNOSTICS v_exists = ROW_COUNT;
  IF v_exists > 0 THEN RETURN FALSE; END IF;

  INSERT INTO public.feed_comment_likes (comment_id, user_id)
  VALUES (p_comment_id, v_uid)
  ON CONFLICT DO NOTHING;
  
  RETURN TRUE;
END;
$$;

-- 4. CONSOLIDATED TRIGGERS
-- ---------------------------------------------------------------------------

-- 4.1 Update Post Likes
CREATE OR REPLACE FUNCTION public.handle_post_like_count()
RETURNS TRIGGER 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public 
AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE public.feed_posts SET likes_count = likes_count + 1 WHERE id = NEW.post_id;
    RETURN NEW;
  ELSIF TG_OP = 'DELETE' THEN
    UPDATE public.feed_posts SET likes_count = GREATEST(likes_count - 1, 0) WHERE id = OLD.post_id;
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;

DROP TRIGGER IF EXISTS on_post_like_change ON public.feed_post_likes;
CREATE TRIGGER on_post_like_change
AFTER INSERT OR DELETE ON public.feed_post_likes
FOR EACH ROW EXECUTE FUNCTION public.handle_post_like_count();

-- 4.2 Update Post Shares
CREATE OR REPLACE FUNCTION public.handle_post_share_count()
RETURNS TRIGGER 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public 
AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE public.feed_posts SET shares_count = shares_count + 1 WHERE id = NEW.post_id;
    RETURN NEW;
  ELSIF TG_OP = 'DELETE' THEN
    UPDATE public.feed_posts SET shares_count = GREATEST(shares_count - 1, 0) WHERE id = OLD.post_id;
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;

DROP TRIGGER IF EXISTS on_post_share_change ON public.feed_post_shares;
CREATE TRIGGER on_post_share_change
AFTER INSERT OR DELETE ON public.feed_post_shares
FOR EACH ROW EXECUTE FUNCTION public.handle_post_share_count();

-- 4.3 Update Post Comments AND Reply Counts
CREATE OR REPLACE FUNCTION public.handle_comment_counts()
RETURNS TRIGGER 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public 
AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE public.feed_posts 
    SET comments_count = comments_count + 1 
    WHERE id = NEW.post_id;

    IF NEW.parent_comment_id IS NOT NULL THEN
      UPDATE public.feed_comments 
      SET reply_count = reply_count + 1 
      WHERE id = NEW.parent_comment_id;
    END IF;
    RETURN NEW;

  ELSIF TG_OP = 'DELETE' THEN
    UPDATE public.feed_posts 
    SET comments_count = GREATEST(comments_count - 1, 0) 
    WHERE id = OLD.post_id;

    IF OLD.parent_comment_id IS NOT NULL THEN
      UPDATE public.feed_comments 
      SET reply_count = GREATEST(reply_count - 1, 0) 
      WHERE id = OLD.parent_comment_id;
    END IF;
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;

DROP TRIGGER IF EXISTS on_comment_change ON public.feed_comments;
CREATE TRIGGER on_comment_change
AFTER INSERT OR DELETE ON public.feed_comments
FOR EACH ROW EXECUTE FUNCTION public.handle_comment_counts();

-- 4.4 Update Comment Likes
CREATE OR REPLACE FUNCTION public.handle_comment_like_count()
RETURNS TRIGGER 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public 
AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE public.feed_comments SET likes_count = likes_count + 1 WHERE id = NEW.comment_id;
    RETURN NEW;
  ELSIF TG_OP = 'DELETE' THEN
    UPDATE public.feed_comments SET likes_count = GREATEST(likes_count - 1, 0) WHERE id = OLD.comment_id;
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;

DROP TRIGGER IF EXISTS on_comment_like_change ON public.feed_comment_likes;
CREATE TRIGGER on_comment_like_change
AFTER INSERT OR DELETE ON public.feed_comment_likes
FOR EACH ROW EXECUTE FUNCTION public.handle_comment_like_count();

-- 5. ACCESS CONTROL (RLS)
-- ---------------------------------------------------------------------------
ALTER TABLE public.feed_posts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_comments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_post_likes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_post_bookmarks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_post_shares ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_comment_likes ENABLE ROW LEVEL SECURITY;

-- 5.1 POSTS POLICIES
DROP POLICY IF EXISTS "posts_select_auth" ON public.feed_posts;
CREATE POLICY "posts_select_auth" ON public.feed_posts
  FOR SELECT TO authenticated
  USING (
    public.can_view_user_content(user_id) 
    AND (is_active = TRUE OR user_id = auth.uid())
  );

DROP POLICY IF EXISTS "posts_insert_own" ON public.feed_posts;
CREATE POLICY "posts_insert_own" ON public.feed_posts
  FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "posts_update_own" ON public.feed_posts;
CREATE POLICY "posts_update_own" ON public.feed_posts
  FOR UPDATE TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "posts_delete_own" ON public.feed_posts;
CREATE POLICY "posts_delete_own" ON public.feed_posts
  FOR DELETE TO authenticated USING (user_id = auth.uid());

-- 5.2 COMMENTS POLICIES
DROP POLICY IF EXISTS "comments_select_auth" ON public.feed_comments;
CREATE POLICY "comments_select_auth" ON public.feed_comments
  FOR SELECT TO authenticated
  USING (
    (is_active = TRUE OR user_id = auth.uid()) AND
    EXISTS (
      SELECT 1 FROM public.feed_posts 
      WHERE id = post_id AND public.can_view_user_content(feed_posts.user_id)
    )
  );

DROP POLICY IF EXISTS "comments_insert_auth" ON public.feed_comments;
CREATE POLICY "comments_insert_auth" ON public.feed_comments
  FOR INSERT TO authenticated
  WITH CHECK (
    user_id = auth.uid() AND
    EXISTS (
      SELECT 1 FROM public.feed_posts 
      WHERE id = post_id 
      AND public.can_view_user_content(feed_posts.user_id)
      AND (allow_comments = TRUE OR feed_posts.user_id = auth.uid())
    )
  );

DROP POLICY IF EXISTS "comments_delete_own_or_post_owner" ON public.feed_comments;
CREATE POLICY "comments_delete_own_or_post_owner" ON public.feed_comments
  FOR DELETE TO authenticated
  USING (
    user_id = auth.uid() OR 
    EXISTS (SELECT 1 FROM public.feed_posts WHERE id = post_id AND user_id = auth.uid())
  );

-- 5.3 OTHER TABLES
-- Likes
DROP POLICY IF EXISTS "post_likes_select" ON public.feed_post_likes;
CREATE POLICY "post_likes_select" ON public.feed_post_likes FOR SELECT TO authenticated USING (TRUE);

DROP POLICY IF EXISTS "post_likes_insert" ON public.feed_post_likes;
CREATE POLICY "post_likes_insert" ON public.feed_post_likes FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "post_likes_delete" ON public.feed_post_likes;
CREATE POLICY "post_likes_delete" ON public.feed_post_likes FOR DELETE TO authenticated USING (user_id = auth.uid());

-- Bookmarks
DROP POLICY IF EXISTS "bookmarks_select_own" ON public.feed_post_bookmarks;
CREATE POLICY "bookmarks_select_own" ON public.feed_post_bookmarks FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "bookmarks_insert_own" ON public.feed_post_bookmarks;
CREATE POLICY "bookmarks_insert_own" ON public.feed_post_bookmarks FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "bookmarks_delete_own" ON public.feed_post_bookmarks;
CREATE POLICY "bookmarks_delete_own" ON public.feed_post_bookmarks FOR DELETE TO authenticated USING (user_id = auth.uid());

-- Shares
DROP POLICY IF EXISTS "shares_select" ON public.feed_post_shares;
CREATE POLICY "shares_select" ON public.feed_post_shares FOR SELECT TO authenticated USING (TRUE);

DROP POLICY IF EXISTS "shares_insert" ON public.feed_post_shares;
CREATE POLICY "shares_insert" ON public.feed_post_shares 
  FOR INSERT TO authenticated 
  WITH CHECK (
    user_id = auth.uid() AND
    EXISTS (
      SELECT 1 FROM public.feed_posts 
      WHERE id = post_id 
      AND allow_share = TRUE 
      AND public.can_view_user_content(feed_posts.user_id)
    )
  );

-- Comment Likes
DROP POLICY IF EXISTS "comment_likes_select" ON public.feed_comment_likes;
CREATE POLICY "comment_likes_select" ON public.feed_comment_likes FOR SELECT TO authenticated USING (TRUE);

DROP POLICY IF EXISTS "comment_likes_insert" ON public.feed_comment_likes;
CREATE POLICY "comment_likes_insert" ON public.feed_comment_likes FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "comment_likes_delete" ON public.feed_comment_likes;
CREATE POLICY "comment_likes_delete" ON public.feed_comment_likes FOR DELETE TO authenticated USING (user_id = auth.uid());

-- 6. PERMISSIONS
-- ---------------------------------------------------------------------------
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT ALL ON ALL TABLES IN SCHEMA public TO authenticated;
GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO authenticated;

COMMIT;

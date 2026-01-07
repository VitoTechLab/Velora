BEGIN;

-- ============================================
-- FEED SCHEMA
-- ============================================

CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- [TABLE] FEED POSTS
CREATE TABLE IF NOT EXISTS public.feed_posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

  image_urls TEXT[] NOT NULL DEFAULT ARRAY[]::TEXT[],
  video_urls TEXT[] NOT NULL DEFAULT ARRAY[]::TEXT[],

  likes_count INTEGER NOT NULL DEFAULT 0,
  comments_count INTEGER NOT NULL DEFAULT 0,
  shares_count INTEGER NOT NULL DEFAULT 0,

  comments_enabled BOOLEAN NOT NULL DEFAULT TRUE,
  hide_like_count BOOLEAN NOT NULL DEFAULT FALSE,
  hide_comment_count BOOLEAN NOT NULL DEFAULT FALSE,
  hide_share_count BOOLEAN NOT NULL DEFAULT FALSE,
  hide_likes_list BOOLEAN NOT NULL DEFAULT FALSE,

  campaign_id UUID,
  campaign_title TEXT
);

-- [TABLE] POST LIKES
CREATE TABLE IF NOT EXISTS public.feed_post_likes (
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  PRIMARY KEY (post_id, user_id)
);

-- [TABLE] POST BOOKMARKS
CREATE TABLE IF NOT EXISTS public.feed_post_bookmarks (
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  PRIMARY KEY (post_id, user_id)
);

-- [TABLE] POST SHARES
CREATE TABLE IF NOT EXISTS public.feed_post_shares (
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  PRIMARY KEY (post_id, user_id)
);

-- [TABLE] COMMENTS
CREATE TABLE IF NOT EXISTS public.feed_comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  post_id UUID NOT NULL REFERENCES public.feed_posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

  -- NOTE: CASCADE = hapus semua reply kalau parent dihapus
  parent_comment_id UUID REFERENCES public.feed_comments(id) ON DELETE CASCADE,

  likes_count INTEGER NOT NULL DEFAULT 0
);

-- [TABLE] COMMENT LIKES
CREATE TABLE IF NOT EXISTS public.feed_comment_likes (
  comment_id UUID NOT NULL REFERENCES public.feed_comments(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  PRIMARY KEY (comment_id, user_id)
);

-- [INDEX] KEYSET PAGINATION
CREATE INDEX IF NOT EXISTS feed_posts_created_at_id_idx
  ON public.feed_posts (created_at DESC, id DESC);

CREATE INDEX IF NOT EXISTS feed_comments_post_created_idx
  ON public.feed_comments (post_id, created_at DESC, id DESC);

CREATE INDEX IF NOT EXISTS feed_post_shares_post_idx
  ON public.feed_post_shares (post_id);

CREATE INDEX IF NOT EXISTS feed_comment_likes_comment_idx
  ON public.feed_comment_likes (comment_id);

-- [INDEX] USER-SPECIFIC LOOKUPS (for faster exist checks)
CREATE INDEX IF NOT EXISTS feed_post_likes_user_post_idx
  ON public.feed_post_likes (user_id, post_id);

CREATE INDEX IF NOT EXISTS feed_post_bookmarks_user_post_idx
  ON public.feed_post_bookmarks (user_id, post_id);

CREATE INDEX IF NOT EXISTS feed_comment_likes_user_comment_idx
  ON public.feed_comment_likes (user_id, comment_id);

-- ============================================
-- FEED HELPER FUNCTIONS (ATOMIC OPERATIONS)
-- ============================================

-- Atomic toggle like untuk menghindari race condition
CREATE OR REPLACE FUNCTION public.toggle_post_like(
  p_post_id UUID,
  p_user_id UUID
)
RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
  v_existed BOOLEAN;
BEGIN
  -- Try to delete first
  DELETE FROM public.feed_post_likes
  WHERE post_id = p_post_id AND user_id = p_user_id;
  
  GET DIAGNOSTICS v_existed = ROW_COUNT;
  
  -- If nothing was deleted, insert
  IF v_existed = 0 THEN
    INSERT INTO public.feed_post_likes (post_id, user_id)
    VALUES (p_post_id, p_user_id)
    ON CONFLICT (post_id, user_id) DO NOTHING;
    RETURN TRUE; -- Liked
  ELSE
    RETURN FALSE; -- Unliked
  END IF;
END $$;

-- Atomic toggle bookmark
CREATE OR REPLACE FUNCTION public.toggle_post_bookmark(
  p_post_id UUID,
  p_user_id UUID
)
RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
  v_existed BOOLEAN;
BEGIN
  DELETE FROM public.feed_post_bookmarks
  WHERE post_id = p_post_id AND user_id = p_user_id;
  
  GET DIAGNOSTICS v_existed = ROW_COUNT;
  
  IF v_existed = 0 THEN
    INSERT INTO public.feed_post_bookmarks (post_id, user_id)
    VALUES (p_post_id, p_user_id)
    ON CONFLICT (post_id, user_id) DO NOTHING;
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END $$;

-- Atomic toggle comment like
CREATE OR REPLACE FUNCTION public.toggle_comment_like(
  p_comment_id UUID,
  p_user_id UUID
)
RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
  v_existed BOOLEAN;
BEGIN
  DELETE FROM public.feed_comment_likes
  WHERE comment_id = p_comment_id AND user_id = p_user_id;
  
  GET DIAGNOSTICS v_existed = ROW_COUNT;
  
  IF v_existed = 0 THEN
    INSERT INTO public.feed_comment_likes (comment_id, user_id)
    VALUES (p_comment_id, p_user_id)
    ON CONFLICT (comment_id, user_id) DO NOTHING;
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END $$;

-- ============================================
-- FEED COUNTERS (FUNCTIONS)
-- ============================================

CREATE OR REPLACE FUNCTION public.feed_posts_increment_likes()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_posts
  SET likes_count = likes_count + 1
  WHERE id = NEW.post_id;
  RETURN NEW;
END $$;

CREATE OR REPLACE FUNCTION public.feed_posts_decrement_likes()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_posts
  SET likes_count = GREATEST(likes_count - 1, 0)
  WHERE id = OLD.post_id;
  RETURN OLD;
END $$;

CREATE OR REPLACE FUNCTION public.feed_posts_increment_comments()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_posts
  SET comments_count = comments_count + 1
  WHERE id = NEW.post_id;
  RETURN NEW;
END $$;

CREATE OR REPLACE FUNCTION public.feed_posts_decrement_comments()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_posts
  SET comments_count = GREATEST(comments_count - 1, 0)
  WHERE id = OLD.post_id;
  RETURN OLD;
END $$;

CREATE OR REPLACE FUNCTION public.feed_posts_increment_shares()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_posts
  SET shares_count = shares_count + 1
  WHERE id = NEW.post_id;
  RETURN NEW;
END $$;

CREATE OR REPLACE FUNCTION public.feed_posts_decrement_shares()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_posts
  SET shares_count = GREATEST(shares_count - 1, 0)
  WHERE id = OLD.post_id;
  RETURN OLD;
END $$;

CREATE OR REPLACE FUNCTION public.feed_comments_increment_likes()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_comments
  SET likes_count = likes_count + 1
  WHERE id = NEW.comment_id;
  RETURN NEW;
END $$;

CREATE OR REPLACE FUNCTION public.feed_comments_decrement_likes()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  UPDATE public.feed_comments
  SET likes_count = GREATEST(likes_count - 1, 0)
  WHERE id = OLD.comment_id;
  RETURN OLD;
END $$;

-- ============================================
-- FEED COUNTERS (TRIGGERS)
-- ============================================

DROP TRIGGER IF EXISTS feed_post_likes_insert_trg ON public.feed_post_likes;
DROP TRIGGER IF EXISTS feed_post_likes_delete_trg ON public.feed_post_likes;
DROP TRIGGER IF EXISTS feed_comments_insert_trg ON public.feed_comments;
DROP TRIGGER IF EXISTS feed_comments_delete_trg ON public.feed_comments;
DROP TRIGGER IF EXISTS feed_post_shares_insert_trg ON public.feed_post_shares;
DROP TRIGGER IF EXISTS feed_post_shares_delete_trg ON public.feed_post_shares;
DROP TRIGGER IF EXISTS feed_comment_likes_insert_trg ON public.feed_comment_likes;
DROP TRIGGER IF EXISTS feed_comment_likes_delete_trg ON public.feed_comment_likes;

CREATE TRIGGER feed_post_likes_insert_trg
AFTER INSERT ON public.feed_post_likes
FOR EACH ROW EXECUTE FUNCTION public.feed_posts_increment_likes();

CREATE TRIGGER feed_post_likes_delete_trg
AFTER DELETE ON public.feed_post_likes
FOR EACH ROW EXECUTE FUNCTION public.feed_posts_decrement_likes();

CREATE TRIGGER feed_comments_insert_trg
AFTER INSERT ON public.feed_comments
FOR EACH ROW EXECUTE FUNCTION public.feed_posts_increment_comments();

CREATE TRIGGER feed_comments_delete_trg
AFTER DELETE ON public.feed_comments
FOR EACH ROW EXECUTE FUNCTION public.feed_posts_decrement_comments();

CREATE TRIGGER feed_post_shares_insert_trg
AFTER INSERT ON public.feed_post_shares
FOR EACH ROW EXECUTE FUNCTION public.feed_posts_increment_shares();

CREATE TRIGGER feed_post_shares_delete_trg
AFTER DELETE ON public.feed_post_shares
FOR EACH ROW EXECUTE FUNCTION public.feed_posts_decrement_shares();

CREATE TRIGGER feed_comment_likes_insert_trg
AFTER INSERT ON public.feed_comment_likes
FOR EACH ROW EXECUTE FUNCTION public.feed_comments_increment_likes();

CREATE TRIGGER feed_comment_likes_delete_trg
AFTER DELETE ON public.feed_comment_likes
FOR EACH ROW EXECUTE FUNCTION public.feed_comments_decrement_likes();

-- ============================================
-- FEED GUARD
-- ============================================

CREATE OR REPLACE FUNCTION public.feed_comments_check_enabled()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM public.feed_posts p
    WHERE p.id = NEW.post_id
      AND p.comments_enabled = FALSE
  ) THEN
    RAISE EXCEPTION 'Comments are disabled for this post';
  END IF;

  RETURN NEW;
END $$;

DROP TRIGGER IF EXISTS feed_comments_check_enabled_trg ON public.feed_comments;
CREATE TRIGGER feed_comments_check_enabled_trg
BEFORE INSERT ON public.feed_comments
FOR EACH ROW EXECUTE FUNCTION public.feed_comments_check_enabled();

-- ============================================
-- FEED RLS + POLICIES
-- ============================================

ALTER TABLE public.feed_posts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_post_likes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_post_bookmarks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_post_shares ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_comments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.feed_comment_likes ENABLE ROW LEVEL SECURITY;

-- [POLICY] READ POSTS (AUTHENTICATED)
DROP POLICY IF EXISTS "feed_posts_select_auth" ON public.feed_posts;
CREATE POLICY "feed_posts_select_auth"
ON public.feed_posts
FOR SELECT
TO authenticated
USING (TRUE);

-- [POLICY] INSERT POSTS (OWNER)
DROP POLICY IF EXISTS "feed_posts_insert_own" ON public.feed_posts;
CREATE POLICY "feed_posts_insert_own"
ON public.feed_posts
FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

-- [POLICY] UPDATE POSTS (OWNER)
DROP POLICY IF EXISTS "feed_posts_update_own" ON public.feed_posts;
CREATE POLICY "feed_posts_update_own"
ON public.feed_posts
FOR UPDATE
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- [POLICY] DELETE POSTS (OWNER)
DROP POLICY IF EXISTS "feed_posts_delete_own" ON public.feed_posts;
CREATE POLICY "feed_posts_delete_own"
ON public.feed_posts
FOR DELETE
TO authenticated
USING (user_id = auth.uid());

-- ----------------------------
-- LIKES / BOOKMARKS / SHARES
-- ----------------------------

DROP POLICY IF EXISTS "feed_post_likes_select_auth" ON public.feed_post_likes;
CREATE POLICY "feed_post_likes_select_auth"
ON public.feed_post_likes
FOR SELECT
TO authenticated
USING (TRUE);

DROP POLICY IF EXISTS "feed_post_likes_insert_own" ON public.feed_post_likes;
CREATE POLICY "feed_post_likes_insert_own"
ON public.feed_post_likes
FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_post_likes_delete_own" ON public.feed_post_likes;
CREATE POLICY "feed_post_likes_delete_own"
ON public.feed_post_likes
FOR DELETE
TO authenticated
USING (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_post_bookmarks_select_auth" ON public.feed_post_bookmarks;
CREATE POLICY "feed_post_bookmarks_select_auth"
ON public.feed_post_bookmarks
FOR SELECT
TO authenticated
USING (TRUE);

DROP POLICY IF EXISTS "feed_post_bookmarks_insert_own" ON public.feed_post_bookmarks;
CREATE POLICY "feed_post_bookmarks_insert_own"
ON public.feed_post_bookmarks
FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_post_bookmarks_delete_own" ON public.feed_post_bookmarks;
CREATE POLICY "feed_post_bookmarks_delete_own"
ON public.feed_post_bookmarks
FOR DELETE
TO authenticated
USING (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_post_shares_select_auth" ON public.feed_post_shares;
CREATE POLICY "feed_post_shares_select_auth"
ON public.feed_post_shares
FOR SELECT
TO authenticated
USING (TRUE);

DROP POLICY IF EXISTS "feed_post_shares_insert_own" ON public.feed_post_shares;
CREATE POLICY "feed_post_shares_insert_own"
ON public.feed_post_shares
FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_post_shares_delete_own" ON public.feed_post_shares;
CREATE POLICY "feed_post_shares_delete_own"
ON public.feed_post_shares
FOR DELETE
TO authenticated
USING (user_id = auth.uid());

-- ----------------------------
-- COMMENTS + COMMENT LIKES
-- ----------------------------

DROP POLICY IF EXISTS "feed_comments_select_auth" ON public.feed_comments;
CREATE POLICY "feed_comments_select_auth"
ON public.feed_comments
FOR SELECT
TO authenticated
USING (TRUE);

DROP POLICY IF EXISTS "feed_comments_insert_own" ON public.feed_comments;
CREATE POLICY "feed_comments_insert_own"
ON public.feed_comments
FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_comments_update_own" ON public.feed_comments;
CREATE POLICY "feed_comments_update_own"
ON public.feed_comments
FOR UPDATE
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_comments_delete_own" ON public.feed_comments;
CREATE POLICY "feed_comments_delete_own"
ON public.feed_comments
FOR DELETE
TO authenticated
USING (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_comment_likes_select_auth" ON public.feed_comment_likes;
CREATE POLICY "feed_comment_likes_select_auth"
ON public.feed_comment_likes
FOR SELECT
TO authenticated
USING (TRUE);

DROP POLICY IF EXISTS "feed_comment_likes_insert_own" ON public.feed_comment_likes;
CREATE POLICY "feed_comment_likes_insert_own"
ON public.feed_comment_likes
FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "feed_comment_likes_delete_own" ON public.feed_comment_likes;
CREATE POLICY "feed_comment_likes_delete_own"
ON public.feed_comment_likes
FOR DELETE
TO authenticated
USING (user_id = auth.uid());

-- ============================================
-- GRANT PERMISSIONS
-- ============================================

GRANT SELECT, INSERT, UPDATE, DELETE ON public.feed_posts TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.feed_post_likes TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.feed_post_bookmarks TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.feed_post_shares TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.feed_comments TO authenticated;
GRANT SELECT, INSERT, DELETE ON public.feed_comment_likes TO authenticated;

COMMIT;

BEGIN;

-- ============================================
-- ADD REPLY_COUNT TO FEED_COMMENTS
-- ============================================

-- Add reply_count column to track number of replies per comment
ALTER TABLE public.feed_comments 
ADD COLUMN IF NOT EXISTS reply_count INTEGER NOT NULL DEFAULT 0;

-- Index for faster parent lookups
CREATE INDEX IF NOT EXISTS feed_comments_parent_idx 
  ON public.feed_comments (parent_comment_id) 
  WHERE parent_comment_id IS NOT NULL;

-- ============================================
-- REPLY COUNT TRIGGER FUNCTIONS
-- ============================================

-- Increment reply_count when a reply is inserted
CREATE OR REPLACE FUNCTION public.feed_comments_increment_replies()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  -- Only increment if this is a reply (has parent)
  IF NEW.parent_comment_id IS NOT NULL THEN
    UPDATE public.feed_comments
    SET reply_count = reply_count + 1
    WHERE id = NEW.parent_comment_id;
  END IF;
  RETURN NEW;
END $$;

-- Decrement reply_count when a reply is deleted
CREATE OR REPLACE FUNCTION public.feed_comments_decrement_replies()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  -- Only decrement if this was a reply (had parent)
  IF OLD.parent_comment_id IS NOT NULL THEN
    UPDATE public.feed_comments
    SET reply_count = GREATEST(reply_count - 1, 0)
    WHERE id = OLD.parent_comment_id;
  END IF;
  RETURN OLD;
END $$;

-- ============================================
-- REPLY COUNT TRIGGERS
-- ============================================

DROP TRIGGER IF EXISTS feed_comments_reply_insert_trg ON public.feed_comments;
DROP TRIGGER IF EXISTS feed_comments_reply_delete_trg ON public.feed_comments;

CREATE TRIGGER feed_comments_reply_insert_trg
AFTER INSERT ON public.feed_comments
FOR EACH ROW EXECUTE FUNCTION public.feed_comments_increment_replies();

CREATE TRIGGER feed_comments_reply_delete_trg
AFTER DELETE ON public.feed_comments
FOR EACH ROW EXECUTE FUNCTION public.feed_comments_decrement_replies();

-- ============================================
-- BACKFILL EXISTING DATA (one-time)
-- ============================================

-- Update reply_count for existing comments based on actual reply count
UPDATE public.feed_comments c
SET reply_count = (
  SELECT COUNT(*)
  FROM public.feed_comments r
  WHERE r.parent_comment_id = c.id
)
WHERE c.parent_comment_id IS NULL;

COMMIT;

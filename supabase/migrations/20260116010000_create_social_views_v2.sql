BEGIN;

-- ===================================================================
-- SOCIAL VIEWS V2 (Consolidated & Optimized)
-- ===================================================================
-- 1. Adapted for Feed V2 (Caption, Media URLs, New Settings)
-- 2. Adapted for Profile V2 & Relations V2 (Unified Tables)
-- 3. Optimized Performance (Direct Joins, Function Calls)
-- ===================================================================

-- ===================================================================
-- 1) USER PROFILE HEADER VIEW
-- Fast profile metadata with relationship status
-- Used for: Render header profile user lain
-- ===================================================================
CREATE OR REPLACE VIEW public.user_profile_header_view WITH (security_invoker = ON) AS
SELECT 
  up.id,
  up.email,
  up.username,
  up.full_name,
  up.avatar_url,
  up.is_private,
  up.followers_count,
  up.following_count,
  up.bio,
  up.website,
  up.created_at,
  up.updated_at,
  
  -- Contextual Status (RelativeTo: Me)
  (AUTH.uid() = up.id) AS is_me,
  
  EXISTS (
    SELECT 1 FROM public.user_follows f 
    WHERE f.follower_id = AUTH.uid() AND f.following_id = up.id
  ) AS is_following,
  
  EXISTS (
    SELECT 1 FROM public.user_follow_requests r 
    WHERE r.requester_id = AUTH.uid() AND r.target_id = up.id
  ) AS is_follow_request_pending,
  
  EXISTS (
    SELECT 1 FROM public.user_follows f 
    WHERE f.follower_id = up.id AND f.following_id = AUTH.uid()
  ) AS follows_me, -- "Follows You" label
  
  EXISTS (
    SELECT 1 FROM public.user_blocks b 
    WHERE b.blocker_id = AUTH.uid() AND b.blocked_id = up.id
  ) AS i_blocked_them,
  
  EXISTS (
    SELECT 1 FROM public.user_blocks b 
    WHERE b.blocker_id = up.id AND b.blocked_id = AUTH.uid()
  ) AS they_blocked_me

FROM public.user_profiles up;


-- ===================================================================
-- 2) FEED POSTS VIEW
-- Feed with Privacy-Check & Rich Metadata
-- Adapted for V2 Table Structure:
--   content -> caption
--   image_urls/video_urls -> media_urls
--   Removed legacy specific hide_* columns (using standard privacy)
-- ===================================================================
CREATE OR REPLACE VIEW public.feed_posts_feed_view WITH (security_invoker = ON) AS
SELECT 
  p.id,
  p.user_id,
  
  -- Content (V2)
  p.caption,
  p.media_urls,
  p.location,
  p.tags,
  p.mention_ids,
  
  -- User Info (Joined)
  up.username,
  up.full_name,
  up.avatar_url AS photo_url,
  up.is_private,
  
  -- Counters
  p.likes_count,
  p.comments_count,
  p.shares_count,
  
  -- Contextual Interaction Status (RelativeTo: Me)
  EXISTS (
    SELECT 1 FROM public.feed_post_likes l 
    WHERE l.post_id = p.id AND l.user_id = AUTH.uid()
  ) AS is_liked,
  
  EXISTS (
    SELECT 1 FROM public.feed_post_bookmarks b 
    WHERE b.post_id = p.id AND b.user_id = AUTH.uid()
  ) AS is_bookmarked,
  
  -- Relationship Context
  EXISTS (
    SELECT 1 FROM public.user_follows f 
    WHERE f.follower_id = AUTH.uid() AND f.following_id = p.user_id
  ) AS is_following,
  
  (AUTH.uid() = p.user_id) AS is_me,
  
  -- Settings (V2)
  p.allow_comments,
  p.allow_share,
  p.campaign_title,
  p.created_at

FROM public.feed_posts p
LEFT JOIN public.user_profiles up ON up.id = p.user_id
WHERE 
  -- Critical: Enforce Content Privacy Logic
  public.can_view_user_content(p.user_id) 
  AND p.is_active = TRUE;


-- ===================================================================
-- PERFORMANCE INDEXES
-- Optimized for the Views above
-- ===================================================================

-- 1. Index for "My Pending Requests" lookup
CREATE INDEX IF NOT EXISTS idx_follow_requests_lookup 
ON public.user_follow_requests(requester_id, target_id);

-- 2. Index for Feed Generation (User + Date)
-- Helps filtering posts by specific user for Profile Feed
CREATE INDEX IF NOT EXISTS idx_feed_posts_user_feed_v2 
ON public.feed_posts(user_id, created_at DESC)
WHERE is_active = TRUE;

-- ===================================================================
-- PERMISSIONS
-- ===================================================================
GRANT SELECT ON public.user_profile_header_view TO authenticated;
GRANT SELECT ON public.feed_posts_feed_view TO authenticated;

COMMIT;

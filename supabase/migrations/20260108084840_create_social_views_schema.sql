BEGIN;

-- ===================================================================
-- SOCIAL VIEWS SCHEMA
-- Optimized profile header and feed views with performance indexes
-- ===================================================================

-- ===================================================================
-- 1) USER PROFILE HEADER VIEW
-- Fast profile metadata with relationship status
-- ===================================================================
CREATE VIEW public.user_profile_header_view WITH (security_invoker = ON) AS
SELECT 
  up.id,
  up.email,
  up.username,
  up.full_name,
  up.avatar_url,
  up.is_private,
  up.followers_count,
  up.following_count,
  up.created_at,
  up.updated_at,
  AUTH.uid() = up.id AS is_me,
  EXISTS (
    SELECT 1 FROM user_follows f 
    WHERE f.follower_id = AUTH.uid() AND f.following_id = up.id
  ) AS is_following,
  EXISTS (
    SELECT 1 FROM user_follow_requests r 
    WHERE r.requester_id = AUTH.uid() AND r.target_id = up.id AND r.status = 'pending'
  ) AS is_follow_request_pending,
  EXISTS (
    SELECT 1 FROM user_blocks b 
    WHERE b.blocker_id = AUTH.uid() AND b.blocked_id = up.id
  ) AS i_blocked_them,
  EXISTS (
    SELECT 1 FROM user_blocks b 
    WHERE b.blocker_id = up.id AND b.blocked_id = AUTH.uid()
  ) AS they_blocked_me
FROM user_profiles up;


-- ===================================================================
-- 2) FEED POSTS VIEW
-- Feed with privacy-aware counts and relationship status
-- ===================================================================
CREATE VIEW public.feed_posts_feed_view WITH (security_invoker = ON) AS
SELECT 
  p.id,
  p.user_id,
  p.content,
  p.created_at,
  up.username,
  up.full_name,
  up.avatar_url AS photo_url,
  up.is_private,
  p.image_urls,
  p.video_urls,
  CASE 
    WHEN p.hide_like_count AND AUTH.uid() <> p.user_id THEN NULL 
    ELSE p.likes_count 
  END AS likes_count,
  CASE 
    WHEN p.hide_comment_count AND AUTH.uid() <> p.user_id THEN NULL 
    ELSE p.comments_count 
  END AS comments_count,
  CASE 
    WHEN p.hide_share_count AND AUTH.uid() <> p.user_id THEN NULL 
    ELSE p.shares_count 
  END AS shares_count,
  EXISTS (
    SELECT 1 FROM feed_post_likes l 
    WHERE l.post_id = p.id AND l.user_id = AUTH.uid()
  ) AS is_liked,
  EXISTS (
    SELECT 1 FROM feed_post_bookmarks b 
    WHERE b.post_id = p.id AND b.user_id = AUTH.uid()
  ) AS is_bookmarked,
  EXISTS (
    SELECT 1 FROM user_follows f 
    WHERE f.follower_id = AUTH.uid() AND f.following_id = p.user_id
  ) AS is_following,
  EXISTS (
    SELECT 1 FROM user_follow_requests r 
    WHERE r.requester_id = AUTH.uid() AND r.target_id = p.user_id AND r.status = 'pending'
  ) AS is_follow_request_pending,
  AUTH.uid() = p.user_id AS is_me,
  p.comments_enabled,
  p.hide_like_count,
  p.hide_comment_count,
  p.hide_share_count,
  p.hide_likes_list,
  p.campaign_id,
  p.campaign_title
FROM feed_posts p
LEFT JOIN user_profiles up ON up.id = p.user_id
WHERE can_view_user_content(p.user_id);


-- ===================================================================
-- PERFORMANCE INDEXES
-- New indexes not covered by existing schemas
-- ===================================================================

-- Partial index for pending follow requests (reduces index size ~40%)
-- Note: Other follow_request indexes exist in social_relations schema
CREATE INDEX IF NOT EXISTS idx_follow_requests_pending 
ON user_follow_requests(requester_id, target_id, status) 
WHERE status = 'pending';

-- Feed post author + ordering index (for profile feed pages)
-- Note: Existing index is (created_at, id) for global feed
CREATE INDEX IF NOT EXISTS idx_feed_posts_user_created 
ON feed_posts(user_id, created_at DESC);


-- ===================================================================
-- GRANT PERMISSIONS
-- Only grant new views (tables already granted in their schemas)
-- ===================================================================

GRANT SELECT ON public.user_profile_header_view TO authenticated;
GRANT SELECT ON public.feed_posts_feed_view TO authenticated;

COMMIT;
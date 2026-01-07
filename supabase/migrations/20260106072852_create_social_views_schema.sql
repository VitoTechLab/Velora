begin;

-- ------------------------------------------------------------
-- 1) Profile header view (fast profile top section)
-- ------------------------------------------------------------
create view public.user_profile_header_view with (security_invoker = on) as
 SELECT id,
    email,
    username,
    full_name,
    avatar_url,
    is_private,
    followers_count,
    following_count,
    created_at,
    updated_at,
    auth.uid() = id AS is_me,
    (EXISTS ( SELECT 1
           FROM user_follows f
          WHERE f.follower_id = auth.uid() AND f.following_id = up.id)) AS is_following,
    (EXISTS ( SELECT 1
           FROM user_follow_requests r
          WHERE r.requester_id = auth.uid() AND r.target_id = up.id AND r.status = 'pending'::text)) AS is_follow_request_pending,
    (EXISTS ( SELECT 1
           FROM user_blocks b
          WHERE b.blocker_id = auth.uid() AND b.blocked_id = up.id)) AS i_blocked_them,
    (EXISTS ( SELECT 1
           FROM user_blocks b
          WHERE b.blocker_id = up.id AND b.blocked_id = auth.uid())) AS they_blocked_me
   FROM user_profiles up;


-- ------------------------------------------------------------
-- 2) Feed view update (add pending request)
-- NOTE: assumes tables exist:
--   feed_posts, feed_post_likes, feed_post_bookmarks
-- ------------------------------------------------------------
create view public.feed_posts_feed_view with (security_invoker = on) as
 SELECT p.id,
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
            WHEN p.hide_like_count AND auth.uid() <> p.user_id THEN NULL::integer
            ELSE p.likes_count
        END AS likes_count,
        CASE
            WHEN p.hide_comment_count AND auth.uid() <> p.user_id THEN NULL::integer
            ELSE p.comments_count
        END AS comments_count,
        CASE
            WHEN p.hide_share_count AND auth.uid() <> p.user_id THEN NULL::integer
            ELSE p.shares_count
        END AS shares_count,
    (EXISTS ( SELECT 1
           FROM feed_post_likes l
          WHERE l.post_id = p.id AND l.user_id = auth.uid())) AS is_liked,
    (EXISTS ( SELECT 1
           FROM feed_post_bookmarks b
          WHERE b.post_id = p.id AND b.user_id = auth.uid())) AS is_bookmarked,
    (EXISTS ( SELECT 1
           FROM user_follows f
          WHERE f.follower_id = auth.uid() AND f.following_id = p.user_id)) AS is_following,
    (EXISTS ( SELECT 1
           FROM user_follow_requests r
          WHERE r.requester_id = auth.uid() AND r.target_id = p.user_id AND r.status = 'pending'::text)) AS is_follow_request_pending,
    auth.uid() = p.user_id AS is_me,
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


commit;

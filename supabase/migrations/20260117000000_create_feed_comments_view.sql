BEGIN;

CREATE OR REPLACE VIEW public.feed_comments_view WITH (security_invoker = ON) AS
SELECT 
  c.id,
  c.post_id,
  c.user_id,
  c.parent_comment_id,
  c.content,
  c.mention_ids,
  c.is_active,
  c.likes_count,
  c.reply_count,
  c.created_at,
  c.updated_at,
  
  up.username,
  up.avatar_url AS photo_url,
  
  EXISTS (
    SELECT 1 FROM public.feed_comment_likes l 
    WHERE l.comment_id = c.id AND l.user_id = AUTH.uid()
  ) AS is_liked

FROM public.feed_comments c
LEFT JOIN public.user_profiles up ON up.id = c.user_id
WHERE 
  (c.is_active = TRUE OR c.user_id = AUTH.uid()) AND
  EXISTS (
    SELECT 1 FROM public.feed_posts 
    WHERE id = c.post_id AND public.can_view_user_content(feed_posts.user_id)
  );

GRANT SELECT ON public.feed_comments_view TO authenticated;

COMMIT;

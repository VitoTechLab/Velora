class SupabaseTables {
  SupabaseTables._();

  // Feed Tables
  static const feedPosts = 'feed_posts';
  static const feedPostLikes = 'feed_post_likes';
  static const feedPostBookmarks = 'feed_post_bookmarks';
  static const feedComments = 'feed_comments';
  static const feedCommentLikes = 'feed_comment_likes';

  // Feed Views
  static const feedPostsView = 'feed_posts_feed_view';

  // Campaign Tables
  static const campaigns = 'campaigns';
  static const campaignUpdates = 'campaign_updates';
  static const campaignComments = 'campaign_comments';
}

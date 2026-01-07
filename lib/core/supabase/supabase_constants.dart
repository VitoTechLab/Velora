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

  // Presence Tables / Views
  static const userPresence = 'user_presence';
  static const userPresenceView = 'user_presence_view';

  // Campaign Tables
  static const campaigns = 'campaigns';
  static const campaignUpdates = 'campaign_updates';
  static const campaignComments = 'campaign_comments';

  // Chat Tables
  static const conversations = 'conversations';
  static const conversationMembers = 'conversation_members';
  static const messages = 'messages';
  static const messageAttachments = 'message_attachments';
  static const messageReads = 'message_reads';
  static const messageCallPayload = 'message_call_payload';
  static const messagePollPayload = 'message_poll_payload';
  static const pollOptions = 'poll_options';
  static const pollVotes = 'poll_votes';
  static const messageEventPayload = 'message_event_payload';
  static const eventRsvps = 'event_rsvps';

  // Chat Views
  static const conversationListView = 'v_conversation_list';

  // Profile Tables
  static const userProfiles = 'user_profiles';
  static const userFollows = 'user_follows';
  static const userFollowRequests = 'user_follow_requests';
  static const userBlocks = 'user_blocks';

  // Profile Views
  static const userProfileHeaderView = 'user_profile_header_view';
}

/// Constants for Supabase table names
class SupabaseTables {
  const SupabaseTables._();

  // Feed Tables
  static const feedPosts = 'feed_posts';
  static const feedPostLikes = 'feed_post_likes';
  static const feedPostBookmarks = 'feed_post_bookmarks';
  static const feedPostShares = 'feed_post_shares';
  static const feedComments = 'feed_comments';
  static const feedCommentLikes = 'feed_comment_likes';

  // Feed Views
  static const feedPostsView = 'feed_posts_feed_view';
  static const feedCommentsView = 'feed_comments_view';

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
  static const conversationDirectPairs = 'conversation_direct_pairs';
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
  static const conversationListView = 'v_conversation_list_optimized';

  // Profile Tables
  static const userProfiles = 'user_profiles';

  // Profile Views
  static const userProfileHeaderView = 'v_user_profile_header';
  static const profileFollowersListView = 'v_profile_followers_list';
  static const profileFollowingListView = 'v_profile_following_list';

  // Social Relation Tables
  static const userFollows = 'user_follows';
  static const userFollowRequests = 'user_follow_requests';
  static const userBlocks = 'user_blocks';
  static const userMutes = 'user_mutes';
  static const userRestricts = 'user_restricts';

  // Notification Tables
  static const notifications = 'notifications';

  // Mention Tables
  static const mentions = 'mentions';
}

/// Constants for Supabase RPC (Remote Procedure Call) function names
class SupabaseRpc {
  const SupabaseRpc._();

  // Chat RPCs
  static const getMessagesPage = 'get_messages_page';
  static const createDirectConversation = 'create_direct_conversation';
  static const markConversationRead = 'mark_conversation_read';
  static const markMessagesReadBatch = 'mark_messages_read_batch';
  static const getConversationListOptimized = 'get_conversation_list_optimized';
  static const votePollOption = 'vote_poll_option';
  static const unvotePollOption = 'unvote_poll_option';
  static const respondToEvent = 'respond_to_event';

  // Presence RPCs
  static const touchPresence = 'touch_presence';
  static const cleanupOldPresence = 'cleanup_old_presence';

  // Feed RPCs
  static const togglePostLike = 'toggle_post_like';
  static const togglePostBookmark = 'toggle_post_bookmark';
  static const toggleCommentLike = 'toggle_comment_like';

  // Notification RPCs
  static const getNotifications = 'get_notifications';
  static const getUnreadNotificationCount = 'get_unread_notification_count';
  static const markAllNotificationsRead = 'mark_all_notifications_read';
  static const markNotificationsRead = 'mark_notifications_read';

  // Social Relation RPCs
  static const acceptFollowRequest = 'accept_follow_request';
  static const getFriendSuggestions = 'get_friend_suggestions';
  static const getMutualFriends = 'get_mutual_friends';
}

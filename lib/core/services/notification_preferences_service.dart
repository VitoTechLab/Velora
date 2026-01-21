import 'package:shared_preferences/shared_preferences.dart';

/// Service to manage notification preferences
/// All notification settings are stored in SharedPreferences
class NotificationPreferencesService {
  // SharedPreferences keys - must match notification_detail_screen.dart
  static const String _keyPauseAll = 'notification_pause_all';
  static const String _keySleepMode = 'notification_sleep_mode';
  static const String _keySleepStart = 'notification_sleep_start';
  static const String _keySleepEnd = 'notification_sleep_end';
  
  // Posts & Stories keys
  static const String _keyPostsAndStories = 'notification_posts_stories';
  static const String _keyLiveVideos = 'notification_live_videos';
  static const String _keyNewCampaigns = 'notification_new_campaigns';
  
  // Engagement keys
  static const String _keyLikesOnPosts = 'notification_likes_posts';
  static const String _keyCommentReplies = 'notification_comment_replies';
  static const String _keyMentions = 'notification_mentions';
  static const String _keyNewFollowers = 'notification_new_followers';
  
  // Donations keys
  static const String _keyDonationReceived = 'notification_donation_received';
  static const String _keyCampaignMilestone = 'notification_campaign_milestone';
  static const String _keyCampaignUpdates = 'notification_campaign_updates';
  static const String _keyWithdrawalStatus = 'notification_withdrawal_status';
  
  // Messages keys
  static const String _keyDirectMessages = 'notification_direct_messages';
  static const String _keyMessageRequests = 'notification_message_requests';
  static const String _keyGroupInvites = 'notification_group_invites';
  
  // Other channels keys
  static const String _keyEmailNotifications = 'notification_email';
  static const String _keySmsNotifications = 'notification_sms';

  /// Check if all notifications are paused
  Future<bool> isPauseAll() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyPauseAll) ?? false;
  }

  /// Check if currently in sleep mode based on time
  Future<bool> isInSleepMode() async {
    final prefs = await SharedPreferences.getInstance();
    final enabled = prefs.getBool(_keySleepMode) ?? false;
    
    if (!enabled) return false;
    
    final startMinutes = prefs.getInt(_keySleepStart) ?? 22 * 60; // 22:00
    final endMinutes = prefs.getInt(_keySleepEnd) ?? 7 * 60; // 07:00
    
    final now = DateTime.now();
    final currentMinutes = now.hour * 60 + now.minute;
    
    // Handle sleep period that crosses midnight
    if (startMinutes > endMinutes) {
      return currentMinutes >= startMinutes || currentMinutes < endMinutes;
    } else {
      return currentMinutes >= startMinutes && currentMinutes < endMinutes;
    }
  }

  /// Check if a specific notification type should be shown
  /// Returns true if notification should be shown, false if disabled
  Future<bool> shouldShowNotification(NotificationType type) async {
    // Check global pause first
    if (await isPauseAll()) return false;
    
    // Check sleep mode
    if (await isInSleepMode()) return false;
    
    // Check specific notification type
    final prefs = await SharedPreferences.getInstance();
    
    switch (type) {
      // Posts & Stories
      case NotificationType.postsAndStories:
        return prefs.getBool(_keyPostsAndStories) ?? false;
      case NotificationType.liveVideos:
        return prefs.getBool(_keyLiveVideos) ?? false;
      case NotificationType.newCampaigns:
        return prefs.getBool(_keyNewCampaigns) ?? false;
      
      // Engagement
      case NotificationType.likes:
        return prefs.getBool(_keyLikesOnPosts) ?? false;
      case NotificationType.commentReplies:
        return prefs.getBool(_keyCommentReplies) ?? false;
      case NotificationType.mentions:
        return prefs.getBool(_keyMentions) ?? false;
      case NotificationType.newFollowers:
        return prefs.getBool(_keyNewFollowers) ?? false;
      
      // Donations
      case NotificationType.donationReceived:
        return prefs.getBool(_keyDonationReceived) ?? false;
      case NotificationType.campaignMilestone:
        return prefs.getBool(_keyCampaignMilestone) ?? false;
      case NotificationType.campaignUpdates:
        return prefs.getBool(_keyCampaignUpdates) ?? false;
      case NotificationType.withdrawalStatus:
        return prefs.getBool(_keyWithdrawalStatus) ?? false;
      
      // Messages
      case NotificationType.directMessages:
        return prefs.getBool(_keyDirectMessages) ?? false;
      case NotificationType.messageRequests:
        return prefs.getBool(_keyMessageRequests) ?? false;
      case NotificationType.groupInvites:
        return prefs.getBool(_keyGroupInvites) ?? false;
      
      // Other
      case NotificationType.email:
        return prefs.getBool(_keyEmailNotifications) ?? false;
      case NotificationType.sms:
        return prefs.getBool(_keySmsNotifications) ?? false;
    }
  }

  /// Get notification type from message data
  /// Firebase messages should include a "type" field in data payload
  NotificationType? getNotificationTypeFromData(Map<String, dynamic>? data) {
    if (data == null) return null;
    
    final typeString = data['type'] as String?;
    if (typeString == null) return null;
    
    switch (typeString.toLowerCase()) {
      case 'post':
      case 'story':
        return NotificationType.postsAndStories;
      case 'live':
      case 'live_video':
        return NotificationType.liveVideos;
      case 'campaign':
        return NotificationType.newCampaigns;
      case 'like':
        return NotificationType.likes;
      case 'comment':
      case 'reply':
        return NotificationType.commentReplies;
      case 'mention':
        return NotificationType.mentions;
      case 'follow':
      case 'follower':
        return NotificationType.newFollowers;
      case 'donation':
        return NotificationType.donationReceived;
      case 'milestone':
        return NotificationType.campaignMilestone;
      case 'campaign_update':
        return NotificationType.campaignUpdates;
      case 'withdrawal':
        return NotificationType.withdrawalStatus;
      case 'message':
      case 'chat':
        return NotificationType.directMessages;
      case 'message_request':
        return NotificationType.messageRequests;
      case 'group_invite':
        return NotificationType.groupInvites;
      default:
        return null;
    }
  }
}

/// Notification types matching the settings screen categories
enum NotificationType {
  // Posts & Stories
  postsAndStories,
  liveVideos,
  newCampaigns,
  
  // Engagement
  likes,
  commentReplies,
  mentions,
  newFollowers,
  
  // Donations
  donationReceived,
  campaignMilestone,
  campaignUpdates,
  withdrawalStatus,
  
  // Messages
  directMessages,
  messageRequests,
  groupInvites,
  
  // Other
  email,
  sms,
}

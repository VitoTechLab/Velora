import 'package:velora/features/notification/domain/entities/notification_entity.dart';

/// Helper class to group notifications by time categories
/// 
/// Supports 5 time categories:
/// - Today: Notifications from today
/// - Yesterday: Notifications from yesterday
/// - Last 7 Days: Notifications from 2-7 days ago
/// - Last 30 Days: Notifications from 8-30 days ago
/// - Older: Notifications older than 30 days
class NotificationGroupHelper {
  /// Group notifications into time categories with proper ordering
  static Map<String, List<NotificationEntity>> groupByTimeCategory(
    List<NotificationEntity> notifications,
  ) {
    final Map<String, List<NotificationEntity>> grouped = {
      'today': [],
      'yesterday': [],
      'last_7_days': [],
      'last_30_days': [],
      'older': [],
    };

    for (final notification in notifications) {
      final category = notification.getTimeCategory();
      grouped[category]?.add(notification);
    }

    // Remove empty categories
    grouped.removeWhere((key, value) => value.isEmpty);

    return grouped;
  }

  /// Get localized section title for display
  static String getSectionTitle(String category) {
    switch (category) {
      case 'today':
        return 'Today';
      case 'yesterday':
        return 'Yesterday';
      case 'last_7_days':
        return 'Last 7 Days';
      case 'last_30_days':
        return 'Last 30 Days';
      case 'older':
        return 'Older';
      default:
        return 'Other';
    }
  }

  /// Get ordered list of categories (for consistent UI ordering)
  static List<String> getOrderedCategories() {
    return ['today', 'yesterday', 'last_7_days', 'last_30_days', 'older'];
  }

  /// Check if section should be displayed (has notifications)
  static bool shouldShowSection(
    Map<String, List<NotificationEntity>> grouped,
    String category,
  ) {
    return grouped.containsKey(category) && grouped[category]!.isNotEmpty;
  }

  /// Get notification count for a category
  static int getCategoryCount(
    Map<String, List<NotificationEntity>> grouped,
    String category,
  ) {
    return grouped[category]?.length ?? 0;
  }

  /// Check if notification requires action (follow back button)
  static bool requiresFollowAction(NotificationEntity notification) {
    // Show follow back button for:
    // 1. Follow notifications where user is not following back
    // 2. Follow request accepted (they accepted your request, you might want to follow back)
    return (notification.type == NotificationType.follow ||
            notification.type == NotificationType.followAccepted) &&
        !notification.isFollowingActor;
  }

  /// Check if notification is follow request (needs approval)
  static bool isFollowRequest(NotificationEntity notification) {
    return notification.type == NotificationType.followRequest;
  }

  /// Get action button text for notification
  static String getActionButtonText(NotificationEntity notification) {
    if (notification.type == NotificationType.followRequest) {
      return 'Approve';
    } else if (requiresFollowAction(notification)) {
      return 'Follow Back';
    }
    return '';
  }

  /// Check if notification shows user interaction (like, comment)
  static bool isUserInteraction(NotificationEntity notification) {
    return notification.type == NotificationType.like ||
        notification.type == NotificationType.comment ||
        notification.type == NotificationType.mention;
  }
}

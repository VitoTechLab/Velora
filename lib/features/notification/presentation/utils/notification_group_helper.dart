import 'package:velora/features/notification/domain/entities/notification_entity.dart';

/// Helper class to group notifications by time categories
class NotificationGroupHelper {
  /// Group notifications into time categories: last 7 days, last 30 days, older
  /// Only includes sections that have notifications
  static Map<String, List<NotificationEntity>> groupByTimeCategory(
    List<NotificationEntity> notifications,
  ) {
    final Map<String, List<NotificationEntity>> grouped = {};

    for (final notification in notifications) {
      final category = notification.getTimeCategory();
      grouped.putIfAbsent(category, () => []).add(notification);
    }

    return grouped;
  }

  /// Get section title for display
  static String getSectionTitle(String category) {
    switch (category) {
      case 'last_7_days':
        return 'Last 7 days';
      case 'last_30_days':
        return 'Last 30 days';
      case 'older':
        return 'Older';
      default:
        return 'Other';
    }
  }

  /// Get ordered list of categories (for consistent UI ordering)
  static List<String> getOrderedCategories() {
    return ['last_7_days', 'last_30_days', 'older'];
  }

  /// Check if section should be displayed (has notifications)
  static bool shouldShowSection(
    Map<String, List<NotificationEntity>> grouped,
    String category,
  ) {
    return grouped.containsKey(category) && grouped[category]!.isNotEmpty;
  }
}

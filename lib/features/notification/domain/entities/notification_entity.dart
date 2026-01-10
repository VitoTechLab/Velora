import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';

/// Notification type enum matching the database enum
enum NotificationType {
  like,
  comment,
  follow,
  followRequest,
  followAccepted,
  donation,
  mention,
  postShare,
  channelInvite,
}

/// Alias for followAccepted
extension NotificationTypeExtension on NotificationType {
  static NotificationType get followRequestAccepted =>
      NotificationType.followAccepted;
}

/// Target type enum matching the database enum
enum NotificationTargetType { post, comment, campaign, user }

/// Time category for grouping notifications
enum NotificationTimeCategory { 
  today, 
  yesterday, 
  last7Days, 
  last30Days, 
  older,
}

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const NotificationEntity._();

  const factory NotificationEntity({
    required String id,
    required String userId,
    String? actorId,
    required NotificationType type,
    String? targetId,
    NotificationTargetType? targetType,
    String? groupKey,
    @Default(1) int groupCount,
    @Default(false) bool isRead,
    required DateTime createdAt,
    DateTime? updatedAt,

    // Actor info (fetched separately for display)
    String? actorUsername,
    String? actorPhotoUrl,

    // Target preview (for post thumbnail, etc.)
    String? targetPreviewUrl,

    // Follow relationship - whether current user is following the actor
    @Default(false) bool isFollowingActor,
  }) = _NotificationEntity;

  /// Check if this is a grouped notification (multiple actors)
  bool get isGrouped => groupCount > 1;

  /// Get the number of additional actors beyond the primary one
  int get additionalActors => groupCount > 1 ? groupCount - 1 : 0;

  /// Get time category based on createdAt
  NotificationTimeCategory get timeCategory {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final notificationDate = DateTime(
      createdAt.year,
      createdAt.month,
      createdAt.day,
    );
    
    final diff = today.difference(notificationDate).inDays;

    if (diff == 0) {
      return NotificationTimeCategory.today;
    } else if (diff == 1) {
      return NotificationTimeCategory.yesterday;
    } else if (diff <= 7) {
      return NotificationTimeCategory.last7Days;
    } else if (diff <= 30) {
      return NotificationTimeCategory.last30Days;
    } else {
      return NotificationTimeCategory.older;
    }
  }

  /// Calculate time category based on createdAt (string version)
  String getTimeCategory() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final notificationDate = DateTime(
      createdAt.year,
      createdAt.month,
      createdAt.day,
    );
    
    final diff = today.difference(notificationDate).inDays;

    if (diff == 0) {
      return 'today';
    } else if (diff == 1) {
      return 'yesterday';
    } else if (diff <= 7) {
      return 'last_7_days';
    } else if (diff <= 30) {
      return 'last_30_days';
    } else {
      return 'older';
    }
  }

  /// Check if notification is from today
  bool get isToday {
    final now = DateTime.now();
    return createdAt.year == now.year &&
        createdAt.month == now.month &&
        createdAt.day == now.day;
  }

  /// Check if notification is from yesterday
  bool get isYesterday {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1));
    return createdAt.year == yesterday.year &&
        createdAt.month == yesterday.month &&
        createdAt.day == yesterday.day;
  }

  /// Check if notification is from last 7 days (but not today or yesterday)
  bool get isLast7Days {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final notificationDate = DateTime(
      createdAt.year,
      createdAt.month,
      createdAt.day,
    );
    final diff = today.difference(notificationDate).inDays;
    return diff > 1 && diff <= 7;
  }

  /// Check if notification is from last 30 days (but not last 7 days)
  bool get isLast30Days {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final notificationDate = DateTime(
      createdAt.year,
      createdAt.month,
      createdAt.day,
    );
    final diff = today.difference(notificationDate).inDays;
    return diff > 7 && diff <= 30;
  }

  /// Check if notification is older than 30 days
  bool get isOlder {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final notificationDate = DateTime(
      createdAt.year,
      createdAt.month,
      createdAt.day,
    );
    return today.difference(notificationDate).inDays > 30;
  }
}

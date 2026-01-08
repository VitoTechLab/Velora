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
}

/// Target type enum matching the database enum
enum NotificationTargetType { post, comment, campaign, user }

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
  }) = _NotificationEntity;

  /// Check if this is a grouped notification (multiple actors)
  bool get isGrouped => groupCount > 1;

  /// Get the number of additional actors beyond the primary one
  int get additionalActors => groupCount > 1 ? groupCount - 1 : 0;

  /// Calculate time category based on createdAt
  /// Returns: 'last_7_days', 'last_30_days', or 'older'
  String getTimeCategory() {
    final now = DateTime.now();
    final diff = now.difference(createdAt);

    if (diff.inDays <= 7) {
      return 'last_7_days';
    } else if (diff.inDays <= 30) {
      return 'last_30_days';
    } else {
      return 'older';
    }
  }

  /// Check if notification is from last 7 days
  bool get isLast7Days => DateTime.now().difference(createdAt).inDays <= 7;

  /// Check if notification is from last 30 days (but not last 7 days)
  bool get isLast30Days {
    final days = DateTime.now().difference(createdAt).inDays;
    return days > 7 && days <= 30;
  }

  /// Check if notification is older than 30 days
  bool get isOlder => DateTime.now().difference(createdAt).inDays > 30;
}

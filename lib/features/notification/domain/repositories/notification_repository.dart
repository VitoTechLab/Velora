import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_cursor.dart';
import 'package:velora/features/notification/domain/entities/notification_pagination_result.dart';

/// Notification repository contract
abstract class NotificationRepository {
  /// Get notifications with cursor-based pagination
  Future<Either<Failure, NotificationPaginationResult>> getNotifications({
    required int limit,
    NotificationCursorEntity? cursor,
    NotificationType? type,
  });

  /// Get unread notification count
  Future<Either<Failure, int>> getUnreadCount();

  /// Mark all notifications as read
  Future<Either<Failure, void>> markAllAsRead();

  /// Mark specific notifications as read
  Future<Either<Failure, void>> markAsRead(List<String> notificationIds);

  /// Delete a notification
  Future<Either<Failure, void>> deleteNotification(String notificationId);

  /// Watch realtime notification inserts
  Stream<Either<Failure, NotificationEntity>> watchNewNotifications();

  /// Stop watching notifications
  Future<void> stopWatchNotifications();
}

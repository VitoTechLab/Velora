import 'package:velora/features/notification/data/models/notification_cursor_model.dart';
import 'package:velora/features/notification/data/models/notification_model.dart';
import 'package:velora/features/notification/data/models/notification_pagination_model.dart';

abstract class NotificationRemoteDataSource {
  /// Get notifications with cursor-based pagination
  Future<NotificationPaginationModel> getNotifications({
    int limit = 20,
    NotificationCursorModel? cursor,
    String? type,
  });

  /// Get unread notification count
  Future<int> getUnreadCount();

  /// Mark all notifications as read
  Future<void> markAllAsRead();

  /// Mark specific notifications as read
  Future<void> markAsRead(List<String> notificationIds);

  /// Delete a notification
  Future<void> deleteNotification(String notificationId);

  /// Watch realtime notification inserts
  Stream<NotificationModel> watchNewNotifications();

  /// Stop watching notifications
  Future<void> stopWatch();
}

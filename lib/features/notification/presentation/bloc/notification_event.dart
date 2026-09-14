import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_event.freezed.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  /// Load initial notifications (first page)
  const factory NotificationEvent.loadInitial({
    @Default(20) int limit,
  }) = LoadInitialNotificationsEvent;

  /// Load more notifications using existing cursor
  const factory NotificationEvent.loadMore({
    @Default(20) int limit,
  }) = LoadMoreNotificationsEvent;

  /// Refresh notifications (pull-to-refresh)
  const factory NotificationEvent.refresh() = RefreshNotificationsEvent;

  /// Mark all notifications as read
  const factory NotificationEvent.markAllAsRead() = MarkAllNotificationsReadEvent;

  /// Mark specific notification as read
  const factory NotificationEvent.markAsRead(String notificationId) = MarkNotificationReadEvent;

  /// Delete a notification
  const factory NotificationEvent.delete(String notificationId) = DeleteNotificationEvent;

  /// Load unread count
  const factory NotificationEvent.loadUnreadCount() = LoadUnreadCountEvent;

  /// Start watching realtime notifications
  const factory NotificationEvent.startWatching() = StartWatchingNotificationsEvent;

  /// Stop watching realtime notifications
  const factory NotificationEvent.stopWatching() = StopWatchingNotificationsEvent;

  /// New notification received from realtime
  const factory NotificationEvent.newNotificationReceived() = NewNotificationReceivedEvent;

  /// Clear transient UI messages/errors
  const factory NotificationEvent.clearTransient() = ClearTransientEvent;

  /// Toggle follow for actor of a notification
  const factory NotificationEvent.toggleFollowActor({
    required String notificationId,
    required String actorId,
  }) = ToggleFollowActorEvent;
}

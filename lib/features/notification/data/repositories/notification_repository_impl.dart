import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/notification/data/datasources/notification_remote_datasource.dart';
import 'package:velora/features/notification/data/models/notification_cursor_model.dart';
import 'package:velora/features/notification/domain/entities/notification_cursor_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_pagination_result_entity.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Repository implementation for notification operations
/// 
/// Features:
/// - Cursor-based pagination for efficient loading
/// - Type filtering (like, comment, follow, etc.)
/// - Realtime notification subscriptions
/// - Time-based categorization support
class NotificationRepositoryImpl implements NotificationRepository {
  const NotificationRepositoryImpl({required this.remoteDataSource});

  final NotificationRemoteDataSource remoteDataSource;

  static const _logTag = 'NotificationRepository';

  /// Convert NotificationType enum to database string
  String? _notificationTypeToString(NotificationType? type) {
    if (type == null) return null;
    switch (type) {
      case NotificationType.like:
        return 'like';
      case NotificationType.comment:
        return 'comment';
      case NotificationType.follow:
        return 'follow';
      case NotificationType.followRequest:
        return 'follow_request';
      case NotificationType.followAccepted:
        return 'follow_accepted';
      case NotificationType.donation:
        return 'donation';
      case NotificationType.mention:
        return 'mention';
      case NotificationType.postShare:
        return 'post_share';
      case NotificationType.channelInvite:
        return 'channel_invite';
    }
  }

  /// Get notifications with cursor-based pagination
  @override
  Future<Either<Failure, NotificationPaginationResult>> getNotifications({
    required int limit,
    NotificationCursorEntity? cursor,
    NotificationType? type,
  }) async {
    try {
      logi(
        '[NOTIFICATION REPOSITORY] getNotifications - cursor: $cursor',
        tag: _logTag,
      );
      final result = await remoteDataSource.getNotifications(
        limit: limit,
        cursor: cursor != null
            ? NotificationCursorModel(createdAt: cursor.createdAt, id: cursor.id)
            : null,
        type: _notificationTypeToString(type),
      );
      return Right(result.toEntity());
    } catch (e) {
      loge(
        '[NOTIFICATION REPOSITORY ERROR] getNotifications',
        error: e,
        tag: _logTag,
      );
      return Left(Failure.fromException(e));
    }
  }

  /// Get count of unread notifications
  @override
  Future<Either<Failure, int>> getUnreadCount() async {
    try {
      logi('[NOTIFICATION REPOSITORY] getUnreadCount', tag: _logTag);
      final count = await remoteDataSource.getUnreadCount();
      return Right(count);
    } catch (e) {
      loge(
        '[NOTIFICATION REPOSITORY ERROR] getUnreadCount',
        error: e,
        tag: _logTag,
      );
      return Left(Failure.fromException(e));
    }
  }

  /// Mark all notifications as read
  @override
  Future<Either<Failure, void>> markAllAsRead() async {
    try {
      logi('[NOTIFICATION REPOSITORY] markAllAsRead', tag: _logTag);
      await remoteDataSource.markAllAsRead();
      return const Right(null);
    } catch (e) {
      loge(
        '[NOTIFICATION REPOSITORY ERROR] markAllAsRead',
        error: e,
        tag: _logTag,
      );
      return Left(Failure.fromException(e));
    }
  }

  /// Mark specific notifications as read by IDs
  @override
  Future<Either<Failure, void>> markAsRead(List<String> notificationIds) async {
    try {
      logi(
        '[NOTIFICATION REPOSITORY] markAsRead - ids: $notificationIds',
        tag: _logTag,
      );
      await remoteDataSource.markAsRead(notificationIds);
      return const Right(null);
    } catch (e) {
      loge(
        '[NOTIFICATION REPOSITORY ERROR] markAsRead',
        error: e,
        tag: _logTag,
      );
      return Left(Failure.fromException(e));
    }
  }

  /// Delete a notification by ID
  @override
  Future<Either<Failure, void>> deleteNotification(
    String notificationId,
  ) async {
    try {
      logi(
        '[NOTIFICATION REPOSITORY] deleteNotification - id: $notificationId',
        tag: _logTag,
      );
      await remoteDataSource.deleteNotification(notificationId);
      return const Right(null);
    } catch (e) {
      loge(
        '[NOTIFICATION REPOSITORY ERROR] deleteNotification',
        error: e,
        tag: _logTag,
      );
      return Left(Failure.fromException(e));
    }
  }

  /// Watch for new notifications in realtime via Supabase subscriptions
  @override
  Stream<Either<Failure, NotificationEntity>> watchNewNotifications() async* {
    try {
      await for (final model in remoteDataSource.watchNewNotifications()) {
        yield Right(model.toEntity());
      }
    } catch (e) {
      yield Left(Failure.fromException(e));
    }
  }

  /// Stop watching for new notifications
  @override
  Future<void> stopWatchNotifications() => remoteDataSource.stopWatch();
}

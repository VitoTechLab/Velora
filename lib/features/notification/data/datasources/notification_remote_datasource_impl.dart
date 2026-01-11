import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/notification/data/models/notification_cursor_model.dart';
import 'package:velora/features/notification/data/models/notification_model.dart';
import 'package:velora/features/notification/data/models/notification_pagination_model.dart';
import 'notification_remote_datasource.dart';

/// Remote datasource implementation for notification operations
/// 
/// Features:
/// - Cursor-based pagination with RPC optimization
/// - Realtime Supabase subscriptions for new notifications
/// - Type filtering for notification categories
/// - Time-based grouping support (Today, Yesterday, Last 7/30 Days, Older)
class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  NotificationRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _client = supabaseClient;

  final SupabaseClient _client;
  RealtimeChannel? _channel;
  StreamController<NotificationModel>? _watchController;

  static const _logTag = 'NotificationRemoteDataSource';

  /// Get current authenticated user ID or throw exception
  String _requireUserId() {
    final userId = _client.auth.currentUser?.id;
    if (userId == null) {
      throw UnauthenticatedException();
    }
    return userId;
  }

  /// Get notifications with cursor-based pagination
  /// 
  /// Uses optimized RPC function with time_category for efficient grouping
  @override
  Future<NotificationPaginationModel> getNotifications({
    int limit = 20,
    NotificationCursorModel? cursor,
    String? type,
  }) {
    return guardSupabase(
      () async {
<<<<<<< HEAD
=======
        _requireUserId();

>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
        // Use the RPC function for optimized querying with time_category
        final params = <String, dynamic>{'p_limit': limit + 1};

        if (cursor != null) {
          params['p_cursor_created_at'] = cursor.createdAt
              .toUtc()
              .toIso8601String();
          params['p_cursor_id'] = cursor.id;
        }

        if (type != null) {
          params['p_type'] = type;
        }

        final response = await _client.rpc(
          SupabaseRpc.getNotifications,
          params: params,
        );

        final all = (response as List)
            .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
            .toList();

        final hasMore = all.length > limit;
        final notifications = hasMore ? all.sublist(0, limit) : all;

        final nextCursor = notifications.isEmpty
            ? null
            : NotificationCursorModel(
                createdAt: notifications.last.createdAt,
                id: notifications.last.id,
              );

        return NotificationPaginationModel(
          notifications: notifications,
          hasMore: hasMore,
          nextCursor: nextCursor,
        );
      },
      op: 'getNotifications',
      tag: _logTag,
    );
  }

  /// Get count of unread notifications
  @override
  Future<int> getUnreadCount() {
    return guardSupabase(
      () async {
        _requireUserId();

        final result = await _client.rpc(
          SupabaseRpc.getUnreadNotificationCount,
        );
        return (result as int?) ?? 0;
      },
      op: 'getUnreadCount',
      tag: _logTag,
    );
  }

  /// Mark all notifications as read for current user
  @override
  Future<void> markAllAsRead() {
    return guardSupabase(
      () async {
        _requireUserId();
        await _client.rpc(SupabaseRpc.markAllNotificationsRead);
      },
      op: 'markAllAsRead',
      tag: _logTag,
    );
  }

  /// Mark specific notifications as read by IDs
  @override
  Future<void> markAsRead(List<String> notificationIds) {
    return guardSupabase(
      () async {
        _requireUserId();
        await _client.rpc(
          SupabaseRpc.markNotificationsRead,
          params: {'p_notification_ids': notificationIds},
        );
      },
      op: 'markAsRead',
      tag: _logTag,
    );
  }

  /// Delete a notification by ID
  @override
  Future<void> deleteNotification(String notificationId) {
    return guardSupabase(
      () async {
        _requireUserId();
        await _client
            .from(SupabaseTables.notifications)
            .delete()
            .eq('id', notificationId);
      },
      op: 'deleteNotification',
      tag: _logTag,
    );
  }

  /// Watch for new notifications via Supabase realtime subscriptions
  /// 
  /// Subscribes to INSERT events on notifications table
  /// Automatically cleans up previous subscriptions
  @override
  Stream<NotificationModel> watchNewNotifications() {
    final userId = _requireUserId();

    final previousController = _watchController;
    if (previousController != null && !previousController.isClosed) {
      unawaited(previousController.close());
    }
    _watchController = null;

    final controller = StreamController<NotificationModel>.broadcast();
    _watchController = controller;

    unawaited(_channel?.unsubscribe());

    _channel = _client
        .channel('notifications:$userId')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: SupabaseTables.notifications,
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'user_id',
            value: userId,
          ),
          callback: (payload) {
            try {
              final notification = NotificationModel.fromJson(
                payload.newRecord,
              );
              controller.add(notification);
            } catch (e, st) {
              loge(
                'Error parsing notification',
                error: e,
                stackTrace: st,
                tag: _logTag,
              );
              controller.addError(e, st);
            }
          },
        )
        .subscribe();

    controller.onCancel = () async {
      await _channel?.unsubscribe();
      _channel = null;
      _watchController = null;
    };

    return controller.stream;
  }

  /// Stop watching for new notifications and cleanup subscriptions
  @override
  Future<void> stopWatch() async {
    await _channel?.unsubscribe();
    _channel = null;
    final controller = _watchController;
    if (controller != null && !controller.isClosed) {
      await controller.close();
    }
    _watchController = null;
  }
}

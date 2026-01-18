import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/notification/data/models/notification_cursor_model.dart';
import 'package:velora/features/notification/data/models/notification_model.dart';
import 'package:velora/features/notification/data/models/notification_pagination_model.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'notification_remote_datasource.dart';

/// Remote datasource implementation for notification operations
/// 
/// Features:
/// - Cursor-based pagination with RPC optimization
/// - Realtime Supabase subscriptions for new notifications
/// - Type filtering for notification categories
/// - Time-based grouping support (Today, Yesterday, Last 7/30 Days, Older)
/// 
/// Supported notification types (from SQL schema):
/// - like, comment, follow, follow_request, follow_accepted
/// - donation, mention, post_share, channel_invite
/// - campaign_created, campaign_update
/// 
/// Metadata structure (from SQL):
/// - Like: { thumbnail: string }
/// - Comment: { thumbnail: string, preview: string }
/// - Campaign: { title: string, description: string }
/// - Donation: { amount: number, donor_name: string? }
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

  /// Group notifications by time category
  /// 
  /// Uses [NotificationTimeCategory] from entity for consistency.
  /// Returns a map with ordered categories:
  /// - today: Notifications from the current day
  /// - yesterday: Notifications from the previous day
  /// - last7Days: Notifications from 2-7 days ago
  /// - last30Days: Notifications from 8-30 days ago
  /// - older: Notifications older than 30 days
  /// 
  /// Each category only appears if it has notifications.
  /// 
  /// Note: This method converts NotificationModel to entity internally
  /// to leverage the existing timeCategory getter in [NotificationEntity].
  Map<NotificationTimeCategory, List<NotificationModel>> groupNotificationsByTimeCategory(
    List<NotificationModel> notifications,
  ) {
    final grouped = <NotificationTimeCategory, List<NotificationModel>>{};

    for (final notification in notifications) {
      // Use entity's timeCategory getter for consistency
      final category = notification.toEntity().timeCategory;
      grouped.putIfAbsent(category, () => []).add(notification);
    }

    // Return in order: today, yesterday, last7Days, last30Days, older
    final ordered = <NotificationTimeCategory, List<NotificationModel>>{};
    for (final category in NotificationTimeCategory.values) {
      if (grouped.containsKey(category)) {
        ordered[category] = grouped[category]!;
      }
    }

    return ordered;
  }

  /// Get notification type display info
  /// 
  /// Returns a map with display info for each notification type:
  /// - icon: Material icon name
  /// - color: Hex color code
  /// - titleKey: Localization key for title
  static Map<String, String> getNotificationTypeDisplayInfo(String type) {
    switch (type) {
      case 'like':
        return {
          'icon': 'favorite',
          'color': '#E91E63',
          'titleKey': 'notification_like',
        };
      case 'comment':
        return {
          'icon': 'comment',
          'color': '#2196F3',
          'titleKey': 'notification_comment',
        };
      case 'follow':
        return {
          'icon': 'person_add',
          'color': '#4CAF50',
          'titleKey': 'notification_follow',
        };
      case 'follow_request':
        return {
          'icon': 'person_add',
          'color': '#FF9800',
          'titleKey': 'notification_follow_request',
        };
      case 'follow_accepted':
        return {
          'icon': 'check_circle',
          'color': '#4CAF50',
          'titleKey': 'notification_follow_accepted',
        };
      case 'donation':
        return {
          'icon': 'volunteer_activism',
          'color': '#9C27B0',
          'titleKey': 'notification_donation',
        };
      case 'mention':
        return {
          'icon': 'alternate_email',
          'color': '#00BCD4',
          'titleKey': 'notification_mention',
        };
      case 'post_share':
        return {
          'icon': 'share',
          'color': '#607D8B',
          'titleKey': 'notification_post_share',
        };
      case 'channel_invite':
        return {
          'icon': 'group_add',
          'color': '#3F51B5',
          'titleKey': 'notification_channel_invite',
        };
      case 'campaign_created':
        return {
          'icon': 'campaign',
          'color': '#FF5722',
          'titleKey': 'notification_campaign_created',
        };
      case 'campaign_update':
        return {
          'icon': 'update',
          'color': '#795548',
          'titleKey': 'notification_campaign_update',
        };
      default:
        return {
          'icon': 'notifications',
          'color': '#9E9E9E',
          'titleKey': 'notification_default',
        };
    }
  }

  /// Extract preview text from notification metadata
  /// 
  /// Handles different notification types:
  /// - Comment: Returns preview text
  /// - Campaign: Returns title and/or description
  /// - Donation: Returns amount with optional donor name
  static String? getPreviewFromMetadata(
    String type,
    Map<String, dynamic> metadata,
  ) {
    switch (type) {
      case 'comment':
        return metadata['preview'] as String?;
      case 'campaign_created':
      case 'campaign_update':
        final title = metadata['title'] as String?;
        final description = metadata['description'] as String?;
        if (title != null && description != null) {
          return '$title: $description';
        }
        return title ?? description;
      case 'donation':
        final amount = metadata['amount'];
        final donorName = metadata['donor_name'] as String?;
        if (amount != null) {
          final amountStr = amount.toString();
          return donorName != null
              ? '$donorName donated $amountStr'
              : 'Donated $amountStr';
        }
        return null;
      default:
        return null;
    }
  }
}

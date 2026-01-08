import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/usecases/get_notifications.dart';
import 'package:velora/features/notification/domain/usecases/get_unread_count.dart';
import 'package:velora/features/notification/domain/usecases/mark_notifications_read.dart';
import 'package:velora/features/notification/domain/usecases/delete_notification.dart';
import 'package:velora/features/notification/domain/usecases/watch_notifications.dart';
import 'notification_event.dart';
import 'notification_state.dart';

/// BLoC for notification interactions
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final LoadInitialNotifications loadInitialNotificationsUseCase;
  final LoadMoreNotifications loadMoreNotificationsUseCase;
  final GetUnreadNotificationCount getUnreadCountUseCase;
  final MarkAllNotificationsRead markAllAsReadUseCase;
  final MarkNotificationsRead markAsReadUseCase;
  final DeleteNotification deleteNotificationUseCase;
  final WatchNewNotifications watchNewNotificationsUseCase;
  final StopWatchNotifications stopWatchNotificationsUseCase;

  StreamSubscription? _realtimeSubscription;

  NotificationBloc({
    required this.loadInitialNotificationsUseCase,
    required this.loadMoreNotificationsUseCase,
    required this.getUnreadCountUseCase,
    required this.markAllAsReadUseCase,
    required this.markAsReadUseCase,
    required this.deleteNotificationUseCase,
    required this.watchNewNotificationsUseCase,
    required this.stopWatchNotificationsUseCase,
  }) : super(const NotificationState()) {
    on<LoadInitialNotificationsEvent>(_onLoadInitial);
    on<LoadMoreNotificationsEvent>(
      _onLoadMore,
      transformer: bloc_concurrency.droppable(),
    );
    on<RefreshNotificationsEvent>(
      _onRefresh,
      transformer: bloc_concurrency.droppable(),
    );
    on<MarkAllNotificationsReadEvent>(_onMarkAllAsRead);
    on<MarkNotificationReadEvent>(_onMarkAsRead);
    on<DeleteNotificationEvent>(_onDelete);
    on<LoadUnreadCountEvent>(_onLoadUnreadCount);
    on<StartWatchingNotificationsEvent>(_onStartWatching);
    on<StopWatchingNotificationsEvent>(_onStopWatching);
    on<NewNotificationReceivedEvent>(_onNewNotificationReceived);
    on<ClearTransientEvent>((event, emit) => _onClearTransient(emit));
  }

  static const int _minPageSize = 1;
  static const int _maxPageSize = 50;
  static const _logTag = 'NotificationBloc';

  int _validatedLimit(int limit) => limit.clamp(_minPageSize, _maxPageSize);

  Future<void> _onLoadInitial(
    LoadInitialNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    final limit = _validatedLimit(event.limit);

    logi('Loading initial notifications limit=$limit', tag: _logTag);

    emit(
      state.copyWith(
        isLoadingInitial: true,
        isLoadingMore: false,
        isRefreshing: false,
        error: null,
        message: null,
        notifications: <NotificationEntity>[],
        hasMore: false,
        cursor: null,
      ),
    );

    final result = await loadInitialNotificationsUseCase(limit: limit);

    result.fold(
      (failure) {
        loge('Load notifications failed: ${failure.message}', tag: _logTag);
        emit(state.copyWith(isLoadingInitial: false, error: failure.message));
      },
      (paginationResult) {
        emit(
          state.copyWith(
            notifications: paginationResult.notifications,
            hasMore: paginationResult.hasMore,
            cursor: paginationResult.cursor,
            isLoadingInitial: false,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMoreNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    if (state.isLoadingMore || state.isLoadingInitial || state.isRefreshing) {
      return;
    }
    if (!state.hasMore || state.cursor == null) return;

    final limit = _validatedLimit(event.limit);

    logi('Loading more notifications limit=$limit cursor=${state.cursor}', tag: _logTag);

    emit(state.copyWith(isLoadingMore: true, error: null, message: null));

    final cursor = state.cursor;
    if (cursor == null) return;

    final result = await loadMoreNotificationsUseCase(
      cursor: cursor,
      limit: limit,
    );

    result.fold(
      (failure) {
        loge('Load more notifications failed: ${failure.message}', tag: _logTag);
        emit(state.copyWith(isLoadingMore: false, error: failure.message));
      },
      (paginationResult) {
        // Dedupe by id
        final seen = state.notifications.map((e) => e.id).toSet();
        final newOnes = paginationResult.notifications
            .where((n) => seen.add(n.id))
            .toList();
        final merged = [...state.notifications, ...newOnes];

        emit(
          state.copyWith(
            notifications: merged,
            hasMore: paginationResult.hasMore,
            cursor: paginationResult.cursor,
            isLoadingMore: false,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onRefresh(
    RefreshNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    if (state.isLoadingMore || state.isLoadingInitial || state.isRefreshing) {
      return;
    }
    logi('Refreshing notifications', tag: _logTag);

    emit(state.copyWith(isRefreshing: true, error: null, message: null));

    final result = await loadInitialNotificationsUseCase(limit: _validatedLimit(20));

    result.fold(
      (failure) {
        emit(state.copyWith(isRefreshing: false, error: failure.message));
      },
      (paginationResult) {
        emit(
          state.copyWith(
            notifications: paginationResult.notifications,
            hasMore: paginationResult.hasMore,
            cursor: paginationResult.cursor,
            isRefreshing: false,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onMarkAllAsRead(
    MarkAllNotificationsReadEvent event,
    Emitter<NotificationState> emit,
  ) async {
    logi('Marking all notifications as read', tag: _logTag);

    final result = await markAllAsReadUseCase();

    result.fold(
      (failure) {
        logw('Mark all as read failed: ${failure.message}', tag: _logTag);
      },
      (_) {
        final updated = state.notifications
            .map((n) => n.copyWith(isRead: true))
            .toList();
        emit(state.copyWith(notifications: updated, unreadCount: 0));
      },
    );
  }

  Future<void> _onMarkAsRead(
    MarkNotificationReadEvent event,
    Emitter<NotificationState> emit,
  ) async {
    logi('Marking notification as read: ${event.notificationId}', tag: _logTag);

    final result = await markAsReadUseCase([event.notificationId]);

    result.fold(
      (failure) {
        logw('Mark as read failed: ${failure.message}', tag: _logTag);
      },
      (_) {
        final updated = state.notifications.map((n) {
          if (n.id == event.notificationId) {
            return n.copyWith(isRead: true);
          }
          return n;
        }).toList();

        final newUnreadCount = state.unreadCount > 0 ? state.unreadCount - 1 : 0;
        emit(state.copyWith(notifications: updated, unreadCount: newUnreadCount));
      },
    );
  }

  Future<void> _onDelete(
    DeleteNotificationEvent event,
    Emitter<NotificationState> emit,
  ) async {
    logi('Deleting notification: ${event.notificationId}', tag: _logTag);

    final result = await deleteNotificationUseCase(event.notificationId);

    result.fold(
      (failure) {
        logw('Delete notification failed: ${failure.message}', tag: _logTag);
        emit(state.copyWith(error: failure.message));
      },
      (_) {
        final deletedNotification = state.notifications
            .firstWhere((n) => n.id == event.notificationId, orElse: () => state.notifications.first);
        
        final updated = state.notifications
            .where((n) => n.id != event.notificationId)
            .toList();

        // Adjust unread count if deleted notification was unread
        final newUnreadCount = !deletedNotification.isRead && state.unreadCount > 0
            ? state.unreadCount - 1
            : state.unreadCount;

        emit(state.copyWith(
          notifications: updated,
          unreadCount: newUnreadCount,
          message: 'Notification deleted',
        ));
      },
    );
  }

  Future<void> _onLoadUnreadCount(
    LoadUnreadCountEvent event,
    Emitter<NotificationState> emit,
  ) async {
    logi('Loading unread count', tag: _logTag);

    final result = await getUnreadCountUseCase();

    result.fold(
      (failure) {
        logw('Get unread count failed: ${failure.message}', tag: _logTag);
      },
      (count) {
        emit(state.copyWith(unreadCount: count));
      },
    );
  }

  Future<void> _onStartWatching(
    StartWatchingNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    logi('Starting to watch notifications', tag: _logTag);

    await _realtimeSubscription?.cancel();

    _realtimeSubscription = watchNewNotificationsUseCase().listen(
      (result) {
        result.fold(
          (failure) {
            loge('Realtime notification error: ${failure.message}', tag: _logTag);
          },
          (notification) {
            add(const NotificationEvent.newNotificationReceived());
          },
        );
      },
      onError: (e) {
        loge('Realtime notification stream error', error: e, tag: _logTag);
      },
    );
  }

  Future<void> _onStopWatching(
    StopWatchingNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    logi('Stopping notification watch', tag: _logTag);
    await _realtimeSubscription?.cancel();
    _realtimeSubscription = null;
    await stopWatchNotificationsUseCase();
  }

  Future<void> _onNewNotificationReceived(
    NewNotificationReceivedEvent event,
    Emitter<NotificationState> emit,
  ) async {
    logi('New notification received, refreshing...', tag: _logTag);
    // Refresh to get the new notification with proper data
    add(const NotificationEvent.refresh());
    add(const NotificationEvent.loadUnreadCount());
  }

  void _onClearTransient(Emitter<NotificationState> emit) {
    emit(state.copyWith(message: null, error: null));
  }

  @override
  Future<void> close() async {
    await _realtimeSubscription?.cancel();
    await stopWatchNotificationsUseCase();
    return super.close();
  }
}

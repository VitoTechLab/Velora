import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/notification/domain/entities/notification_cursor_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';

part 'notification_state.freezed.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(<NotificationEntity>[]) List<NotificationEntity> notifications,
    @Default(false) bool hasMore,
    NotificationCursorEntity? cursor,
    @Default(false) bool isLoadingInitial,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isRefreshing,
    @Default(0) int unreadCount,
    String? error,
    String? message,
    // Track which notification IDs are currently loading follow toggle
    @Default(<String>{}) Set<String> followLoadingIds,
  }) = _NotificationState;
}

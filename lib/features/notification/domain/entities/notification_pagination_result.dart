import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_cursor.dart';

part 'notification_pagination_result.freezed.dart';

@freezed
abstract class NotificationPaginationResult with _$NotificationPaginationResult {
  const factory NotificationPaginationResult({
    required List<NotificationEntity> notifications,
    required bool hasMore,
    NotificationCursorEntity? cursor,
  }) = _NotificationPaginationResult;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_cursor_entity.freezed.dart';

@freezed
abstract class NotificationCursorEntity with _$NotificationCursorEntity {
  const factory NotificationCursorEntity({
    required DateTime createdAt,
    required String id,
  }) = _NotificationCursorEntity;
}

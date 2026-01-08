import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';

part 'notification_cursor.freezed.dart';
part 'notification_cursor.g.dart';

@freezed
abstract class NotificationCursor with _$NotificationCursor {
  const factory NotificationCursor({
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'id') required String id,
  }) = _NotificationCursor;

  factory NotificationCursor.fromJson(Map<String, dynamic> json) =>
      _$NotificationCursorFromJson(json);
}

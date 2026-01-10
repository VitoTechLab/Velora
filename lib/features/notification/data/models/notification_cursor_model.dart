import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';

part 'notification_cursor_model.freezed.dart';
part 'notification_cursor_model.g.dart';

@freezed
abstract class NotificationCursorModel with _$NotificationCursorModel {
  const factory NotificationCursorModel({
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'id') required String id,
  }) = _NotificationCursorModel;

  factory NotificationCursorModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationCursorModelFromJson(json);
}

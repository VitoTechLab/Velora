import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/message_cursor.dart'
    as domain;

part 'message_cursor.freezed.dart';
part 'message_cursor.g.dart';

@freezed
abstract class MessageCursor with _$MessageCursor {
  const MessageCursor._();

  const factory MessageCursor({
    @JsonKey(name: 'cursor_created_at') required DateTime createdAt,
    @JsonKey(name: 'cursor_id') required String id,
  }) = _MessageCursor;

  factory MessageCursor.fromJson(Map<String, dynamic> json) =>
      _$MessageCursorFromJson(json);

  Map<String, dynamic> toMap() => toJson();

  factory MessageCursor.fromMap(Map<String, dynamic> map) =>
      MessageCursor.fromJson(map);

  static MessageCursor? fromDynamic(Object? value) {
    if (value == null) return null;
    if (value is MessageCursor) return value;
    if (value is Map<String, dynamic>) return MessageCursor.fromJson(value);
    if (value is Map) {
      return MessageCursor.fromJson(
        value.map((key, v) => MapEntry(key.toString(), v)),
      );
    }
    return null;
  }

  domain.MessageCursorEntity toEntity() =>
      domain.MessageCursorEntity(createdAt: createdAt, id: id);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/message_cursor_entity.dart'
    as domain;

part 'message_cursor_model.freezed.dart';
part 'message_cursor_model.g.dart';

@freezed
abstract class MessageCursorModel with _$MessageCursorModel {
  const MessageCursorModel._();

  const factory MessageCursorModel({
    @JsonKey(name: 'cursor_created_at') required DateTime createdAt,
    @JsonKey(name: 'cursor_id') required String id,
  }) = _MessageCursorModel;

  factory MessageCursorModel.fromJson(Map<String, dynamic> json) =>
      _$MessageCursorModelFromJson(json);

  Map<String, dynamic> toMap() => toJson();

  factory MessageCursorModel.fromMap(Map<String, dynamic> map) =>
      MessageCursorModel.fromJson(map);

  static MessageCursorModel? fromDynamic(Object? value) {
    if (value == null) return null;
    if (value is MessageCursorModel) return value;
    if (value is Map<String, dynamic>) return MessageCursorModel.fromJson(value);
    if (value is Map) {
      return MessageCursorModel.fromJson(
        value.map((key, v) => MapEntry(key.toString(), v)),
      );
    }
    return null;
  }

  domain.MessageCursorEntity toEntity() =>
      domain.MessageCursorEntity(createdAt: createdAt, id: id);
}

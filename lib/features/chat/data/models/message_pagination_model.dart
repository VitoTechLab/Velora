import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/data/models/message_cursor_model.dart';
import 'package:velora/features/chat/domain/entities/chat_message_pagination_result_entity.dart';
import 'package:velora/features/chat/domain/entities/message_cursor_entity.dart';

import 'chat_message_model.dart';

part 'message_pagination_model.freezed.dart';
part 'message_pagination_model.g.dart';

MessageCursorModel? _cursorFromJson(Object? json) {
  if (json == null) return null;
  return MessageCursorModel.fromJson(json as Map<String, dynamic>);
}

Object? _cursorToJson(MessageCursorModel? cursor) => cursor?.toJson();

@freezed
abstract class MessagePaginationModel with _$MessagePaginationModel {
  const MessagePaginationModel._();

  const factory MessagePaginationModel({
    required List<ChatMessageModel> messages,
    required bool hasMore,
    @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
    MessageCursorModel? nextCursor,
  }) = _MessagePaginationModel;

  factory MessagePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$MessagePaginationModelFromJson(json);

  ChatMessagePaginationResultEntity toEntity() => ChatMessagePaginationResultEntity(
    messages: messages.map((m) => m.toEntity()).toList(),
    hasMore: hasMore,
    cursor: nextCursor == null
        ? null
        : MessageCursorEntity(
            createdAt: nextCursor!.createdAt,
            id: nextCursor!.id,
          ),
  );
}

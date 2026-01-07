import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/data/models/message_cursor.dart';
import 'package:velora/features/chat/domain/entities/chat_message_pagination_result.dart';
import 'package:velora/features/chat/domain/entities/message_cursor.dart';

import 'chat_message_model.dart';

part 'message_pagination_model.freezed.dart';
part 'message_pagination_model.g.dart';

MessageCursor? _cursorFromJson(Object? json) {
  if (json == null) return null;
  return MessageCursor.fromJson(json as Map<String, dynamic>);
}

Object? _cursorToJson(MessageCursor? cursor) => cursor?.toJson();

@freezed
abstract class MessagePaginationModel with _$MessagePaginationModel {
  const MessagePaginationModel._();

  const factory MessagePaginationModel({
    required List<ChatMessageModel> messages,
    required bool hasMore,
    @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
    MessageCursor? nextCursor,
  }) = _MessagePaginationModel;

  factory MessagePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$MessagePaginationModelFromJson(json);

  ChatMessagePaginationResult toEntity() => ChatMessagePaginationResult(
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

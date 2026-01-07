import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/message_cursor.dart';

part 'chat_message_pagination_result.freezed.dart';

@freezed
abstract class ChatMessagePaginationResult with _$ChatMessagePaginationResult {
  const factory ChatMessagePaginationResult({
    required List<ChatMessageEntity> messages,
    required bool hasMore,
    MessageCursorEntity? cursor,
  }) = _ChatMessagePaginationResult;
}

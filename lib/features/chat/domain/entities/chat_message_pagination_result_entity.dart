import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/message_cursor_entity.dart';

part 'chat_message_pagination_result_entity.freezed.dart';

@freezed
abstract class ChatMessagePaginationResultEntity with _$ChatMessagePaginationResultEntity {
  const factory ChatMessagePaginationResultEntity({
    required List<ChatMessageEntity> messages,
    required bool hasMore,
    MessageCursorEntity? cursor,
  }) = _ChatMessagePaginationResultEntity;
}

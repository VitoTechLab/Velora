import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_entity.freezed.dart';

/// Chat message entity based on public.messages table
@freezed
abstract class ChatMessageEntity with _$ChatMessageEntity {
  const factory ChatMessageEntity({
    required String id,
    required String conversationId,
    required String? senderId,
    required String kind,
    String? body,
    String? replyToMessageId,
    DateTime? editedAt,
    DateTime? deletedAt,
    String? deletedBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ChatMessageEntity;
}

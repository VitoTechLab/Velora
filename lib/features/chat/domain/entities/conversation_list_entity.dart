import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_list_entity.freezed.dart';

/// Entity for conversation list (from v_conversation_list view)
@freezed
abstract class ConversationListEntity with _$ConversationListEntity {
  const factory ConversationListEntity({
    required String userId,
    required String conversationId,
    required String type, // 'direct' or 'group'
    String? title,
    String? photoUrl,
    DateTime? lastMessageAt,
    String? lastMessageId,
    String? lastMessageKind,
    String? lastMessagePreview,
    @Default(0) int unreadCount,
    DateTime? lastReadAt,
  }) = _ConversationListEntity;
}

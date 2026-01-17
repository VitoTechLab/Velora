import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_list_entity.freezed.dart';

/// Entity for conversation list (from get_conversation_list_optimized RPC)
@freezed
abstract class ConversationListEntity with _$ConversationListEntity {
  const factory ConversationListEntity({
    required String conversationId,

    /// Other participant info (for direct conversations)
    String? otherUserId,
    String? otherUserUsername,
    String? otherUserFullName,
    String? otherUserAvatarUrl,

    /// Last message preview info
    String? lastMessageBody,
    DateTime? lastMessageAt,
    String? lastMessageSenderId,

    /// Unread count for the current user
    @Default(0) int unreadCount,
  }) = _ConversationListEntity;
}

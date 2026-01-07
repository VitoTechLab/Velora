import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/domain/entities/message_cursor.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';

part 'chat_message_state.freezed.dart';

@freezed
abstract class ChatMessageState with _$ChatMessageState {
  const factory ChatMessageState({
    // Messages
    @Default(<ChatMessageEntity>[]) List<ChatMessageEntity> messages,
    String? conversationId,
    @Default(0) int unreadCount,
    @Default(false) bool hasMore,
    MessageCursorEntity? cursor,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? errorMessage,
    @Default(false) bool isSending,
    String? sendError,
    ChatMessageEntity? sentMessage,
    @Default(false) bool isEditing,
    String? editError,
    ChatMessageEntity? editedMessage,
    @Default(false) bool isDeleting,
    String? deleteError,
    @Default(false) bool isMarkingRead,
    String? markReadError,
    String? message,
    @Default(false) bool isWatching,
    String? watchError,

    // Conversation List
    @Default(<ConversationListEntity>[])
    List<ConversationListEntity> conversations,
    @Default(false) bool isLoadingConversations,
    String? conversationsError,

    // Message Reads (Read Receipts)
    @Default(<String, List<MessageReadEntity>>{})
    Map<String, List<MessageReadEntity>> messageReads,
    @Default(false) bool isLoadingReads,
    String? readsError,
    @Default(false) bool isWatchingReads,

    // Typing Indicators
    @Default(<String, DateTime>{}) Map<String, DateTime> typingUsers,
    @Default(false) bool isWatchingTyping,
  }) = _ChatMessageState;
}

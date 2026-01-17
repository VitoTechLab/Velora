import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';

part 'chat_message_event.freezed.dart';

@freezed
class ChatMessageEvent with _$ChatMessageEvent {
  // =========================================================
  // CHAT INITIALIZATION
  // =========================================================
  /// Initialize chat - creates conversation if peerUserId is provided and conversationId is empty
  const factory ChatMessageEvent.initializeChat({
    required String conversationId,
    String? peerUserId,
    int? limit,
  }) = InitializeChatEvent;

  // =========================================================
  // MESSAGES
  // =========================================================
  const factory ChatMessageEvent.loadMessages({
    required String conversationId,
    int? limit,
  }) = LoadChatMessagesEvent;

  const factory ChatMessageEvent.loadMoreMessages({
    required String conversationId,
    required int limit,
  }) = LoadMoreChatMessagesEvent;

  const factory ChatMessageEvent.sendMessage({
    required String conversationId,
    required String content,
    String? replyToMessageId,
  }) = SendChatMessageEvent;

  /// Send media message (image, video, document)
  const factory ChatMessageEvent.sendMediaMessage({
    required String conversationId,
    required String mediaUrl,
    required String mediaType, // 'image', 'video', 'document', 'audio'
    String? mimeType,
    String? fileName,
    int? fileSize,
    String? caption,
  }) = SendMediaMessageEvent;

  const factory ChatMessageEvent.sendPollMessage({
    required String conversationId,
    required String question,
    required List<String> options,
    @Default(false) bool multipleChoice,
    @Default(1) int maxUserVotes,
  }) = SendPollMessageEvent;

  const factory ChatMessageEvent.sendEventMessage({
    required String conversationId,
    required String title,
    String? description,
    String? locationName,
    String? address,
    @Default(false) bool isOnline,
    String? meetingUrl,
    String? coverUrl,
    required DateTime startDate,
    required DateTime endDate,
  }) = SendEventMessageEvent;

  const factory ChatMessageEvent.editMessage({
    required String messageId,
    required String newContent,
  }) = EditChatMessageEvent;

  const factory ChatMessageEvent.deleteMessage({required String messageId}) =
      DeleteChatMessageEvent;

  const factory ChatMessageEvent.markConversationRead({
    required String conversationId,
    String? uptoMessageId,
  }) = MarkConversationReadEvent;

  const factory ChatMessageEvent.clearInfo() = ClearChatMessagesInfoEvent;

  const factory ChatMessageEvent.startWatch({required String conversationId}) =
      StartWatchMessagesEvent;

  const factory ChatMessageEvent.stopWatch() = StopWatchMessagesEvent;

  const factory ChatMessageEvent.watchMessageArrived(
    ChatMessageEntity message,
  ) = WatchMessageArrivedEvent;

  const factory ChatMessageEvent.watchMessageUpdated(
    ChatMessageEntity message,
  ) = WatchMessageUpdatedEvent;

  const factory ChatMessageEvent.watchMessageDeleted(
    ChatMessageEntity message,
  ) = WatchMessageDeletedEvent;

  const factory ChatMessageEvent.watchMessageError(String message) =
      WatchMessageErrorEvent;

  // =========================================================
  // CONVERSATION LIST
  // =========================================================
  const factory ChatMessageEvent.loadConversationList() =
      LoadConversationListEvent;
  const factory ChatMessageEvent.setChatFilter(String filter) =
      SetChatFilterEvent;
  const factory ChatMessageEvent.setSearchQuery(String query) =
      SetSearchQueryEvent;

  // =========================================================
  // MESSAGE READS (Read Receipts)
  // =========================================================
  const factory ChatMessageEvent.loadMessageReads({required String messageId}) =
      LoadMessageReadsEvent;

  const factory ChatMessageEvent.markMessageRead({required String messageId}) =
      MarkMessageReadEvent;

  /// Batch mark multiple messages as read - efficient for scroll-based reading
  const factory ChatMessageEvent.markMessagesReadBatch({
    required List<String> messageIds,
  }) = MarkMessagesReadBatchEvent;

  const factory ChatMessageEvent.startWatchReads({
    required String conversationId,
  }) = StartWatchReadsEvent;

  const factory ChatMessageEvent.stopWatchReads() = StopWatchReadsEvent;

  const factory ChatMessageEvent.watchReadArrived(
    MessageReadEntity readEntity,
  ) = WatchReadArrivedEvent;

  // =========================================================
  // POLL VOTING
  // =========================================================
  const factory ChatMessageEvent.votePoll({
    required String pollMessageId,
    required String optionId,
  }) = VotePollEvent;

  const factory ChatMessageEvent.unvotePoll({
    required String optionId,
  }) = UnvotePollEvent;

  // =========================================================
  // EVENT RSVP
  // =========================================================
  const factory ChatMessageEvent.respondToEvent({
    required String eventMessageId,
    required String status, // 'going', 'interested', 'not_going'
  }) = RespondToEventEvent;

  const factory ChatMessageEvent.cancelEventRsvp({
    required String eventMessageId,
  }) = CancelEventRsvpEvent;

  // =========================================================
  // TYPING INDICATOR
  // =========================================================
  const factory ChatMessageEvent.sendTyping({
    required String conversationId,
    required bool isTyping,
  }) = SendTypingEvent;

  const factory ChatMessageEvent.startWatchTyping({
    required String conversationId,
  }) = StartWatchTypingEvent;

  const factory ChatMessageEvent.stopWatchTyping() = StopWatchTypingEvent;

  const factory ChatMessageEvent.watchTypingArrived(String userId) =
      WatchTypingArrivedEvent;

  const factory ChatMessageEvent.cleanupTyping() = CleanupTypingEvent;
}

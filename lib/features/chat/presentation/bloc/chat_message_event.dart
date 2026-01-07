import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';

part 'chat_message_event.freezed.dart';

@freezed
class ChatMessageEvent with _$ChatMessageEvent {
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

  // =========================================================
  // MESSAGE READS (Read Receipts)
  // =========================================================
  const factory ChatMessageEvent.loadMessageReads({required String messageId}) =
      LoadMessageReadsEvent;

  const factory ChatMessageEvent.markMessageRead({required String messageId}) =
      MarkMessageReadEvent;

  const factory ChatMessageEvent.startWatchReads({
    required String conversationId,
  }) = StartWatchReadsEvent;

  const factory ChatMessageEvent.stopWatchReads() = StopWatchReadsEvent;

  const factory ChatMessageEvent.watchReadArrived(
    MessageReadEntity readEntity,
  ) = WatchReadArrivedEvent;

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

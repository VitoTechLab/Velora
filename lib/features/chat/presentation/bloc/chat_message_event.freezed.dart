// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatMessageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent()';
}


}

/// @nodoc
class $ChatMessageEventCopyWith<$Res>  {
$ChatMessageEventCopyWith(ChatMessageEvent _, $Res Function(ChatMessageEvent) __);
}


/// Adds pattern-matching-related methods to [ChatMessageEvent].
extension ChatMessageEventPatterns on ChatMessageEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitializeChatEvent value)?  initializeChat,TResult Function( LoadChatMessagesEvent value)?  loadMessages,TResult Function( LoadMoreChatMessagesEvent value)?  loadMoreMessages,TResult Function( SendChatMessageEvent value)?  sendMessage,TResult Function( SendMediaMessageEvent value)?  sendMediaMessage,TResult Function( UploadAndSendImagesEvent value)?  uploadAndSendImages,TResult Function( UploadAndSendVideoEvent value)?  uploadAndSendVideo,TResult Function( UploadAndSendDocumentsEvent value)?  uploadAndSendDocuments,TResult Function( UploadAndSendAudioEvent value)?  uploadAndSendAudio,TResult Function( SendPollMessageEvent value)?  sendPollMessage,TResult Function( SendEventMessageEvent value)?  sendEventMessage,TResult Function( EditChatMessageEvent value)?  editMessage,TResult Function( DeleteChatMessageEvent value)?  deleteMessage,TResult Function( MarkConversationReadEvent value)?  markConversationRead,TResult Function( ClearChatMessagesInfoEvent value)?  clearInfo,TResult Function( StartWatchMessagesEvent value)?  startWatch,TResult Function( StopWatchMessagesEvent value)?  stopWatch,TResult Function( WatchMessageArrivedEvent value)?  watchMessageArrived,TResult Function( WatchMessageUpdatedEvent value)?  watchMessageUpdated,TResult Function( WatchMessageDeletedEvent value)?  watchMessageDeleted,TResult Function( WatchMessageErrorEvent value)?  watchMessageError,TResult Function( LoadConversationListEvent value)?  loadConversationList,TResult Function( SetChatFilterEvent value)?  setChatFilter,TResult Function( SetSearchQueryEvent value)?  setSearchQuery,TResult Function( RefreshConversationListEvent value)?  refreshConversationList,TResult Function( UpdateConversationLocallyEvent value)?  updateConversationLocally,TResult Function( LoadMessageReadsEvent value)?  loadMessageReads,TResult Function( MarkMessageReadEvent value)?  markMessageRead,TResult Function( MarkMessagesReadBatchEvent value)?  markMessagesReadBatch,TResult Function( StartWatchReadsEvent value)?  startWatchReads,TResult Function( StopWatchReadsEvent value)?  stopWatchReads,TResult Function( WatchReadArrivedEvent value)?  watchReadArrived,TResult Function( VotePollEvent value)?  votePoll,TResult Function( UnvotePollEvent value)?  unvotePoll,TResult Function( RespondToEventEvent value)?  respondToEvent,TResult Function( CancelEventRsvpEvent value)?  cancelEventRsvp,TResult Function( SendTypingEvent value)?  sendTyping,TResult Function( StartWatchTypingEvent value)?  startWatchTyping,TResult Function( StopWatchTypingEvent value)?  stopWatchTyping,TResult Function( WatchTypingArrivedEvent value)?  watchTypingArrived,TResult Function( CleanupTypingEvent value)?  cleanupTyping,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitializeChatEvent() when initializeChat != null:
return initializeChat(_that);case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that);case SendMediaMessageEvent() when sendMediaMessage != null:
return sendMediaMessage(_that);case UploadAndSendImagesEvent() when uploadAndSendImages != null:
return uploadAndSendImages(_that);case UploadAndSendVideoEvent() when uploadAndSendVideo != null:
return uploadAndSendVideo(_that);case UploadAndSendDocumentsEvent() when uploadAndSendDocuments != null:
return uploadAndSendDocuments(_that);case UploadAndSendAudioEvent() when uploadAndSendAudio != null:
return uploadAndSendAudio(_that);case SendPollMessageEvent() when sendPollMessage != null:
return sendPollMessage(_that);case SendEventMessageEvent() when sendEventMessage != null:
return sendEventMessage(_that);case EditChatMessageEvent() when editMessage != null:
return editMessage(_that);case DeleteChatMessageEvent() when deleteMessage != null:
return deleteMessage(_that);case MarkConversationReadEvent() when markConversationRead != null:
return markConversationRead(_that);case ClearChatMessagesInfoEvent() when clearInfo != null:
return clearInfo(_that);case StartWatchMessagesEvent() when startWatch != null:
return startWatch(_that);case StopWatchMessagesEvent() when stopWatch != null:
return stopWatch(_that);case WatchMessageArrivedEvent() when watchMessageArrived != null:
return watchMessageArrived(_that);case WatchMessageUpdatedEvent() when watchMessageUpdated != null:
return watchMessageUpdated(_that);case WatchMessageDeletedEvent() when watchMessageDeleted != null:
return watchMessageDeleted(_that);case WatchMessageErrorEvent() when watchMessageError != null:
return watchMessageError(_that);case LoadConversationListEvent() when loadConversationList != null:
return loadConversationList(_that);case SetChatFilterEvent() when setChatFilter != null:
return setChatFilter(_that);case SetSearchQueryEvent() when setSearchQuery != null:
return setSearchQuery(_that);case RefreshConversationListEvent() when refreshConversationList != null:
return refreshConversationList(_that);case UpdateConversationLocallyEvent() when updateConversationLocally != null:
return updateConversationLocally(_that);case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that);case MarkMessagesReadBatchEvent() when markMessagesReadBatch != null:
return markMessagesReadBatch(_that);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads(_that);case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that);case VotePollEvent() when votePoll != null:
return votePoll(_that);case UnvotePollEvent() when unvotePoll != null:
return unvotePoll(_that);case RespondToEventEvent() when respondToEvent != null:
return respondToEvent(_that);case CancelEventRsvpEvent() when cancelEventRsvp != null:
return cancelEventRsvp(_that);case SendTypingEvent() when sendTyping != null:
return sendTyping(_that);case StartWatchTypingEvent() when startWatchTyping != null:
return startWatchTyping(_that);case StopWatchTypingEvent() when stopWatchTyping != null:
return stopWatchTyping(_that);case WatchTypingArrivedEvent() when watchTypingArrived != null:
return watchTypingArrived(_that);case CleanupTypingEvent() when cleanupTyping != null:
return cleanupTyping(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitializeChatEvent value)  initializeChat,required TResult Function( LoadChatMessagesEvent value)  loadMessages,required TResult Function( LoadMoreChatMessagesEvent value)  loadMoreMessages,required TResult Function( SendChatMessageEvent value)  sendMessage,required TResult Function( SendMediaMessageEvent value)  sendMediaMessage,required TResult Function( UploadAndSendImagesEvent value)  uploadAndSendImages,required TResult Function( UploadAndSendVideoEvent value)  uploadAndSendVideo,required TResult Function( UploadAndSendDocumentsEvent value)  uploadAndSendDocuments,required TResult Function( UploadAndSendAudioEvent value)  uploadAndSendAudio,required TResult Function( SendPollMessageEvent value)  sendPollMessage,required TResult Function( SendEventMessageEvent value)  sendEventMessage,required TResult Function( EditChatMessageEvent value)  editMessage,required TResult Function( DeleteChatMessageEvent value)  deleteMessage,required TResult Function( MarkConversationReadEvent value)  markConversationRead,required TResult Function( ClearChatMessagesInfoEvent value)  clearInfo,required TResult Function( StartWatchMessagesEvent value)  startWatch,required TResult Function( StopWatchMessagesEvent value)  stopWatch,required TResult Function( WatchMessageArrivedEvent value)  watchMessageArrived,required TResult Function( WatchMessageUpdatedEvent value)  watchMessageUpdated,required TResult Function( WatchMessageDeletedEvent value)  watchMessageDeleted,required TResult Function( WatchMessageErrorEvent value)  watchMessageError,required TResult Function( LoadConversationListEvent value)  loadConversationList,required TResult Function( SetChatFilterEvent value)  setChatFilter,required TResult Function( SetSearchQueryEvent value)  setSearchQuery,required TResult Function( RefreshConversationListEvent value)  refreshConversationList,required TResult Function( UpdateConversationLocallyEvent value)  updateConversationLocally,required TResult Function( LoadMessageReadsEvent value)  loadMessageReads,required TResult Function( MarkMessageReadEvent value)  markMessageRead,required TResult Function( MarkMessagesReadBatchEvent value)  markMessagesReadBatch,required TResult Function( StartWatchReadsEvent value)  startWatchReads,required TResult Function( StopWatchReadsEvent value)  stopWatchReads,required TResult Function( WatchReadArrivedEvent value)  watchReadArrived,required TResult Function( VotePollEvent value)  votePoll,required TResult Function( UnvotePollEvent value)  unvotePoll,required TResult Function( RespondToEventEvent value)  respondToEvent,required TResult Function( CancelEventRsvpEvent value)  cancelEventRsvp,required TResult Function( SendTypingEvent value)  sendTyping,required TResult Function( StartWatchTypingEvent value)  startWatchTyping,required TResult Function( StopWatchTypingEvent value)  stopWatchTyping,required TResult Function( WatchTypingArrivedEvent value)  watchTypingArrived,required TResult Function( CleanupTypingEvent value)  cleanupTyping,}){
final _that = this;
switch (_that) {
case InitializeChatEvent():
return initializeChat(_that);case LoadChatMessagesEvent():
return loadMessages(_that);case LoadMoreChatMessagesEvent():
return loadMoreMessages(_that);case SendChatMessageEvent():
return sendMessage(_that);case SendMediaMessageEvent():
return sendMediaMessage(_that);case UploadAndSendImagesEvent():
return uploadAndSendImages(_that);case UploadAndSendVideoEvent():
return uploadAndSendVideo(_that);case UploadAndSendDocumentsEvent():
return uploadAndSendDocuments(_that);case UploadAndSendAudioEvent():
return uploadAndSendAudio(_that);case SendPollMessageEvent():
return sendPollMessage(_that);case SendEventMessageEvent():
return sendEventMessage(_that);case EditChatMessageEvent():
return editMessage(_that);case DeleteChatMessageEvent():
return deleteMessage(_that);case MarkConversationReadEvent():
return markConversationRead(_that);case ClearChatMessagesInfoEvent():
return clearInfo(_that);case StartWatchMessagesEvent():
return startWatch(_that);case StopWatchMessagesEvent():
return stopWatch(_that);case WatchMessageArrivedEvent():
return watchMessageArrived(_that);case WatchMessageUpdatedEvent():
return watchMessageUpdated(_that);case WatchMessageDeletedEvent():
return watchMessageDeleted(_that);case WatchMessageErrorEvent():
return watchMessageError(_that);case LoadConversationListEvent():
return loadConversationList(_that);case SetChatFilterEvent():
return setChatFilter(_that);case SetSearchQueryEvent():
return setSearchQuery(_that);case RefreshConversationListEvent():
return refreshConversationList(_that);case UpdateConversationLocallyEvent():
return updateConversationLocally(_that);case LoadMessageReadsEvent():
return loadMessageReads(_that);case MarkMessageReadEvent():
return markMessageRead(_that);case MarkMessagesReadBatchEvent():
return markMessagesReadBatch(_that);case StartWatchReadsEvent():
return startWatchReads(_that);case StopWatchReadsEvent():
return stopWatchReads(_that);case WatchReadArrivedEvent():
return watchReadArrived(_that);case VotePollEvent():
return votePoll(_that);case UnvotePollEvent():
return unvotePoll(_that);case RespondToEventEvent():
return respondToEvent(_that);case CancelEventRsvpEvent():
return cancelEventRsvp(_that);case SendTypingEvent():
return sendTyping(_that);case StartWatchTypingEvent():
return startWatchTyping(_that);case StopWatchTypingEvent():
return stopWatchTyping(_that);case WatchTypingArrivedEvent():
return watchTypingArrived(_that);case CleanupTypingEvent():
return cleanupTyping(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitializeChatEvent value)?  initializeChat,TResult? Function( LoadChatMessagesEvent value)?  loadMessages,TResult? Function( LoadMoreChatMessagesEvent value)?  loadMoreMessages,TResult? Function( SendChatMessageEvent value)?  sendMessage,TResult? Function( SendMediaMessageEvent value)?  sendMediaMessage,TResult? Function( UploadAndSendImagesEvent value)?  uploadAndSendImages,TResult? Function( UploadAndSendVideoEvent value)?  uploadAndSendVideo,TResult? Function( UploadAndSendDocumentsEvent value)?  uploadAndSendDocuments,TResult? Function( UploadAndSendAudioEvent value)?  uploadAndSendAudio,TResult? Function( SendPollMessageEvent value)?  sendPollMessage,TResult? Function( SendEventMessageEvent value)?  sendEventMessage,TResult? Function( EditChatMessageEvent value)?  editMessage,TResult? Function( DeleteChatMessageEvent value)?  deleteMessage,TResult? Function( MarkConversationReadEvent value)?  markConversationRead,TResult? Function( ClearChatMessagesInfoEvent value)?  clearInfo,TResult? Function( StartWatchMessagesEvent value)?  startWatch,TResult? Function( StopWatchMessagesEvent value)?  stopWatch,TResult? Function( WatchMessageArrivedEvent value)?  watchMessageArrived,TResult? Function( WatchMessageUpdatedEvent value)?  watchMessageUpdated,TResult? Function( WatchMessageDeletedEvent value)?  watchMessageDeleted,TResult? Function( WatchMessageErrorEvent value)?  watchMessageError,TResult? Function( LoadConversationListEvent value)?  loadConversationList,TResult? Function( SetChatFilterEvent value)?  setChatFilter,TResult? Function( SetSearchQueryEvent value)?  setSearchQuery,TResult? Function( RefreshConversationListEvent value)?  refreshConversationList,TResult? Function( UpdateConversationLocallyEvent value)?  updateConversationLocally,TResult? Function( LoadMessageReadsEvent value)?  loadMessageReads,TResult? Function( MarkMessageReadEvent value)?  markMessageRead,TResult? Function( MarkMessagesReadBatchEvent value)?  markMessagesReadBatch,TResult? Function( StartWatchReadsEvent value)?  startWatchReads,TResult? Function( StopWatchReadsEvent value)?  stopWatchReads,TResult? Function( WatchReadArrivedEvent value)?  watchReadArrived,TResult? Function( VotePollEvent value)?  votePoll,TResult? Function( UnvotePollEvent value)?  unvotePoll,TResult? Function( RespondToEventEvent value)?  respondToEvent,TResult? Function( CancelEventRsvpEvent value)?  cancelEventRsvp,TResult? Function( SendTypingEvent value)?  sendTyping,TResult? Function( StartWatchTypingEvent value)?  startWatchTyping,TResult? Function( StopWatchTypingEvent value)?  stopWatchTyping,TResult? Function( WatchTypingArrivedEvent value)?  watchTypingArrived,TResult? Function( CleanupTypingEvent value)?  cleanupTyping,}){
final _that = this;
switch (_that) {
case InitializeChatEvent() when initializeChat != null:
return initializeChat(_that);case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that);case SendMediaMessageEvent() when sendMediaMessage != null:
return sendMediaMessage(_that);case UploadAndSendImagesEvent() when uploadAndSendImages != null:
return uploadAndSendImages(_that);case UploadAndSendVideoEvent() when uploadAndSendVideo != null:
return uploadAndSendVideo(_that);case UploadAndSendDocumentsEvent() when uploadAndSendDocuments != null:
return uploadAndSendDocuments(_that);case UploadAndSendAudioEvent() when uploadAndSendAudio != null:
return uploadAndSendAudio(_that);case SendPollMessageEvent() when sendPollMessage != null:
return sendPollMessage(_that);case SendEventMessageEvent() when sendEventMessage != null:
return sendEventMessage(_that);case EditChatMessageEvent() when editMessage != null:
return editMessage(_that);case DeleteChatMessageEvent() when deleteMessage != null:
return deleteMessage(_that);case MarkConversationReadEvent() when markConversationRead != null:
return markConversationRead(_that);case ClearChatMessagesInfoEvent() when clearInfo != null:
return clearInfo(_that);case StartWatchMessagesEvent() when startWatch != null:
return startWatch(_that);case StopWatchMessagesEvent() when stopWatch != null:
return stopWatch(_that);case WatchMessageArrivedEvent() when watchMessageArrived != null:
return watchMessageArrived(_that);case WatchMessageUpdatedEvent() when watchMessageUpdated != null:
return watchMessageUpdated(_that);case WatchMessageDeletedEvent() when watchMessageDeleted != null:
return watchMessageDeleted(_that);case WatchMessageErrorEvent() when watchMessageError != null:
return watchMessageError(_that);case LoadConversationListEvent() when loadConversationList != null:
return loadConversationList(_that);case SetChatFilterEvent() when setChatFilter != null:
return setChatFilter(_that);case SetSearchQueryEvent() when setSearchQuery != null:
return setSearchQuery(_that);case RefreshConversationListEvent() when refreshConversationList != null:
return refreshConversationList(_that);case UpdateConversationLocallyEvent() when updateConversationLocally != null:
return updateConversationLocally(_that);case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that);case MarkMessagesReadBatchEvent() when markMessagesReadBatch != null:
return markMessagesReadBatch(_that);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads(_that);case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that);case VotePollEvent() when votePoll != null:
return votePoll(_that);case UnvotePollEvent() when unvotePoll != null:
return unvotePoll(_that);case RespondToEventEvent() when respondToEvent != null:
return respondToEvent(_that);case CancelEventRsvpEvent() when cancelEventRsvp != null:
return cancelEventRsvp(_that);case SendTypingEvent() when sendTyping != null:
return sendTyping(_that);case StartWatchTypingEvent() when startWatchTyping != null:
return startWatchTyping(_that);case StopWatchTypingEvent() when stopWatchTyping != null:
return stopWatchTyping(_that);case WatchTypingArrivedEvent() when watchTypingArrived != null:
return watchTypingArrived(_that);case CleanupTypingEvent() when cleanupTyping != null:
return cleanupTyping(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String conversationId,  String? peerUserId,  int? limit)?  initializeChat,TResult Function( String conversationId,  int? limit)?  loadMessages,TResult Function( String conversationId,  int limit)?  loadMoreMessages,TResult Function( String conversationId,  String content,  String? replyToMessageId)?  sendMessage,TResult Function( String conversationId,  String mediaUrl,  String mediaType,  String? mimeType,  String? fileName,  int? fileSize,  String? caption)?  sendMediaMessage,TResult Function( String conversationId,  List<String> filePaths,  String userId,  String? caption)?  uploadAndSendImages,TResult Function( String conversationId,  String filePath,  String userId,  String? caption)?  uploadAndSendVideo,TResult Function( String conversationId,  List<String> filePaths,  String userId)?  uploadAndSendDocuments,TResult Function( String conversationId,  String filePath,  String userId,  bool isVoiceMessage)?  uploadAndSendAudio,TResult Function( String conversationId,  String question,  List<String> options,  bool multipleChoice,  int maxUserVotes)?  sendPollMessage,TResult Function( String conversationId,  String title,  String? description,  String? locationName,  String? address,  bool isOnline,  String? meetingUrl,  String? coverUrl,  DateTime startDate,  DateTime endDate)?  sendEventMessage,TResult Function( String messageId,  String newContent)?  editMessage,TResult Function( String messageId)?  deleteMessage,TResult Function( String conversationId,  String? uptoMessageId)?  markConversationRead,TResult Function()?  clearInfo,TResult Function( String conversationId)?  startWatch,TResult Function()?  stopWatch,TResult Function( ChatMessageEntity message)?  watchMessageArrived,TResult Function( ChatMessageEntity message)?  watchMessageUpdated,TResult Function( ChatMessageEntity message)?  watchMessageDeleted,TResult Function( String message)?  watchMessageError,TResult Function()?  loadConversationList,TResult Function( String filter)?  setChatFilter,TResult Function( String query)?  setSearchQuery,TResult Function()?  refreshConversationList,TResult Function( String conversationId,  String? lastMessageBody,  DateTime? lastMessageAt,  String? lastMessageSenderId,  int? unreadCountDelta)?  updateConversationLocally,TResult Function( String messageId)?  loadMessageReads,TResult Function( String messageId)?  markMessageRead,TResult Function( List<String> messageIds)?  markMessagesReadBatch,TResult Function( String conversationId)?  startWatchReads,TResult Function()?  stopWatchReads,TResult Function( MessageReadEntity readEntity)?  watchReadArrived,TResult Function( String pollMessageId,  String optionId)?  votePoll,TResult Function( String optionId)?  unvotePoll,TResult Function( String eventMessageId,  String status)?  respondToEvent,TResult Function( String eventMessageId)?  cancelEventRsvp,TResult Function( String conversationId,  bool isTyping)?  sendTyping,TResult Function( String conversationId)?  startWatchTyping,TResult Function()?  stopWatchTyping,TResult Function( String userId)?  watchTypingArrived,TResult Function()?  cleanupTyping,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitializeChatEvent() when initializeChat != null:
return initializeChat(_that.conversationId,_that.peerUserId,_that.limit);case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that.conversationId,_that.limit);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that.conversationId,_that.limit);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that.conversationId,_that.content,_that.replyToMessageId);case SendMediaMessageEvent() when sendMediaMessage != null:
return sendMediaMessage(_that.conversationId,_that.mediaUrl,_that.mediaType,_that.mimeType,_that.fileName,_that.fileSize,_that.caption);case UploadAndSendImagesEvent() when uploadAndSendImages != null:
return uploadAndSendImages(_that.conversationId,_that.filePaths,_that.userId,_that.caption);case UploadAndSendVideoEvent() when uploadAndSendVideo != null:
return uploadAndSendVideo(_that.conversationId,_that.filePath,_that.userId,_that.caption);case UploadAndSendDocumentsEvent() when uploadAndSendDocuments != null:
return uploadAndSendDocuments(_that.conversationId,_that.filePaths,_that.userId);case UploadAndSendAudioEvent() when uploadAndSendAudio != null:
return uploadAndSendAudio(_that.conversationId,_that.filePath,_that.userId,_that.isVoiceMessage);case SendPollMessageEvent() when sendPollMessage != null:
return sendPollMessage(_that.conversationId,_that.question,_that.options,_that.multipleChoice,_that.maxUserVotes);case SendEventMessageEvent() when sendEventMessage != null:
return sendEventMessage(_that.conversationId,_that.title,_that.description,_that.locationName,_that.address,_that.isOnline,_that.meetingUrl,_that.coverUrl,_that.startDate,_that.endDate);case EditChatMessageEvent() when editMessage != null:
return editMessage(_that.messageId,_that.newContent);case DeleteChatMessageEvent() when deleteMessage != null:
return deleteMessage(_that.messageId);case MarkConversationReadEvent() when markConversationRead != null:
return markConversationRead(_that.conversationId,_that.uptoMessageId);case ClearChatMessagesInfoEvent() when clearInfo != null:
return clearInfo();case StartWatchMessagesEvent() when startWatch != null:
return startWatch(_that.conversationId);case StopWatchMessagesEvent() when stopWatch != null:
return stopWatch();case WatchMessageArrivedEvent() when watchMessageArrived != null:
return watchMessageArrived(_that.message);case WatchMessageUpdatedEvent() when watchMessageUpdated != null:
return watchMessageUpdated(_that.message);case WatchMessageDeletedEvent() when watchMessageDeleted != null:
return watchMessageDeleted(_that.message);case WatchMessageErrorEvent() when watchMessageError != null:
return watchMessageError(_that.message);case LoadConversationListEvent() when loadConversationList != null:
return loadConversationList();case SetChatFilterEvent() when setChatFilter != null:
return setChatFilter(_that.filter);case SetSearchQueryEvent() when setSearchQuery != null:
return setSearchQuery(_that.query);case RefreshConversationListEvent() when refreshConversationList != null:
return refreshConversationList();case UpdateConversationLocallyEvent() when updateConversationLocally != null:
return updateConversationLocally(_that.conversationId,_that.lastMessageBody,_that.lastMessageAt,_that.lastMessageSenderId,_that.unreadCountDelta);case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that.messageId);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that.messageId);case MarkMessagesReadBatchEvent() when markMessagesReadBatch != null:
return markMessagesReadBatch(_that.messageIds);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that.conversationId);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads();case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that.readEntity);case VotePollEvent() when votePoll != null:
return votePoll(_that.pollMessageId,_that.optionId);case UnvotePollEvent() when unvotePoll != null:
return unvotePoll(_that.optionId);case RespondToEventEvent() when respondToEvent != null:
return respondToEvent(_that.eventMessageId,_that.status);case CancelEventRsvpEvent() when cancelEventRsvp != null:
return cancelEventRsvp(_that.eventMessageId);case SendTypingEvent() when sendTyping != null:
return sendTyping(_that.conversationId,_that.isTyping);case StartWatchTypingEvent() when startWatchTyping != null:
return startWatchTyping(_that.conversationId);case StopWatchTypingEvent() when stopWatchTyping != null:
return stopWatchTyping();case WatchTypingArrivedEvent() when watchTypingArrived != null:
return watchTypingArrived(_that.userId);case CleanupTypingEvent() when cleanupTyping != null:
return cleanupTyping();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String conversationId,  String? peerUserId,  int? limit)  initializeChat,required TResult Function( String conversationId,  int? limit)  loadMessages,required TResult Function( String conversationId,  int limit)  loadMoreMessages,required TResult Function( String conversationId,  String content,  String? replyToMessageId)  sendMessage,required TResult Function( String conversationId,  String mediaUrl,  String mediaType,  String? mimeType,  String? fileName,  int? fileSize,  String? caption)  sendMediaMessage,required TResult Function( String conversationId,  List<String> filePaths,  String userId,  String? caption)  uploadAndSendImages,required TResult Function( String conversationId,  String filePath,  String userId,  String? caption)  uploadAndSendVideo,required TResult Function( String conversationId,  List<String> filePaths,  String userId)  uploadAndSendDocuments,required TResult Function( String conversationId,  String filePath,  String userId,  bool isVoiceMessage)  uploadAndSendAudio,required TResult Function( String conversationId,  String question,  List<String> options,  bool multipleChoice,  int maxUserVotes)  sendPollMessage,required TResult Function( String conversationId,  String title,  String? description,  String? locationName,  String? address,  bool isOnline,  String? meetingUrl,  String? coverUrl,  DateTime startDate,  DateTime endDate)  sendEventMessage,required TResult Function( String messageId,  String newContent)  editMessage,required TResult Function( String messageId)  deleteMessage,required TResult Function( String conversationId,  String? uptoMessageId)  markConversationRead,required TResult Function()  clearInfo,required TResult Function( String conversationId)  startWatch,required TResult Function()  stopWatch,required TResult Function( ChatMessageEntity message)  watchMessageArrived,required TResult Function( ChatMessageEntity message)  watchMessageUpdated,required TResult Function( ChatMessageEntity message)  watchMessageDeleted,required TResult Function( String message)  watchMessageError,required TResult Function()  loadConversationList,required TResult Function( String filter)  setChatFilter,required TResult Function( String query)  setSearchQuery,required TResult Function()  refreshConversationList,required TResult Function( String conversationId,  String? lastMessageBody,  DateTime? lastMessageAt,  String? lastMessageSenderId,  int? unreadCountDelta)  updateConversationLocally,required TResult Function( String messageId)  loadMessageReads,required TResult Function( String messageId)  markMessageRead,required TResult Function( List<String> messageIds)  markMessagesReadBatch,required TResult Function( String conversationId)  startWatchReads,required TResult Function()  stopWatchReads,required TResult Function( MessageReadEntity readEntity)  watchReadArrived,required TResult Function( String pollMessageId,  String optionId)  votePoll,required TResult Function( String optionId)  unvotePoll,required TResult Function( String eventMessageId,  String status)  respondToEvent,required TResult Function( String eventMessageId)  cancelEventRsvp,required TResult Function( String conversationId,  bool isTyping)  sendTyping,required TResult Function( String conversationId)  startWatchTyping,required TResult Function()  stopWatchTyping,required TResult Function( String userId)  watchTypingArrived,required TResult Function()  cleanupTyping,}) {final _that = this;
switch (_that) {
case InitializeChatEvent():
return initializeChat(_that.conversationId,_that.peerUserId,_that.limit);case LoadChatMessagesEvent():
return loadMessages(_that.conversationId,_that.limit);case LoadMoreChatMessagesEvent():
return loadMoreMessages(_that.conversationId,_that.limit);case SendChatMessageEvent():
return sendMessage(_that.conversationId,_that.content,_that.replyToMessageId);case SendMediaMessageEvent():
return sendMediaMessage(_that.conversationId,_that.mediaUrl,_that.mediaType,_that.mimeType,_that.fileName,_that.fileSize,_that.caption);case UploadAndSendImagesEvent():
return uploadAndSendImages(_that.conversationId,_that.filePaths,_that.userId,_that.caption);case UploadAndSendVideoEvent():
return uploadAndSendVideo(_that.conversationId,_that.filePath,_that.userId,_that.caption);case UploadAndSendDocumentsEvent():
return uploadAndSendDocuments(_that.conversationId,_that.filePaths,_that.userId);case UploadAndSendAudioEvent():
return uploadAndSendAudio(_that.conversationId,_that.filePath,_that.userId,_that.isVoiceMessage);case SendPollMessageEvent():
return sendPollMessage(_that.conversationId,_that.question,_that.options,_that.multipleChoice,_that.maxUserVotes);case SendEventMessageEvent():
return sendEventMessage(_that.conversationId,_that.title,_that.description,_that.locationName,_that.address,_that.isOnline,_that.meetingUrl,_that.coverUrl,_that.startDate,_that.endDate);case EditChatMessageEvent():
return editMessage(_that.messageId,_that.newContent);case DeleteChatMessageEvent():
return deleteMessage(_that.messageId);case MarkConversationReadEvent():
return markConversationRead(_that.conversationId,_that.uptoMessageId);case ClearChatMessagesInfoEvent():
return clearInfo();case StartWatchMessagesEvent():
return startWatch(_that.conversationId);case StopWatchMessagesEvent():
return stopWatch();case WatchMessageArrivedEvent():
return watchMessageArrived(_that.message);case WatchMessageUpdatedEvent():
return watchMessageUpdated(_that.message);case WatchMessageDeletedEvent():
return watchMessageDeleted(_that.message);case WatchMessageErrorEvent():
return watchMessageError(_that.message);case LoadConversationListEvent():
return loadConversationList();case SetChatFilterEvent():
return setChatFilter(_that.filter);case SetSearchQueryEvent():
return setSearchQuery(_that.query);case RefreshConversationListEvent():
return refreshConversationList();case UpdateConversationLocallyEvent():
return updateConversationLocally(_that.conversationId,_that.lastMessageBody,_that.lastMessageAt,_that.lastMessageSenderId,_that.unreadCountDelta);case LoadMessageReadsEvent():
return loadMessageReads(_that.messageId);case MarkMessageReadEvent():
return markMessageRead(_that.messageId);case MarkMessagesReadBatchEvent():
return markMessagesReadBatch(_that.messageIds);case StartWatchReadsEvent():
return startWatchReads(_that.conversationId);case StopWatchReadsEvent():
return stopWatchReads();case WatchReadArrivedEvent():
return watchReadArrived(_that.readEntity);case VotePollEvent():
return votePoll(_that.pollMessageId,_that.optionId);case UnvotePollEvent():
return unvotePoll(_that.optionId);case RespondToEventEvent():
return respondToEvent(_that.eventMessageId,_that.status);case CancelEventRsvpEvent():
return cancelEventRsvp(_that.eventMessageId);case SendTypingEvent():
return sendTyping(_that.conversationId,_that.isTyping);case StartWatchTypingEvent():
return startWatchTyping(_that.conversationId);case StopWatchTypingEvent():
return stopWatchTyping();case WatchTypingArrivedEvent():
return watchTypingArrived(_that.userId);case CleanupTypingEvent():
return cleanupTyping();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String conversationId,  String? peerUserId,  int? limit)?  initializeChat,TResult? Function( String conversationId,  int? limit)?  loadMessages,TResult? Function( String conversationId,  int limit)?  loadMoreMessages,TResult? Function( String conversationId,  String content,  String? replyToMessageId)?  sendMessage,TResult? Function( String conversationId,  String mediaUrl,  String mediaType,  String? mimeType,  String? fileName,  int? fileSize,  String? caption)?  sendMediaMessage,TResult? Function( String conversationId,  List<String> filePaths,  String userId,  String? caption)?  uploadAndSendImages,TResult? Function( String conversationId,  String filePath,  String userId,  String? caption)?  uploadAndSendVideo,TResult? Function( String conversationId,  List<String> filePaths,  String userId)?  uploadAndSendDocuments,TResult? Function( String conversationId,  String filePath,  String userId,  bool isVoiceMessage)?  uploadAndSendAudio,TResult? Function( String conversationId,  String question,  List<String> options,  bool multipleChoice,  int maxUserVotes)?  sendPollMessage,TResult? Function( String conversationId,  String title,  String? description,  String? locationName,  String? address,  bool isOnline,  String? meetingUrl,  String? coverUrl,  DateTime startDate,  DateTime endDate)?  sendEventMessage,TResult? Function( String messageId,  String newContent)?  editMessage,TResult? Function( String messageId)?  deleteMessage,TResult? Function( String conversationId,  String? uptoMessageId)?  markConversationRead,TResult? Function()?  clearInfo,TResult? Function( String conversationId)?  startWatch,TResult? Function()?  stopWatch,TResult? Function( ChatMessageEntity message)?  watchMessageArrived,TResult? Function( ChatMessageEntity message)?  watchMessageUpdated,TResult? Function( ChatMessageEntity message)?  watchMessageDeleted,TResult? Function( String message)?  watchMessageError,TResult? Function()?  loadConversationList,TResult? Function( String filter)?  setChatFilter,TResult? Function( String query)?  setSearchQuery,TResult? Function()?  refreshConversationList,TResult? Function( String conversationId,  String? lastMessageBody,  DateTime? lastMessageAt,  String? lastMessageSenderId,  int? unreadCountDelta)?  updateConversationLocally,TResult? Function( String messageId)?  loadMessageReads,TResult? Function( String messageId)?  markMessageRead,TResult? Function( List<String> messageIds)?  markMessagesReadBatch,TResult? Function( String conversationId)?  startWatchReads,TResult? Function()?  stopWatchReads,TResult? Function( MessageReadEntity readEntity)?  watchReadArrived,TResult? Function( String pollMessageId,  String optionId)?  votePoll,TResult? Function( String optionId)?  unvotePoll,TResult? Function( String eventMessageId,  String status)?  respondToEvent,TResult? Function( String eventMessageId)?  cancelEventRsvp,TResult? Function( String conversationId,  bool isTyping)?  sendTyping,TResult? Function( String conversationId)?  startWatchTyping,TResult? Function()?  stopWatchTyping,TResult? Function( String userId)?  watchTypingArrived,TResult? Function()?  cleanupTyping,}) {final _that = this;
switch (_that) {
case InitializeChatEvent() when initializeChat != null:
return initializeChat(_that.conversationId,_that.peerUserId,_that.limit);case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that.conversationId,_that.limit);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that.conversationId,_that.limit);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that.conversationId,_that.content,_that.replyToMessageId);case SendMediaMessageEvent() when sendMediaMessage != null:
return sendMediaMessage(_that.conversationId,_that.mediaUrl,_that.mediaType,_that.mimeType,_that.fileName,_that.fileSize,_that.caption);case UploadAndSendImagesEvent() when uploadAndSendImages != null:
return uploadAndSendImages(_that.conversationId,_that.filePaths,_that.userId,_that.caption);case UploadAndSendVideoEvent() when uploadAndSendVideo != null:
return uploadAndSendVideo(_that.conversationId,_that.filePath,_that.userId,_that.caption);case UploadAndSendDocumentsEvent() when uploadAndSendDocuments != null:
return uploadAndSendDocuments(_that.conversationId,_that.filePaths,_that.userId);case UploadAndSendAudioEvent() when uploadAndSendAudio != null:
return uploadAndSendAudio(_that.conversationId,_that.filePath,_that.userId,_that.isVoiceMessage);case SendPollMessageEvent() when sendPollMessage != null:
return sendPollMessage(_that.conversationId,_that.question,_that.options,_that.multipleChoice,_that.maxUserVotes);case SendEventMessageEvent() when sendEventMessage != null:
return sendEventMessage(_that.conversationId,_that.title,_that.description,_that.locationName,_that.address,_that.isOnline,_that.meetingUrl,_that.coverUrl,_that.startDate,_that.endDate);case EditChatMessageEvent() when editMessage != null:
return editMessage(_that.messageId,_that.newContent);case DeleteChatMessageEvent() when deleteMessage != null:
return deleteMessage(_that.messageId);case MarkConversationReadEvent() when markConversationRead != null:
return markConversationRead(_that.conversationId,_that.uptoMessageId);case ClearChatMessagesInfoEvent() when clearInfo != null:
return clearInfo();case StartWatchMessagesEvent() when startWatch != null:
return startWatch(_that.conversationId);case StopWatchMessagesEvent() when stopWatch != null:
return stopWatch();case WatchMessageArrivedEvent() when watchMessageArrived != null:
return watchMessageArrived(_that.message);case WatchMessageUpdatedEvent() when watchMessageUpdated != null:
return watchMessageUpdated(_that.message);case WatchMessageDeletedEvent() when watchMessageDeleted != null:
return watchMessageDeleted(_that.message);case WatchMessageErrorEvent() when watchMessageError != null:
return watchMessageError(_that.message);case LoadConversationListEvent() when loadConversationList != null:
return loadConversationList();case SetChatFilterEvent() when setChatFilter != null:
return setChatFilter(_that.filter);case SetSearchQueryEvent() when setSearchQuery != null:
return setSearchQuery(_that.query);case RefreshConversationListEvent() when refreshConversationList != null:
return refreshConversationList();case UpdateConversationLocallyEvent() when updateConversationLocally != null:
return updateConversationLocally(_that.conversationId,_that.lastMessageBody,_that.lastMessageAt,_that.lastMessageSenderId,_that.unreadCountDelta);case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that.messageId);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that.messageId);case MarkMessagesReadBatchEvent() when markMessagesReadBatch != null:
return markMessagesReadBatch(_that.messageIds);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that.conversationId);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads();case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that.readEntity);case VotePollEvent() when votePoll != null:
return votePoll(_that.pollMessageId,_that.optionId);case UnvotePollEvent() when unvotePoll != null:
return unvotePoll(_that.optionId);case RespondToEventEvent() when respondToEvent != null:
return respondToEvent(_that.eventMessageId,_that.status);case CancelEventRsvpEvent() when cancelEventRsvp != null:
return cancelEventRsvp(_that.eventMessageId);case SendTypingEvent() when sendTyping != null:
return sendTyping(_that.conversationId,_that.isTyping);case StartWatchTypingEvent() when startWatchTyping != null:
return startWatchTyping(_that.conversationId);case StopWatchTypingEvent() when stopWatchTyping != null:
return stopWatchTyping();case WatchTypingArrivedEvent() when watchTypingArrived != null:
return watchTypingArrived(_that.userId);case CleanupTypingEvent() when cleanupTyping != null:
return cleanupTyping();case _:
  return null;

}
}

}

/// @nodoc


class InitializeChatEvent implements ChatMessageEvent {
  const InitializeChatEvent({required this.conversationId, this.peerUserId, this.limit});
  

 final  String conversationId;
 final  String? peerUserId;
 final  int? limit;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitializeChatEventCopyWith<InitializeChatEvent> get copyWith => _$InitializeChatEventCopyWithImpl<InitializeChatEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitializeChatEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.peerUserId, peerUserId) || other.peerUserId == peerUserId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,peerUserId,limit);

@override
String toString() {
  return 'ChatMessageEvent.initializeChat(conversationId: $conversationId, peerUserId: $peerUserId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $InitializeChatEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $InitializeChatEventCopyWith(InitializeChatEvent value, $Res Function(InitializeChatEvent) _then) = _$InitializeChatEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String? peerUserId, int? limit
});




}
/// @nodoc
class _$InitializeChatEventCopyWithImpl<$Res>
    implements $InitializeChatEventCopyWith<$Res> {
  _$InitializeChatEventCopyWithImpl(this._self, this._then);

  final InitializeChatEvent _self;
  final $Res Function(InitializeChatEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? peerUserId = freezed,Object? limit = freezed,}) {
  return _then(InitializeChatEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,peerUserId: freezed == peerUserId ? _self.peerUserId : peerUserId // ignore: cast_nullable_to_non_nullable
as String?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class LoadChatMessagesEvent implements ChatMessageEvent {
  const LoadChatMessagesEvent({required this.conversationId, this.limit});
  

 final  String conversationId;
 final  int? limit;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadChatMessagesEventCopyWith<LoadChatMessagesEvent> get copyWith => _$LoadChatMessagesEventCopyWithImpl<LoadChatMessagesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadChatMessagesEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,limit);

@override
String toString() {
  return 'ChatMessageEvent.loadMessages(conversationId: $conversationId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadChatMessagesEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $LoadChatMessagesEventCopyWith(LoadChatMessagesEvent value, $Res Function(LoadChatMessagesEvent) _then) = _$LoadChatMessagesEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, int? limit
});




}
/// @nodoc
class _$LoadChatMessagesEventCopyWithImpl<$Res>
    implements $LoadChatMessagesEventCopyWith<$Res> {
  _$LoadChatMessagesEventCopyWithImpl(this._self, this._then);

  final LoadChatMessagesEvent _self;
  final $Res Function(LoadChatMessagesEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? limit = freezed,}) {
  return _then(LoadChatMessagesEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class LoadMoreChatMessagesEvent implements ChatMessageEvent {
  const LoadMoreChatMessagesEvent({required this.conversationId, required this.limit});
  

 final  String conversationId;
 final  int limit;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreChatMessagesEventCopyWith<LoadMoreChatMessagesEvent> get copyWith => _$LoadMoreChatMessagesEventCopyWithImpl<LoadMoreChatMessagesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreChatMessagesEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,limit);

@override
String toString() {
  return 'ChatMessageEvent.loadMoreMessages(conversationId: $conversationId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadMoreChatMessagesEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $LoadMoreChatMessagesEventCopyWith(LoadMoreChatMessagesEvent value, $Res Function(LoadMoreChatMessagesEvent) _then) = _$LoadMoreChatMessagesEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, int limit
});




}
/// @nodoc
class _$LoadMoreChatMessagesEventCopyWithImpl<$Res>
    implements $LoadMoreChatMessagesEventCopyWith<$Res> {
  _$LoadMoreChatMessagesEventCopyWithImpl(this._self, this._then);

  final LoadMoreChatMessagesEvent _self;
  final $Res Function(LoadMoreChatMessagesEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? limit = null,}) {
  return _then(LoadMoreChatMessagesEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SendChatMessageEvent implements ChatMessageEvent {
  const SendChatMessageEvent({required this.conversationId, required this.content, this.replyToMessageId});
  

 final  String conversationId;
 final  String content;
 final  String? replyToMessageId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendChatMessageEventCopyWith<SendChatMessageEvent> get copyWith => _$SendChatMessageEventCopyWithImpl<SendChatMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatMessageEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.content, content) || other.content == content)&&(identical(other.replyToMessageId, replyToMessageId) || other.replyToMessageId == replyToMessageId));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,content,replyToMessageId);

@override
String toString() {
  return 'ChatMessageEvent.sendMessage(conversationId: $conversationId, content: $content, replyToMessageId: $replyToMessageId)';
}


}

/// @nodoc
abstract mixin class $SendChatMessageEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $SendChatMessageEventCopyWith(SendChatMessageEvent value, $Res Function(SendChatMessageEvent) _then) = _$SendChatMessageEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String content, String? replyToMessageId
});




}
/// @nodoc
class _$SendChatMessageEventCopyWithImpl<$Res>
    implements $SendChatMessageEventCopyWith<$Res> {
  _$SendChatMessageEventCopyWithImpl(this._self, this._then);

  final SendChatMessageEvent _self;
  final $Res Function(SendChatMessageEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? content = null,Object? replyToMessageId = freezed,}) {
  return _then(SendChatMessageEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,replyToMessageId: freezed == replyToMessageId ? _self.replyToMessageId : replyToMessageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SendMediaMessageEvent implements ChatMessageEvent {
  const SendMediaMessageEvent({required this.conversationId, required this.mediaUrl, required this.mediaType, this.mimeType, this.fileName, this.fileSize, this.caption});
  

 final  String conversationId;
 final  String mediaUrl;
 final  String mediaType;
// 'image', 'video', 'document', 'audio'
 final  String? mimeType;
 final  String? fileName;
 final  int? fileSize;
 final  String? caption;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMediaMessageEventCopyWith<SendMediaMessageEvent> get copyWith => _$SendMediaMessageEventCopyWithImpl<SendMediaMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMediaMessageEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.caption, caption) || other.caption == caption));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,mediaUrl,mediaType,mimeType,fileName,fileSize,caption);

@override
String toString() {
  return 'ChatMessageEvent.sendMediaMessage(conversationId: $conversationId, mediaUrl: $mediaUrl, mediaType: $mediaType, mimeType: $mimeType, fileName: $fileName, fileSize: $fileSize, caption: $caption)';
}


}

/// @nodoc
abstract mixin class $SendMediaMessageEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $SendMediaMessageEventCopyWith(SendMediaMessageEvent value, $Res Function(SendMediaMessageEvent) _then) = _$SendMediaMessageEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String mediaUrl, String mediaType, String? mimeType, String? fileName, int? fileSize, String? caption
});




}
/// @nodoc
class _$SendMediaMessageEventCopyWithImpl<$Res>
    implements $SendMediaMessageEventCopyWith<$Res> {
  _$SendMediaMessageEventCopyWithImpl(this._self, this._then);

  final SendMediaMessageEvent _self;
  final $Res Function(SendMediaMessageEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? mediaUrl = null,Object? mediaType = null,Object? mimeType = freezed,Object? fileName = freezed,Object? fileSize = freezed,Object? caption = freezed,}) {
  return _then(SendMediaMessageEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UploadAndSendImagesEvent implements ChatMessageEvent {
  const UploadAndSendImagesEvent({required this.conversationId, required final  List<String> filePaths, required this.userId, this.caption}): _filePaths = filePaths;
  

 final  String conversationId;
 final  List<String> _filePaths;
 List<String> get filePaths {
  if (_filePaths is EqualUnmodifiableListView) return _filePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filePaths);
}

 final  String userId;
 final  String? caption;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadAndSendImagesEventCopyWith<UploadAndSendImagesEvent> get copyWith => _$UploadAndSendImagesEventCopyWithImpl<UploadAndSendImagesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadAndSendImagesEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&const DeepCollectionEquality().equals(other._filePaths, _filePaths)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.caption, caption) || other.caption == caption));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,const DeepCollectionEquality().hash(_filePaths),userId,caption);

@override
String toString() {
  return 'ChatMessageEvent.uploadAndSendImages(conversationId: $conversationId, filePaths: $filePaths, userId: $userId, caption: $caption)';
}


}

/// @nodoc
abstract mixin class $UploadAndSendImagesEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $UploadAndSendImagesEventCopyWith(UploadAndSendImagesEvent value, $Res Function(UploadAndSendImagesEvent) _then) = _$UploadAndSendImagesEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, List<String> filePaths, String userId, String? caption
});




}
/// @nodoc
class _$UploadAndSendImagesEventCopyWithImpl<$Res>
    implements $UploadAndSendImagesEventCopyWith<$Res> {
  _$UploadAndSendImagesEventCopyWithImpl(this._self, this._then);

  final UploadAndSendImagesEvent _self;
  final $Res Function(UploadAndSendImagesEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? filePaths = null,Object? userId = null,Object? caption = freezed,}) {
  return _then(UploadAndSendImagesEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,filePaths: null == filePaths ? _self._filePaths : filePaths // ignore: cast_nullable_to_non_nullable
as List<String>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UploadAndSendVideoEvent implements ChatMessageEvent {
  const UploadAndSendVideoEvent({required this.conversationId, required this.filePath, required this.userId, this.caption});
  

 final  String conversationId;
 final  String filePath;
 final  String userId;
 final  String? caption;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadAndSendVideoEventCopyWith<UploadAndSendVideoEvent> get copyWith => _$UploadAndSendVideoEventCopyWithImpl<UploadAndSendVideoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadAndSendVideoEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.caption, caption) || other.caption == caption));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,filePath,userId,caption);

@override
String toString() {
  return 'ChatMessageEvent.uploadAndSendVideo(conversationId: $conversationId, filePath: $filePath, userId: $userId, caption: $caption)';
}


}

/// @nodoc
abstract mixin class $UploadAndSendVideoEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $UploadAndSendVideoEventCopyWith(UploadAndSendVideoEvent value, $Res Function(UploadAndSendVideoEvent) _then) = _$UploadAndSendVideoEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String filePath, String userId, String? caption
});




}
/// @nodoc
class _$UploadAndSendVideoEventCopyWithImpl<$Res>
    implements $UploadAndSendVideoEventCopyWith<$Res> {
  _$UploadAndSendVideoEventCopyWithImpl(this._self, this._then);

  final UploadAndSendVideoEvent _self;
  final $Res Function(UploadAndSendVideoEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? filePath = null,Object? userId = null,Object? caption = freezed,}) {
  return _then(UploadAndSendVideoEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UploadAndSendDocumentsEvent implements ChatMessageEvent {
  const UploadAndSendDocumentsEvent({required this.conversationId, required final  List<String> filePaths, required this.userId}): _filePaths = filePaths;
  

 final  String conversationId;
 final  List<String> _filePaths;
 List<String> get filePaths {
  if (_filePaths is EqualUnmodifiableListView) return _filePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filePaths);
}

 final  String userId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadAndSendDocumentsEventCopyWith<UploadAndSendDocumentsEvent> get copyWith => _$UploadAndSendDocumentsEventCopyWithImpl<UploadAndSendDocumentsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadAndSendDocumentsEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&const DeepCollectionEquality().equals(other._filePaths, _filePaths)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,const DeepCollectionEquality().hash(_filePaths),userId);

@override
String toString() {
  return 'ChatMessageEvent.uploadAndSendDocuments(conversationId: $conversationId, filePaths: $filePaths, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UploadAndSendDocumentsEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $UploadAndSendDocumentsEventCopyWith(UploadAndSendDocumentsEvent value, $Res Function(UploadAndSendDocumentsEvent) _then) = _$UploadAndSendDocumentsEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, List<String> filePaths, String userId
});




}
/// @nodoc
class _$UploadAndSendDocumentsEventCopyWithImpl<$Res>
    implements $UploadAndSendDocumentsEventCopyWith<$Res> {
  _$UploadAndSendDocumentsEventCopyWithImpl(this._self, this._then);

  final UploadAndSendDocumentsEvent _self;
  final $Res Function(UploadAndSendDocumentsEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? filePaths = null,Object? userId = null,}) {
  return _then(UploadAndSendDocumentsEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,filePaths: null == filePaths ? _self._filePaths : filePaths // ignore: cast_nullable_to_non_nullable
as List<String>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UploadAndSendAudioEvent implements ChatMessageEvent {
  const UploadAndSendAudioEvent({required this.conversationId, required this.filePath, required this.userId, this.isVoiceMessage = false});
  

 final  String conversationId;
 final  String filePath;
 final  String userId;
@JsonKey() final  bool isVoiceMessage;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadAndSendAudioEventCopyWith<UploadAndSendAudioEvent> get copyWith => _$UploadAndSendAudioEventCopyWithImpl<UploadAndSendAudioEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadAndSendAudioEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isVoiceMessage, isVoiceMessage) || other.isVoiceMessage == isVoiceMessage));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,filePath,userId,isVoiceMessage);

@override
String toString() {
  return 'ChatMessageEvent.uploadAndSendAudio(conversationId: $conversationId, filePath: $filePath, userId: $userId, isVoiceMessage: $isVoiceMessage)';
}


}

/// @nodoc
abstract mixin class $UploadAndSendAudioEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $UploadAndSendAudioEventCopyWith(UploadAndSendAudioEvent value, $Res Function(UploadAndSendAudioEvent) _then) = _$UploadAndSendAudioEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String filePath, String userId, bool isVoiceMessage
});




}
/// @nodoc
class _$UploadAndSendAudioEventCopyWithImpl<$Res>
    implements $UploadAndSendAudioEventCopyWith<$Res> {
  _$UploadAndSendAudioEventCopyWithImpl(this._self, this._then);

  final UploadAndSendAudioEvent _self;
  final $Res Function(UploadAndSendAudioEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? filePath = null,Object? userId = null,Object? isVoiceMessage = null,}) {
  return _then(UploadAndSendAudioEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isVoiceMessage: null == isVoiceMessage ? _self.isVoiceMessage : isVoiceMessage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SendPollMessageEvent implements ChatMessageEvent {
  const SendPollMessageEvent({required this.conversationId, required this.question, required final  List<String> options, this.multipleChoice = false, this.maxUserVotes = 1}): _options = options;
  

 final  String conversationId;
 final  String question;
 final  List<String> _options;
 List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@JsonKey() final  bool multipleChoice;
@JsonKey() final  int maxUserVotes;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendPollMessageEventCopyWith<SendPollMessageEvent> get copyWith => _$SendPollMessageEventCopyWithImpl<SendPollMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPollMessageEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.multipleChoice, multipleChoice) || other.multipleChoice == multipleChoice)&&(identical(other.maxUserVotes, maxUserVotes) || other.maxUserVotes == maxUserVotes));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,question,const DeepCollectionEquality().hash(_options),multipleChoice,maxUserVotes);

@override
String toString() {
  return 'ChatMessageEvent.sendPollMessage(conversationId: $conversationId, question: $question, options: $options, multipleChoice: $multipleChoice, maxUserVotes: $maxUserVotes)';
}


}

/// @nodoc
abstract mixin class $SendPollMessageEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $SendPollMessageEventCopyWith(SendPollMessageEvent value, $Res Function(SendPollMessageEvent) _then) = _$SendPollMessageEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String question, List<String> options, bool multipleChoice, int maxUserVotes
});




}
/// @nodoc
class _$SendPollMessageEventCopyWithImpl<$Res>
    implements $SendPollMessageEventCopyWith<$Res> {
  _$SendPollMessageEventCopyWithImpl(this._self, this._then);

  final SendPollMessageEvent _self;
  final $Res Function(SendPollMessageEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? question = null,Object? options = null,Object? multipleChoice = null,Object? maxUserVotes = null,}) {
  return _then(SendPollMessageEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,multipleChoice: null == multipleChoice ? _self.multipleChoice : multipleChoice // ignore: cast_nullable_to_non_nullable
as bool,maxUserVotes: null == maxUserVotes ? _self.maxUserVotes : maxUserVotes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SendEventMessageEvent implements ChatMessageEvent {
  const SendEventMessageEvent({required this.conversationId, required this.title, this.description, this.locationName, this.address, this.isOnline = false, this.meetingUrl, this.coverUrl, required this.startDate, required this.endDate});
  

 final  String conversationId;
 final  String title;
 final  String? description;
 final  String? locationName;
 final  String? address;
@JsonKey() final  bool isOnline;
 final  String? meetingUrl;
 final  String? coverUrl;
 final  DateTime startDate;
 final  DateTime endDate;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendEventMessageEventCopyWith<SendEventMessageEvent> get copyWith => _$SendEventMessageEventCopyWithImpl<SendEventMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendEventMessageEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.meetingUrl, meetingUrl) || other.meetingUrl == meetingUrl)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,title,description,locationName,address,isOnline,meetingUrl,coverUrl,startDate,endDate);

@override
String toString() {
  return 'ChatMessageEvent.sendEventMessage(conversationId: $conversationId, title: $title, description: $description, locationName: $locationName, address: $address, isOnline: $isOnline, meetingUrl: $meetingUrl, coverUrl: $coverUrl, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $SendEventMessageEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $SendEventMessageEventCopyWith(SendEventMessageEvent value, $Res Function(SendEventMessageEvent) _then) = _$SendEventMessageEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String title, String? description, String? locationName, String? address, bool isOnline, String? meetingUrl, String? coverUrl, DateTime startDate, DateTime endDate
});




}
/// @nodoc
class _$SendEventMessageEventCopyWithImpl<$Res>
    implements $SendEventMessageEventCopyWith<$Res> {
  _$SendEventMessageEventCopyWithImpl(this._self, this._then);

  final SendEventMessageEvent _self;
  final $Res Function(SendEventMessageEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? title = null,Object? description = freezed,Object? locationName = freezed,Object? address = freezed,Object? isOnline = null,Object? meetingUrl = freezed,Object? coverUrl = freezed,Object? startDate = null,Object? endDate = null,}) {
  return _then(SendEventMessageEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,meetingUrl: freezed == meetingUrl ? _self.meetingUrl : meetingUrl // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class EditChatMessageEvent implements ChatMessageEvent {
  const EditChatMessageEvent({required this.messageId, required this.newContent});
  

 final  String messageId;
 final  String newContent;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditChatMessageEventCopyWith<EditChatMessageEvent> get copyWith => _$EditChatMessageEventCopyWithImpl<EditChatMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditChatMessageEvent&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.newContent, newContent) || other.newContent == newContent));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,newContent);

@override
String toString() {
  return 'ChatMessageEvent.editMessage(messageId: $messageId, newContent: $newContent)';
}


}

/// @nodoc
abstract mixin class $EditChatMessageEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $EditChatMessageEventCopyWith(EditChatMessageEvent value, $Res Function(EditChatMessageEvent) _then) = _$EditChatMessageEventCopyWithImpl;
@useResult
$Res call({
 String messageId, String newContent
});




}
/// @nodoc
class _$EditChatMessageEventCopyWithImpl<$Res>
    implements $EditChatMessageEventCopyWith<$Res> {
  _$EditChatMessageEventCopyWithImpl(this._self, this._then);

  final EditChatMessageEvent _self;
  final $Res Function(EditChatMessageEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? newContent = null,}) {
  return _then(EditChatMessageEvent(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,newContent: null == newContent ? _self.newContent : newContent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteChatMessageEvent implements ChatMessageEvent {
  const DeleteChatMessageEvent({required this.messageId});
  

 final  String messageId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteChatMessageEventCopyWith<DeleteChatMessageEvent> get copyWith => _$DeleteChatMessageEventCopyWithImpl<DeleteChatMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteChatMessageEvent&&(identical(other.messageId, messageId) || other.messageId == messageId));
}


@override
int get hashCode => Object.hash(runtimeType,messageId);

@override
String toString() {
  return 'ChatMessageEvent.deleteMessage(messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $DeleteChatMessageEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $DeleteChatMessageEventCopyWith(DeleteChatMessageEvent value, $Res Function(DeleteChatMessageEvent) _then) = _$DeleteChatMessageEventCopyWithImpl;
@useResult
$Res call({
 String messageId
});




}
/// @nodoc
class _$DeleteChatMessageEventCopyWithImpl<$Res>
    implements $DeleteChatMessageEventCopyWith<$Res> {
  _$DeleteChatMessageEventCopyWithImpl(this._self, this._then);

  final DeleteChatMessageEvent _self;
  final $Res Function(DeleteChatMessageEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageId = null,}) {
  return _then(DeleteChatMessageEvent(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MarkConversationReadEvent implements ChatMessageEvent {
  const MarkConversationReadEvent({required this.conversationId, this.uptoMessageId});
  

 final  String conversationId;
 final  String? uptoMessageId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkConversationReadEventCopyWith<MarkConversationReadEvent> get copyWith => _$MarkConversationReadEventCopyWithImpl<MarkConversationReadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkConversationReadEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.uptoMessageId, uptoMessageId) || other.uptoMessageId == uptoMessageId));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,uptoMessageId);

@override
String toString() {
  return 'ChatMessageEvent.markConversationRead(conversationId: $conversationId, uptoMessageId: $uptoMessageId)';
}


}

/// @nodoc
abstract mixin class $MarkConversationReadEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $MarkConversationReadEventCopyWith(MarkConversationReadEvent value, $Res Function(MarkConversationReadEvent) _then) = _$MarkConversationReadEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String? uptoMessageId
});




}
/// @nodoc
class _$MarkConversationReadEventCopyWithImpl<$Res>
    implements $MarkConversationReadEventCopyWith<$Res> {
  _$MarkConversationReadEventCopyWithImpl(this._self, this._then);

  final MarkConversationReadEvent _self;
  final $Res Function(MarkConversationReadEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? uptoMessageId = freezed,}) {
  return _then(MarkConversationReadEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,uptoMessageId: freezed == uptoMessageId ? _self.uptoMessageId : uptoMessageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ClearChatMessagesInfoEvent implements ChatMessageEvent {
  const ClearChatMessagesInfoEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearChatMessagesInfoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent.clearInfo()';
}


}




/// @nodoc


class StartWatchMessagesEvent implements ChatMessageEvent {
  const StartWatchMessagesEvent({required this.conversationId});
  

 final  String conversationId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartWatchMessagesEventCopyWith<StartWatchMessagesEvent> get copyWith => _$StartWatchMessagesEventCopyWithImpl<StartWatchMessagesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWatchMessagesEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId);

@override
String toString() {
  return 'ChatMessageEvent.startWatch(conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class $StartWatchMessagesEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $StartWatchMessagesEventCopyWith(StartWatchMessagesEvent value, $Res Function(StartWatchMessagesEvent) _then) = _$StartWatchMessagesEventCopyWithImpl;
@useResult
$Res call({
 String conversationId
});




}
/// @nodoc
class _$StartWatchMessagesEventCopyWithImpl<$Res>
    implements $StartWatchMessagesEventCopyWith<$Res> {
  _$StartWatchMessagesEventCopyWithImpl(this._self, this._then);

  final StartWatchMessagesEvent _self;
  final $Res Function(StartWatchMessagesEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,}) {
  return _then(StartWatchMessagesEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StopWatchMessagesEvent implements ChatMessageEvent {
  const StopWatchMessagesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWatchMessagesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent.stopWatch()';
}


}




/// @nodoc


class WatchMessageArrivedEvent implements ChatMessageEvent {
  const WatchMessageArrivedEvent(this.message);
  

 final  ChatMessageEntity message;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchMessageArrivedEventCopyWith<WatchMessageArrivedEvent> get copyWith => _$WatchMessageArrivedEventCopyWithImpl<WatchMessageArrivedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchMessageArrivedEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatMessageEvent.watchMessageArrived(message: $message)';
}


}

/// @nodoc
abstract mixin class $WatchMessageArrivedEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $WatchMessageArrivedEventCopyWith(WatchMessageArrivedEvent value, $Res Function(WatchMessageArrivedEvent) _then) = _$WatchMessageArrivedEventCopyWithImpl;
@useResult
$Res call({
 ChatMessageEntity message
});


$ChatMessageEntityCopyWith<$Res> get message;

}
/// @nodoc
class _$WatchMessageArrivedEventCopyWithImpl<$Res>
    implements $WatchMessageArrivedEventCopyWith<$Res> {
  _$WatchMessageArrivedEventCopyWithImpl(this._self, this._then);

  final WatchMessageArrivedEvent _self;
  final $Res Function(WatchMessageArrivedEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WatchMessageArrivedEvent(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessageEntity,
  ));
}

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<$Res> get message {
  
  return $ChatMessageEntityCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class WatchMessageUpdatedEvent implements ChatMessageEvent {
  const WatchMessageUpdatedEvent(this.message);
  

 final  ChatMessageEntity message;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchMessageUpdatedEventCopyWith<WatchMessageUpdatedEvent> get copyWith => _$WatchMessageUpdatedEventCopyWithImpl<WatchMessageUpdatedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchMessageUpdatedEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatMessageEvent.watchMessageUpdated(message: $message)';
}


}

/// @nodoc
abstract mixin class $WatchMessageUpdatedEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $WatchMessageUpdatedEventCopyWith(WatchMessageUpdatedEvent value, $Res Function(WatchMessageUpdatedEvent) _then) = _$WatchMessageUpdatedEventCopyWithImpl;
@useResult
$Res call({
 ChatMessageEntity message
});


$ChatMessageEntityCopyWith<$Res> get message;

}
/// @nodoc
class _$WatchMessageUpdatedEventCopyWithImpl<$Res>
    implements $WatchMessageUpdatedEventCopyWith<$Res> {
  _$WatchMessageUpdatedEventCopyWithImpl(this._self, this._then);

  final WatchMessageUpdatedEvent _self;
  final $Res Function(WatchMessageUpdatedEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WatchMessageUpdatedEvent(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessageEntity,
  ));
}

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<$Res> get message {
  
  return $ChatMessageEntityCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class WatchMessageDeletedEvent implements ChatMessageEvent {
  const WatchMessageDeletedEvent(this.message);
  

 final  ChatMessageEntity message;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchMessageDeletedEventCopyWith<WatchMessageDeletedEvent> get copyWith => _$WatchMessageDeletedEventCopyWithImpl<WatchMessageDeletedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchMessageDeletedEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatMessageEvent.watchMessageDeleted(message: $message)';
}


}

/// @nodoc
abstract mixin class $WatchMessageDeletedEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $WatchMessageDeletedEventCopyWith(WatchMessageDeletedEvent value, $Res Function(WatchMessageDeletedEvent) _then) = _$WatchMessageDeletedEventCopyWithImpl;
@useResult
$Res call({
 ChatMessageEntity message
});


$ChatMessageEntityCopyWith<$Res> get message;

}
/// @nodoc
class _$WatchMessageDeletedEventCopyWithImpl<$Res>
    implements $WatchMessageDeletedEventCopyWith<$Res> {
  _$WatchMessageDeletedEventCopyWithImpl(this._self, this._then);

  final WatchMessageDeletedEvent _self;
  final $Res Function(WatchMessageDeletedEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WatchMessageDeletedEvent(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessageEntity,
  ));
}

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<$Res> get message {
  
  return $ChatMessageEntityCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class WatchMessageErrorEvent implements ChatMessageEvent {
  const WatchMessageErrorEvent(this.message);
  

 final  String message;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchMessageErrorEventCopyWith<WatchMessageErrorEvent> get copyWith => _$WatchMessageErrorEventCopyWithImpl<WatchMessageErrorEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchMessageErrorEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatMessageEvent.watchMessageError(message: $message)';
}


}

/// @nodoc
abstract mixin class $WatchMessageErrorEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $WatchMessageErrorEventCopyWith(WatchMessageErrorEvent value, $Res Function(WatchMessageErrorEvent) _then) = _$WatchMessageErrorEventCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WatchMessageErrorEventCopyWithImpl<$Res>
    implements $WatchMessageErrorEventCopyWith<$Res> {
  _$WatchMessageErrorEventCopyWithImpl(this._self, this._then);

  final WatchMessageErrorEvent _self;
  final $Res Function(WatchMessageErrorEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WatchMessageErrorEvent(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadConversationListEvent implements ChatMessageEvent {
  const LoadConversationListEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadConversationListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent.loadConversationList()';
}


}




/// @nodoc


class SetChatFilterEvent implements ChatMessageEvent {
  const SetChatFilterEvent(this.filter);
  

 final  String filter;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetChatFilterEventCopyWith<SetChatFilterEvent> get copyWith => _$SetChatFilterEventCopyWithImpl<SetChatFilterEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetChatFilterEvent&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'ChatMessageEvent.setChatFilter(filter: $filter)';
}


}

/// @nodoc
abstract mixin class $SetChatFilterEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $SetChatFilterEventCopyWith(SetChatFilterEvent value, $Res Function(SetChatFilterEvent) _then) = _$SetChatFilterEventCopyWithImpl;
@useResult
$Res call({
 String filter
});




}
/// @nodoc
class _$SetChatFilterEventCopyWithImpl<$Res>
    implements $SetChatFilterEventCopyWith<$Res> {
  _$SetChatFilterEventCopyWithImpl(this._self, this._then);

  final SetChatFilterEvent _self;
  final $Res Function(SetChatFilterEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(SetChatFilterEvent(
null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetSearchQueryEvent implements ChatMessageEvent {
  const SetSearchQueryEvent(this.query);
  

 final  String query;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetSearchQueryEventCopyWith<SetSearchQueryEvent> get copyWith => _$SetSearchQueryEventCopyWithImpl<SetSearchQueryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetSearchQueryEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ChatMessageEvent.setSearchQuery(query: $query)';
}


}

/// @nodoc
abstract mixin class $SetSearchQueryEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $SetSearchQueryEventCopyWith(SetSearchQueryEvent value, $Res Function(SetSearchQueryEvent) _then) = _$SetSearchQueryEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SetSearchQueryEventCopyWithImpl<$Res>
    implements $SetSearchQueryEventCopyWith<$Res> {
  _$SetSearchQueryEventCopyWithImpl(this._self, this._then);

  final SetSearchQueryEvent _self;
  final $Res Function(SetSearchQueryEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SetSearchQueryEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RefreshConversationListEvent implements ChatMessageEvent {
  const RefreshConversationListEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshConversationListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent.refreshConversationList()';
}


}




/// @nodoc


class UpdateConversationLocallyEvent implements ChatMessageEvent {
  const UpdateConversationLocallyEvent({required this.conversationId, this.lastMessageBody, this.lastMessageAt, this.lastMessageSenderId, this.unreadCountDelta});
  

 final  String conversationId;
 final  String? lastMessageBody;
 final  DateTime? lastMessageAt;
 final  String? lastMessageSenderId;
 final  int? unreadCountDelta;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateConversationLocallyEventCopyWith<UpdateConversationLocallyEvent> get copyWith => _$UpdateConversationLocallyEventCopyWithImpl<UpdateConversationLocallyEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateConversationLocallyEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.lastMessageBody, lastMessageBody) || other.lastMessageBody == lastMessageBody)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageSenderId, lastMessageSenderId) || other.lastMessageSenderId == lastMessageSenderId)&&(identical(other.unreadCountDelta, unreadCountDelta) || other.unreadCountDelta == unreadCountDelta));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,lastMessageBody,lastMessageAt,lastMessageSenderId,unreadCountDelta);

@override
String toString() {
  return 'ChatMessageEvent.updateConversationLocally(conversationId: $conversationId, lastMessageBody: $lastMessageBody, lastMessageAt: $lastMessageAt, lastMessageSenderId: $lastMessageSenderId, unreadCountDelta: $unreadCountDelta)';
}


}

/// @nodoc
abstract mixin class $UpdateConversationLocallyEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $UpdateConversationLocallyEventCopyWith(UpdateConversationLocallyEvent value, $Res Function(UpdateConversationLocallyEvent) _then) = _$UpdateConversationLocallyEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, String? lastMessageBody, DateTime? lastMessageAt, String? lastMessageSenderId, int? unreadCountDelta
});




}
/// @nodoc
class _$UpdateConversationLocallyEventCopyWithImpl<$Res>
    implements $UpdateConversationLocallyEventCopyWith<$Res> {
  _$UpdateConversationLocallyEventCopyWithImpl(this._self, this._then);

  final UpdateConversationLocallyEvent _self;
  final $Res Function(UpdateConversationLocallyEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? lastMessageBody = freezed,Object? lastMessageAt = freezed,Object? lastMessageSenderId = freezed,Object? unreadCountDelta = freezed,}) {
  return _then(UpdateConversationLocallyEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,lastMessageBody: freezed == lastMessageBody ? _self.lastMessageBody : lastMessageBody // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMessageSenderId: freezed == lastMessageSenderId ? _self.lastMessageSenderId : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
as String?,unreadCountDelta: freezed == unreadCountDelta ? _self.unreadCountDelta : unreadCountDelta // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class LoadMessageReadsEvent implements ChatMessageEvent {
  const LoadMessageReadsEvent({required this.messageId});
  

 final  String messageId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMessageReadsEventCopyWith<LoadMessageReadsEvent> get copyWith => _$LoadMessageReadsEventCopyWithImpl<LoadMessageReadsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMessageReadsEvent&&(identical(other.messageId, messageId) || other.messageId == messageId));
}


@override
int get hashCode => Object.hash(runtimeType,messageId);

@override
String toString() {
  return 'ChatMessageEvent.loadMessageReads(messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $LoadMessageReadsEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $LoadMessageReadsEventCopyWith(LoadMessageReadsEvent value, $Res Function(LoadMessageReadsEvent) _then) = _$LoadMessageReadsEventCopyWithImpl;
@useResult
$Res call({
 String messageId
});




}
/// @nodoc
class _$LoadMessageReadsEventCopyWithImpl<$Res>
    implements $LoadMessageReadsEventCopyWith<$Res> {
  _$LoadMessageReadsEventCopyWithImpl(this._self, this._then);

  final LoadMessageReadsEvent _self;
  final $Res Function(LoadMessageReadsEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageId = null,}) {
  return _then(LoadMessageReadsEvent(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MarkMessageReadEvent implements ChatMessageEvent {
  const MarkMessageReadEvent({required this.messageId});
  

 final  String messageId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkMessageReadEventCopyWith<MarkMessageReadEvent> get copyWith => _$MarkMessageReadEventCopyWithImpl<MarkMessageReadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkMessageReadEvent&&(identical(other.messageId, messageId) || other.messageId == messageId));
}


@override
int get hashCode => Object.hash(runtimeType,messageId);

@override
String toString() {
  return 'ChatMessageEvent.markMessageRead(messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $MarkMessageReadEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $MarkMessageReadEventCopyWith(MarkMessageReadEvent value, $Res Function(MarkMessageReadEvent) _then) = _$MarkMessageReadEventCopyWithImpl;
@useResult
$Res call({
 String messageId
});




}
/// @nodoc
class _$MarkMessageReadEventCopyWithImpl<$Res>
    implements $MarkMessageReadEventCopyWith<$Res> {
  _$MarkMessageReadEventCopyWithImpl(this._self, this._then);

  final MarkMessageReadEvent _self;
  final $Res Function(MarkMessageReadEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageId = null,}) {
  return _then(MarkMessageReadEvent(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MarkMessagesReadBatchEvent implements ChatMessageEvent {
  const MarkMessagesReadBatchEvent({required final  List<String> messageIds}): _messageIds = messageIds;
  

 final  List<String> _messageIds;
 List<String> get messageIds {
  if (_messageIds is EqualUnmodifiableListView) return _messageIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messageIds);
}


/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkMessagesReadBatchEventCopyWith<MarkMessagesReadBatchEvent> get copyWith => _$MarkMessagesReadBatchEventCopyWithImpl<MarkMessagesReadBatchEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkMessagesReadBatchEvent&&const DeepCollectionEquality().equals(other._messageIds, _messageIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messageIds));

@override
String toString() {
  return 'ChatMessageEvent.markMessagesReadBatch(messageIds: $messageIds)';
}


}

/// @nodoc
abstract mixin class $MarkMessagesReadBatchEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $MarkMessagesReadBatchEventCopyWith(MarkMessagesReadBatchEvent value, $Res Function(MarkMessagesReadBatchEvent) _then) = _$MarkMessagesReadBatchEventCopyWithImpl;
@useResult
$Res call({
 List<String> messageIds
});




}
/// @nodoc
class _$MarkMessagesReadBatchEventCopyWithImpl<$Res>
    implements $MarkMessagesReadBatchEventCopyWith<$Res> {
  _$MarkMessagesReadBatchEventCopyWithImpl(this._self, this._then);

  final MarkMessagesReadBatchEvent _self;
  final $Res Function(MarkMessagesReadBatchEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageIds = null,}) {
  return _then(MarkMessagesReadBatchEvent(
messageIds: null == messageIds ? _self._messageIds : messageIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class StartWatchReadsEvent implements ChatMessageEvent {
  const StartWatchReadsEvent({required this.conversationId});
  

 final  String conversationId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartWatchReadsEventCopyWith<StartWatchReadsEvent> get copyWith => _$StartWatchReadsEventCopyWithImpl<StartWatchReadsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWatchReadsEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId);

@override
String toString() {
  return 'ChatMessageEvent.startWatchReads(conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class $StartWatchReadsEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $StartWatchReadsEventCopyWith(StartWatchReadsEvent value, $Res Function(StartWatchReadsEvent) _then) = _$StartWatchReadsEventCopyWithImpl;
@useResult
$Res call({
 String conversationId
});




}
/// @nodoc
class _$StartWatchReadsEventCopyWithImpl<$Res>
    implements $StartWatchReadsEventCopyWith<$Res> {
  _$StartWatchReadsEventCopyWithImpl(this._self, this._then);

  final StartWatchReadsEvent _self;
  final $Res Function(StartWatchReadsEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,}) {
  return _then(StartWatchReadsEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StopWatchReadsEvent implements ChatMessageEvent {
  const StopWatchReadsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWatchReadsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent.stopWatchReads()';
}


}




/// @nodoc


class WatchReadArrivedEvent implements ChatMessageEvent {
  const WatchReadArrivedEvent(this.readEntity);
  

 final  MessageReadEntity readEntity;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchReadArrivedEventCopyWith<WatchReadArrivedEvent> get copyWith => _$WatchReadArrivedEventCopyWithImpl<WatchReadArrivedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchReadArrivedEvent&&(identical(other.readEntity, readEntity) || other.readEntity == readEntity));
}


@override
int get hashCode => Object.hash(runtimeType,readEntity);

@override
String toString() {
  return 'ChatMessageEvent.watchReadArrived(readEntity: $readEntity)';
}


}

/// @nodoc
abstract mixin class $WatchReadArrivedEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $WatchReadArrivedEventCopyWith(WatchReadArrivedEvent value, $Res Function(WatchReadArrivedEvent) _then) = _$WatchReadArrivedEventCopyWithImpl;
@useResult
$Res call({
 MessageReadEntity readEntity
});


$MessageReadEntityCopyWith<$Res> get readEntity;

}
/// @nodoc
class _$WatchReadArrivedEventCopyWithImpl<$Res>
    implements $WatchReadArrivedEventCopyWith<$Res> {
  _$WatchReadArrivedEventCopyWithImpl(this._self, this._then);

  final WatchReadArrivedEvent _self;
  final $Res Function(WatchReadArrivedEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? readEntity = null,}) {
  return _then(WatchReadArrivedEvent(
null == readEntity ? _self.readEntity : readEntity // ignore: cast_nullable_to_non_nullable
as MessageReadEntity,
  ));
}

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageReadEntityCopyWith<$Res> get readEntity {
  
  return $MessageReadEntityCopyWith<$Res>(_self.readEntity, (value) {
    return _then(_self.copyWith(readEntity: value));
  });
}
}

/// @nodoc


class VotePollEvent implements ChatMessageEvent {
  const VotePollEvent({required this.pollMessageId, required this.optionId});
  

 final  String pollMessageId;
 final  String optionId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VotePollEventCopyWith<VotePollEvent> get copyWith => _$VotePollEventCopyWithImpl<VotePollEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VotePollEvent&&(identical(other.pollMessageId, pollMessageId) || other.pollMessageId == pollMessageId)&&(identical(other.optionId, optionId) || other.optionId == optionId));
}


@override
int get hashCode => Object.hash(runtimeType,pollMessageId,optionId);

@override
String toString() {
  return 'ChatMessageEvent.votePoll(pollMessageId: $pollMessageId, optionId: $optionId)';
}


}

/// @nodoc
abstract mixin class $VotePollEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $VotePollEventCopyWith(VotePollEvent value, $Res Function(VotePollEvent) _then) = _$VotePollEventCopyWithImpl;
@useResult
$Res call({
 String pollMessageId, String optionId
});




}
/// @nodoc
class _$VotePollEventCopyWithImpl<$Res>
    implements $VotePollEventCopyWith<$Res> {
  _$VotePollEventCopyWithImpl(this._self, this._then);

  final VotePollEvent _self;
  final $Res Function(VotePollEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pollMessageId = null,Object? optionId = null,}) {
  return _then(VotePollEvent(
pollMessageId: null == pollMessageId ? _self.pollMessageId : pollMessageId // ignore: cast_nullable_to_non_nullable
as String,optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnvotePollEvent implements ChatMessageEvent {
  const UnvotePollEvent({required this.optionId});
  

 final  String optionId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnvotePollEventCopyWith<UnvotePollEvent> get copyWith => _$UnvotePollEventCopyWithImpl<UnvotePollEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnvotePollEvent&&(identical(other.optionId, optionId) || other.optionId == optionId));
}


@override
int get hashCode => Object.hash(runtimeType,optionId);

@override
String toString() {
  return 'ChatMessageEvent.unvotePoll(optionId: $optionId)';
}


}

/// @nodoc
abstract mixin class $UnvotePollEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $UnvotePollEventCopyWith(UnvotePollEvent value, $Res Function(UnvotePollEvent) _then) = _$UnvotePollEventCopyWithImpl;
@useResult
$Res call({
 String optionId
});




}
/// @nodoc
class _$UnvotePollEventCopyWithImpl<$Res>
    implements $UnvotePollEventCopyWith<$Res> {
  _$UnvotePollEventCopyWithImpl(this._self, this._then);

  final UnvotePollEvent _self;
  final $Res Function(UnvotePollEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? optionId = null,}) {
  return _then(UnvotePollEvent(
optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RespondToEventEvent implements ChatMessageEvent {
  const RespondToEventEvent({required this.eventMessageId, required this.status});
  

 final  String eventMessageId;
 final  String status;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RespondToEventEventCopyWith<RespondToEventEvent> get copyWith => _$RespondToEventEventCopyWithImpl<RespondToEventEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RespondToEventEvent&&(identical(other.eventMessageId, eventMessageId) || other.eventMessageId == eventMessageId)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,eventMessageId,status);

@override
String toString() {
  return 'ChatMessageEvent.respondToEvent(eventMessageId: $eventMessageId, status: $status)';
}


}

/// @nodoc
abstract mixin class $RespondToEventEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $RespondToEventEventCopyWith(RespondToEventEvent value, $Res Function(RespondToEventEvent) _then) = _$RespondToEventEventCopyWithImpl;
@useResult
$Res call({
 String eventMessageId, String status
});




}
/// @nodoc
class _$RespondToEventEventCopyWithImpl<$Res>
    implements $RespondToEventEventCopyWith<$Res> {
  _$RespondToEventEventCopyWithImpl(this._self, this._then);

  final RespondToEventEvent _self;
  final $Res Function(RespondToEventEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventMessageId = null,Object? status = null,}) {
  return _then(RespondToEventEvent(
eventMessageId: null == eventMessageId ? _self.eventMessageId : eventMessageId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CancelEventRsvpEvent implements ChatMessageEvent {
  const CancelEventRsvpEvent({required this.eventMessageId});
  

 final  String eventMessageId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelEventRsvpEventCopyWith<CancelEventRsvpEvent> get copyWith => _$CancelEventRsvpEventCopyWithImpl<CancelEventRsvpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelEventRsvpEvent&&(identical(other.eventMessageId, eventMessageId) || other.eventMessageId == eventMessageId));
}


@override
int get hashCode => Object.hash(runtimeType,eventMessageId);

@override
String toString() {
  return 'ChatMessageEvent.cancelEventRsvp(eventMessageId: $eventMessageId)';
}


}

/// @nodoc
abstract mixin class $CancelEventRsvpEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $CancelEventRsvpEventCopyWith(CancelEventRsvpEvent value, $Res Function(CancelEventRsvpEvent) _then) = _$CancelEventRsvpEventCopyWithImpl;
@useResult
$Res call({
 String eventMessageId
});




}
/// @nodoc
class _$CancelEventRsvpEventCopyWithImpl<$Res>
    implements $CancelEventRsvpEventCopyWith<$Res> {
  _$CancelEventRsvpEventCopyWithImpl(this._self, this._then);

  final CancelEventRsvpEvent _self;
  final $Res Function(CancelEventRsvpEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventMessageId = null,}) {
  return _then(CancelEventRsvpEvent(
eventMessageId: null == eventMessageId ? _self.eventMessageId : eventMessageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SendTypingEvent implements ChatMessageEvent {
  const SendTypingEvent({required this.conversationId, required this.isTyping});
  

 final  String conversationId;
 final  bool isTyping;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendTypingEventCopyWith<SendTypingEvent> get copyWith => _$SendTypingEventCopyWithImpl<SendTypingEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTypingEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,isTyping);

@override
String toString() {
  return 'ChatMessageEvent.sendTyping(conversationId: $conversationId, isTyping: $isTyping)';
}


}

/// @nodoc
abstract mixin class $SendTypingEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $SendTypingEventCopyWith(SendTypingEvent value, $Res Function(SendTypingEvent) _then) = _$SendTypingEventCopyWithImpl;
@useResult
$Res call({
 String conversationId, bool isTyping
});




}
/// @nodoc
class _$SendTypingEventCopyWithImpl<$Res>
    implements $SendTypingEventCopyWith<$Res> {
  _$SendTypingEventCopyWithImpl(this._self, this._then);

  final SendTypingEvent _self;
  final $Res Function(SendTypingEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? isTyping = null,}) {
  return _then(SendTypingEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,isTyping: null == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class StartWatchTypingEvent implements ChatMessageEvent {
  const StartWatchTypingEvent({required this.conversationId});
  

 final  String conversationId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartWatchTypingEventCopyWith<StartWatchTypingEvent> get copyWith => _$StartWatchTypingEventCopyWithImpl<StartWatchTypingEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWatchTypingEvent&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId);

@override
String toString() {
  return 'ChatMessageEvent.startWatchTyping(conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class $StartWatchTypingEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $StartWatchTypingEventCopyWith(StartWatchTypingEvent value, $Res Function(StartWatchTypingEvent) _then) = _$StartWatchTypingEventCopyWithImpl;
@useResult
$Res call({
 String conversationId
});




}
/// @nodoc
class _$StartWatchTypingEventCopyWithImpl<$Res>
    implements $StartWatchTypingEventCopyWith<$Res> {
  _$StartWatchTypingEventCopyWithImpl(this._self, this._then);

  final StartWatchTypingEvent _self;
  final $Res Function(StartWatchTypingEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,}) {
  return _then(StartWatchTypingEvent(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StopWatchTypingEvent implements ChatMessageEvent {
  const StopWatchTypingEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWatchTypingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent.stopWatchTyping()';
}


}




/// @nodoc


class WatchTypingArrivedEvent implements ChatMessageEvent {
  const WatchTypingArrivedEvent(this.userId);
  

 final  String userId;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchTypingArrivedEventCopyWith<WatchTypingArrivedEvent> get copyWith => _$WatchTypingArrivedEventCopyWithImpl<WatchTypingArrivedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchTypingArrivedEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ChatMessageEvent.watchTypingArrived(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $WatchTypingArrivedEventCopyWith<$Res> implements $ChatMessageEventCopyWith<$Res> {
  factory $WatchTypingArrivedEventCopyWith(WatchTypingArrivedEvent value, $Res Function(WatchTypingArrivedEvent) _then) = _$WatchTypingArrivedEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$WatchTypingArrivedEventCopyWithImpl<$Res>
    implements $WatchTypingArrivedEventCopyWith<$Res> {
  _$WatchTypingArrivedEventCopyWithImpl(this._self, this._then);

  final WatchTypingArrivedEvent _self;
  final $Res Function(WatchTypingArrivedEvent) _then;

/// Create a copy of ChatMessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(WatchTypingArrivedEvent(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CleanupTypingEvent implements ChatMessageEvent {
  const CleanupTypingEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanupTypingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatMessageEvent.cleanupTyping()';
}


}




// dart format on

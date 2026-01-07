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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadChatMessagesEvent value)?  loadMessages,TResult Function( LoadMoreChatMessagesEvent value)?  loadMoreMessages,TResult Function( SendChatMessageEvent value)?  sendMessage,TResult Function( EditChatMessageEvent value)?  editMessage,TResult Function( DeleteChatMessageEvent value)?  deleteMessage,TResult Function( MarkConversationReadEvent value)?  markConversationRead,TResult Function( ClearChatMessagesInfoEvent value)?  clearInfo,TResult Function( StartWatchMessagesEvent value)?  startWatch,TResult Function( StopWatchMessagesEvent value)?  stopWatch,TResult Function( WatchMessageArrivedEvent value)?  watchMessageArrived,TResult Function( WatchMessageUpdatedEvent value)?  watchMessageUpdated,TResult Function( WatchMessageDeletedEvent value)?  watchMessageDeleted,TResult Function( WatchMessageErrorEvent value)?  watchMessageError,TResult Function( LoadConversationListEvent value)?  loadConversationList,TResult Function( LoadMessageReadsEvent value)?  loadMessageReads,TResult Function( MarkMessageReadEvent value)?  markMessageRead,TResult Function( StartWatchReadsEvent value)?  startWatchReads,TResult Function( StopWatchReadsEvent value)?  stopWatchReads,TResult Function( WatchReadArrivedEvent value)?  watchReadArrived,TResult Function( SendTypingEvent value)?  sendTyping,TResult Function( StartWatchTypingEvent value)?  startWatchTyping,TResult Function( StopWatchTypingEvent value)?  stopWatchTyping,TResult Function( WatchTypingArrivedEvent value)?  watchTypingArrived,TResult Function( CleanupTypingEvent value)?  cleanupTyping,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that);case EditChatMessageEvent() when editMessage != null:
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
return loadConversationList(_that);case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads(_that);case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that);case SendTypingEvent() when sendTyping != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadChatMessagesEvent value)  loadMessages,required TResult Function( LoadMoreChatMessagesEvent value)  loadMoreMessages,required TResult Function( SendChatMessageEvent value)  sendMessage,required TResult Function( EditChatMessageEvent value)  editMessage,required TResult Function( DeleteChatMessageEvent value)  deleteMessage,required TResult Function( MarkConversationReadEvent value)  markConversationRead,required TResult Function( ClearChatMessagesInfoEvent value)  clearInfo,required TResult Function( StartWatchMessagesEvent value)  startWatch,required TResult Function( StopWatchMessagesEvent value)  stopWatch,required TResult Function( WatchMessageArrivedEvent value)  watchMessageArrived,required TResult Function( WatchMessageUpdatedEvent value)  watchMessageUpdated,required TResult Function( WatchMessageDeletedEvent value)  watchMessageDeleted,required TResult Function( WatchMessageErrorEvent value)  watchMessageError,required TResult Function( LoadConversationListEvent value)  loadConversationList,required TResult Function( LoadMessageReadsEvent value)  loadMessageReads,required TResult Function( MarkMessageReadEvent value)  markMessageRead,required TResult Function( StartWatchReadsEvent value)  startWatchReads,required TResult Function( StopWatchReadsEvent value)  stopWatchReads,required TResult Function( WatchReadArrivedEvent value)  watchReadArrived,required TResult Function( SendTypingEvent value)  sendTyping,required TResult Function( StartWatchTypingEvent value)  startWatchTyping,required TResult Function( StopWatchTypingEvent value)  stopWatchTyping,required TResult Function( WatchTypingArrivedEvent value)  watchTypingArrived,required TResult Function( CleanupTypingEvent value)  cleanupTyping,}){
final _that = this;
switch (_that) {
case LoadChatMessagesEvent():
return loadMessages(_that);case LoadMoreChatMessagesEvent():
return loadMoreMessages(_that);case SendChatMessageEvent():
return sendMessage(_that);case EditChatMessageEvent():
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
return loadConversationList(_that);case LoadMessageReadsEvent():
return loadMessageReads(_that);case MarkMessageReadEvent():
return markMessageRead(_that);case StartWatchReadsEvent():
return startWatchReads(_that);case StopWatchReadsEvent():
return stopWatchReads(_that);case WatchReadArrivedEvent():
return watchReadArrived(_that);case SendTypingEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadChatMessagesEvent value)?  loadMessages,TResult? Function( LoadMoreChatMessagesEvent value)?  loadMoreMessages,TResult? Function( SendChatMessageEvent value)?  sendMessage,TResult? Function( EditChatMessageEvent value)?  editMessage,TResult? Function( DeleteChatMessageEvent value)?  deleteMessage,TResult? Function( MarkConversationReadEvent value)?  markConversationRead,TResult? Function( ClearChatMessagesInfoEvent value)?  clearInfo,TResult? Function( StartWatchMessagesEvent value)?  startWatch,TResult? Function( StopWatchMessagesEvent value)?  stopWatch,TResult? Function( WatchMessageArrivedEvent value)?  watchMessageArrived,TResult? Function( WatchMessageUpdatedEvent value)?  watchMessageUpdated,TResult? Function( WatchMessageDeletedEvent value)?  watchMessageDeleted,TResult? Function( WatchMessageErrorEvent value)?  watchMessageError,TResult? Function( LoadConversationListEvent value)?  loadConversationList,TResult? Function( LoadMessageReadsEvent value)?  loadMessageReads,TResult? Function( MarkMessageReadEvent value)?  markMessageRead,TResult? Function( StartWatchReadsEvent value)?  startWatchReads,TResult? Function( StopWatchReadsEvent value)?  stopWatchReads,TResult? Function( WatchReadArrivedEvent value)?  watchReadArrived,TResult? Function( SendTypingEvent value)?  sendTyping,TResult? Function( StartWatchTypingEvent value)?  startWatchTyping,TResult? Function( StopWatchTypingEvent value)?  stopWatchTyping,TResult? Function( WatchTypingArrivedEvent value)?  watchTypingArrived,TResult? Function( CleanupTypingEvent value)?  cleanupTyping,}){
final _that = this;
switch (_that) {
case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that);case EditChatMessageEvent() when editMessage != null:
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
return loadConversationList(_that);case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads(_that);case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that);case SendTypingEvent() when sendTyping != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String conversationId,  int? limit)?  loadMessages,TResult Function( String conversationId,  int limit)?  loadMoreMessages,TResult Function( String conversationId,  String content,  String? replyToMessageId)?  sendMessage,TResult Function( String messageId,  String newContent)?  editMessage,TResult Function( String messageId)?  deleteMessage,TResult Function( String conversationId,  String? uptoMessageId)?  markConversationRead,TResult Function()?  clearInfo,TResult Function( String conversationId)?  startWatch,TResult Function()?  stopWatch,TResult Function( ChatMessageEntity message)?  watchMessageArrived,TResult Function( ChatMessageEntity message)?  watchMessageUpdated,TResult Function( ChatMessageEntity message)?  watchMessageDeleted,TResult Function( String message)?  watchMessageError,TResult Function()?  loadConversationList,TResult Function( String messageId)?  loadMessageReads,TResult Function( String messageId)?  markMessageRead,TResult Function( String conversationId)?  startWatchReads,TResult Function()?  stopWatchReads,TResult Function( MessageReadEntity readEntity)?  watchReadArrived,TResult Function( String conversationId,  bool isTyping)?  sendTyping,TResult Function( String conversationId)?  startWatchTyping,TResult Function()?  stopWatchTyping,TResult Function( String userId)?  watchTypingArrived,TResult Function()?  cleanupTyping,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that.conversationId,_that.limit);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that.conversationId,_that.limit);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that.conversationId,_that.content,_that.replyToMessageId);case EditChatMessageEvent() when editMessage != null:
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
return loadConversationList();case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that.messageId);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that.messageId);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that.conversationId);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads();case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that.readEntity);case SendTypingEvent() when sendTyping != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String conversationId,  int? limit)  loadMessages,required TResult Function( String conversationId,  int limit)  loadMoreMessages,required TResult Function( String conversationId,  String content,  String? replyToMessageId)  sendMessage,required TResult Function( String messageId,  String newContent)  editMessage,required TResult Function( String messageId)  deleteMessage,required TResult Function( String conversationId,  String? uptoMessageId)  markConversationRead,required TResult Function()  clearInfo,required TResult Function( String conversationId)  startWatch,required TResult Function()  stopWatch,required TResult Function( ChatMessageEntity message)  watchMessageArrived,required TResult Function( ChatMessageEntity message)  watchMessageUpdated,required TResult Function( ChatMessageEntity message)  watchMessageDeleted,required TResult Function( String message)  watchMessageError,required TResult Function()  loadConversationList,required TResult Function( String messageId)  loadMessageReads,required TResult Function( String messageId)  markMessageRead,required TResult Function( String conversationId)  startWatchReads,required TResult Function()  stopWatchReads,required TResult Function( MessageReadEntity readEntity)  watchReadArrived,required TResult Function( String conversationId,  bool isTyping)  sendTyping,required TResult Function( String conversationId)  startWatchTyping,required TResult Function()  stopWatchTyping,required TResult Function( String userId)  watchTypingArrived,required TResult Function()  cleanupTyping,}) {final _that = this;
switch (_that) {
case LoadChatMessagesEvent():
return loadMessages(_that.conversationId,_that.limit);case LoadMoreChatMessagesEvent():
return loadMoreMessages(_that.conversationId,_that.limit);case SendChatMessageEvent():
return sendMessage(_that.conversationId,_that.content,_that.replyToMessageId);case EditChatMessageEvent():
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
return loadConversationList();case LoadMessageReadsEvent():
return loadMessageReads(_that.messageId);case MarkMessageReadEvent():
return markMessageRead(_that.messageId);case StartWatchReadsEvent():
return startWatchReads(_that.conversationId);case StopWatchReadsEvent():
return stopWatchReads();case WatchReadArrivedEvent():
return watchReadArrived(_that.readEntity);case SendTypingEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String conversationId,  int? limit)?  loadMessages,TResult? Function( String conversationId,  int limit)?  loadMoreMessages,TResult? Function( String conversationId,  String content,  String? replyToMessageId)?  sendMessage,TResult? Function( String messageId,  String newContent)?  editMessage,TResult? Function( String messageId)?  deleteMessage,TResult? Function( String conversationId,  String? uptoMessageId)?  markConversationRead,TResult? Function()?  clearInfo,TResult? Function( String conversationId)?  startWatch,TResult? Function()?  stopWatch,TResult? Function( ChatMessageEntity message)?  watchMessageArrived,TResult? Function( ChatMessageEntity message)?  watchMessageUpdated,TResult? Function( ChatMessageEntity message)?  watchMessageDeleted,TResult? Function( String message)?  watchMessageError,TResult? Function()?  loadConversationList,TResult? Function( String messageId)?  loadMessageReads,TResult? Function( String messageId)?  markMessageRead,TResult? Function( String conversationId)?  startWatchReads,TResult? Function()?  stopWatchReads,TResult? Function( MessageReadEntity readEntity)?  watchReadArrived,TResult? Function( String conversationId,  bool isTyping)?  sendTyping,TResult? Function( String conversationId)?  startWatchTyping,TResult? Function()?  stopWatchTyping,TResult? Function( String userId)?  watchTypingArrived,TResult? Function()?  cleanupTyping,}) {final _that = this;
switch (_that) {
case LoadChatMessagesEvent() when loadMessages != null:
return loadMessages(_that.conversationId,_that.limit);case LoadMoreChatMessagesEvent() when loadMoreMessages != null:
return loadMoreMessages(_that.conversationId,_that.limit);case SendChatMessageEvent() when sendMessage != null:
return sendMessage(_that.conversationId,_that.content,_that.replyToMessageId);case EditChatMessageEvent() when editMessage != null:
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
return loadConversationList();case LoadMessageReadsEvent() when loadMessageReads != null:
return loadMessageReads(_that.messageId);case MarkMessageReadEvent() when markMessageRead != null:
return markMessageRead(_that.messageId);case StartWatchReadsEvent() when startWatchReads != null:
return startWatchReads(_that.conversationId);case StopWatchReadsEvent() when stopWatchReads != null:
return stopWatchReads();case WatchReadArrivedEvent() when watchReadArrived != null:
return watchReadArrived(_that.readEntity);case SendTypingEvent() when sendTyping != null:
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

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEventCopyWith<$Res> {
  factory $ChatMessageEventCopyWith(
          ChatMessageEvent value, $Res Function(ChatMessageEvent) then) =
      _$ChatMessageEventCopyWithImpl<$Res, ChatMessageEvent>;
}

/// @nodoc
class _$ChatMessageEventCopyWithImpl<$Res, $Val extends ChatMessageEvent>
    implements $ChatMessageEventCopyWith<$Res> {
  _$ChatMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadChatMessagesEventImplCopyWith<$Res> {
  factory _$$LoadChatMessagesEventImplCopyWith(
          _$LoadChatMessagesEventImpl value,
          $Res Function(_$LoadChatMessagesEventImpl) then) =
      __$$LoadChatMessagesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, int? limit});
}

/// @nodoc
class __$$LoadChatMessagesEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$LoadChatMessagesEventImpl>
    implements _$$LoadChatMessagesEventImplCopyWith<$Res> {
  __$$LoadChatMessagesEventImplCopyWithImpl(_$LoadChatMessagesEventImpl _value,
      $Res Function(_$LoadChatMessagesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? limit = freezed,
  }) {
    return _then(_$LoadChatMessagesEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadChatMessagesEventImpl implements LoadChatMessagesEvent {
  const _$LoadChatMessagesEventImpl({required this.conversationId, this.limit});

  @override
  final String conversationId;
  @override
  final int? limit;

  @override
  String toString() {
    return 'ChatMessageEvent.loadMessages(conversationId: $conversationId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadChatMessagesEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, limit);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadChatMessagesEventImplCopyWith<_$LoadChatMessagesEventImpl>
      get copyWith => __$$LoadChatMessagesEventImplCopyWithImpl<
          _$LoadChatMessagesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return loadMessages(conversationId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return loadMessages?.call(conversationId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(conversationId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(this);
    }
    return orElse();
  }
}

abstract class LoadChatMessagesEvent implements ChatMessageEvent {
  const factory LoadChatMessagesEvent(
      {required final String conversationId,
      final int? limit}) = _$LoadChatMessagesEventImpl;

  String get conversationId;
  int? get limit;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadChatMessagesEventImplCopyWith<_$LoadChatMessagesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreChatMessagesEventImplCopyWith<$Res> {
  factory _$$LoadMoreChatMessagesEventImplCopyWith(
          _$LoadMoreChatMessagesEventImpl value,
          $Res Function(_$LoadMoreChatMessagesEventImpl) then) =
      __$$LoadMoreChatMessagesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, int limit});
}

/// @nodoc
class __$$LoadMoreChatMessagesEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res,
        _$LoadMoreChatMessagesEventImpl>
    implements _$$LoadMoreChatMessagesEventImplCopyWith<$Res> {
  __$$LoadMoreChatMessagesEventImplCopyWithImpl(
      _$LoadMoreChatMessagesEventImpl _value,
      $Res Function(_$LoadMoreChatMessagesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? limit = null,
  }) {
    return _then(_$LoadMoreChatMessagesEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadMoreChatMessagesEventImpl implements LoadMoreChatMessagesEvent {
  const _$LoadMoreChatMessagesEventImpl(
      {required this.conversationId, required this.limit});

  @override
  final String conversationId;
  @override
  final int limit;

  @override
  String toString() {
    return 'ChatMessageEvent.loadMoreMessages(conversationId: $conversationId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreChatMessagesEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, limit);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreChatMessagesEventImplCopyWith<_$LoadMoreChatMessagesEventImpl>
      get copyWith => __$$LoadMoreChatMessagesEventImplCopyWithImpl<
          _$LoadMoreChatMessagesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return loadMoreMessages(conversationId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return loadMoreMessages?.call(conversationId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages(conversationId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return loadMoreMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return loadMoreMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages(this);
    }
    return orElse();
  }
}

abstract class LoadMoreChatMessagesEvent implements ChatMessageEvent {
  const factory LoadMoreChatMessagesEvent(
      {required final String conversationId,
      required final int limit}) = _$LoadMoreChatMessagesEventImpl;

  String get conversationId;
  int get limit;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreChatMessagesEventImplCopyWith<_$LoadMoreChatMessagesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendChatMessageEventImplCopyWith<$Res> {
  factory _$$SendChatMessageEventImplCopyWith(_$SendChatMessageEventImpl value,
          $Res Function(_$SendChatMessageEventImpl) then) =
      __$$SendChatMessageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, String content, String? replyToMessageId});
}

/// @nodoc
class __$$SendChatMessageEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$SendChatMessageEventImpl>
    implements _$$SendChatMessageEventImplCopyWith<$Res> {
  __$$SendChatMessageEventImplCopyWithImpl(_$SendChatMessageEventImpl _value,
      $Res Function(_$SendChatMessageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? content = null,
    Object? replyToMessageId = freezed,
  }) {
    return _then(_$SendChatMessageEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      replyToMessageId: freezed == replyToMessageId
          ? _value.replyToMessageId
          : replyToMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SendChatMessageEventImpl implements SendChatMessageEvent {
  const _$SendChatMessageEventImpl(
      {required this.conversationId,
      required this.content,
      this.replyToMessageId});

  @override
  final String conversationId;
  @override
  final String content;
  @override
  final String? replyToMessageId;

  @override
  String toString() {
    return 'ChatMessageEvent.sendMessage(conversationId: $conversationId, content: $content, replyToMessageId: $replyToMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatMessageEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.replyToMessageId, replyToMessageId) ||
                other.replyToMessageId == replyToMessageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, content, replyToMessageId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendChatMessageEventImplCopyWith<_$SendChatMessageEventImpl>
      get copyWith =>
          __$$SendChatMessageEventImplCopyWithImpl<_$SendChatMessageEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return sendMessage(conversationId, content, replyToMessageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return sendMessage?.call(conversationId, content, replyToMessageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(conversationId, content, replyToMessageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendChatMessageEvent implements ChatMessageEvent {
  const factory SendChatMessageEvent(
      {required final String conversationId,
      required final String content,
      final String? replyToMessageId}) = _$SendChatMessageEventImpl;

  String get conversationId;
  String get content;
  String? get replyToMessageId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendChatMessageEventImplCopyWith<_$SendChatMessageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditChatMessageEventImplCopyWith<$Res> {
  factory _$$EditChatMessageEventImplCopyWith(_$EditChatMessageEventImpl value,
          $Res Function(_$EditChatMessageEventImpl) then) =
      __$$EditChatMessageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId, String newContent});
}

/// @nodoc
class __$$EditChatMessageEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$EditChatMessageEventImpl>
    implements _$$EditChatMessageEventImplCopyWith<$Res> {
  __$$EditChatMessageEventImplCopyWithImpl(_$EditChatMessageEventImpl _value,
      $Res Function(_$EditChatMessageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? newContent = null,
  }) {
    return _then(_$EditChatMessageEventImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      newContent: null == newContent
          ? _value.newContent
          : newContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditChatMessageEventImpl implements EditChatMessageEvent {
  const _$EditChatMessageEventImpl(
      {required this.messageId, required this.newContent});

  @override
  final String messageId;
  @override
  final String newContent;

  @override
  String toString() {
    return 'ChatMessageEvent.editMessage(messageId: $messageId, newContent: $newContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditChatMessageEventImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.newContent, newContent) ||
                other.newContent == newContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, newContent);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditChatMessageEventImplCopyWith<_$EditChatMessageEventImpl>
      get copyWith =>
          __$$EditChatMessageEventImplCopyWithImpl<_$EditChatMessageEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return editMessage(messageId, newContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return editMessage?.call(messageId, newContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(messageId, newContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return editMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return editMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(this);
    }
    return orElse();
  }
}

abstract class EditChatMessageEvent implements ChatMessageEvent {
  const factory EditChatMessageEvent(
      {required final String messageId,
      required final String newContent}) = _$EditChatMessageEventImpl;

  String get messageId;
  String get newContent;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditChatMessageEventImplCopyWith<_$EditChatMessageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteChatMessageEventImplCopyWith<$Res> {
  factory _$$DeleteChatMessageEventImplCopyWith(
          _$DeleteChatMessageEventImpl value,
          $Res Function(_$DeleteChatMessageEventImpl) then) =
      __$$DeleteChatMessageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$DeleteChatMessageEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$DeleteChatMessageEventImpl>
    implements _$$DeleteChatMessageEventImplCopyWith<$Res> {
  __$$DeleteChatMessageEventImplCopyWithImpl(
      _$DeleteChatMessageEventImpl _value,
      $Res Function(_$DeleteChatMessageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$DeleteChatMessageEventImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteChatMessageEventImpl implements DeleteChatMessageEvent {
  const _$DeleteChatMessageEventImpl({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatMessageEvent.deleteMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteChatMessageEventImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteChatMessageEventImplCopyWith<_$DeleteChatMessageEventImpl>
      get copyWith => __$$DeleteChatMessageEventImplCopyWithImpl<
          _$DeleteChatMessageEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class DeleteChatMessageEvent implements ChatMessageEvent {
  const factory DeleteChatMessageEvent({required final String messageId}) =
      _$DeleteChatMessageEventImpl;

  String get messageId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteChatMessageEventImplCopyWith<_$DeleteChatMessageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkConversationReadEventImplCopyWith<$Res> {
  factory _$$MarkConversationReadEventImplCopyWith(
          _$MarkConversationReadEventImpl value,
          $Res Function(_$MarkConversationReadEventImpl) then) =
      __$$MarkConversationReadEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, String? uptoMessageId});
}

/// @nodoc
class __$$MarkConversationReadEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res,
        _$MarkConversationReadEventImpl>
    implements _$$MarkConversationReadEventImplCopyWith<$Res> {
  __$$MarkConversationReadEventImplCopyWithImpl(
      _$MarkConversationReadEventImpl _value,
      $Res Function(_$MarkConversationReadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? uptoMessageId = freezed,
  }) {
    return _then(_$MarkConversationReadEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      uptoMessageId: freezed == uptoMessageId
          ? _value.uptoMessageId
          : uptoMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MarkConversationReadEventImpl implements MarkConversationReadEvent {
  const _$MarkConversationReadEventImpl(
      {required this.conversationId, this.uptoMessageId});

  @override
  final String conversationId;
  @override
  final String? uptoMessageId;

  @override
  String toString() {
    return 'ChatMessageEvent.markConversationRead(conversationId: $conversationId, uptoMessageId: $uptoMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkConversationReadEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.uptoMessageId, uptoMessageId) ||
                other.uptoMessageId == uptoMessageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, uptoMessageId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkConversationReadEventImplCopyWith<_$MarkConversationReadEventImpl>
      get copyWith => __$$MarkConversationReadEventImplCopyWithImpl<
          _$MarkConversationReadEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return markConversationRead(conversationId, uptoMessageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return markConversationRead?.call(conversationId, uptoMessageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (markConversationRead != null) {
      return markConversationRead(conversationId, uptoMessageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return markConversationRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return markConversationRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (markConversationRead != null) {
      return markConversationRead(this);
    }
    return orElse();
  }
}

abstract class MarkConversationReadEvent implements ChatMessageEvent {
  const factory MarkConversationReadEvent(
      {required final String conversationId,
      final String? uptoMessageId}) = _$MarkConversationReadEventImpl;

  String get conversationId;
  String? get uptoMessageId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkConversationReadEventImplCopyWith<_$MarkConversationReadEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearChatMessagesInfoEventImplCopyWith<$Res> {
  factory _$$ClearChatMessagesInfoEventImplCopyWith(
          _$ClearChatMessagesInfoEventImpl value,
          $Res Function(_$ClearChatMessagesInfoEventImpl) then) =
      __$$ClearChatMessagesInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearChatMessagesInfoEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res,
        _$ClearChatMessagesInfoEventImpl>
    implements _$$ClearChatMessagesInfoEventImplCopyWith<$Res> {
  __$$ClearChatMessagesInfoEventImplCopyWithImpl(
      _$ClearChatMessagesInfoEventImpl _value,
      $Res Function(_$ClearChatMessagesInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearChatMessagesInfoEventImpl implements ClearChatMessagesInfoEvent {
  const _$ClearChatMessagesInfoEventImpl();

  @override
  String toString() {
    return 'ChatMessageEvent.clearInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearChatMessagesInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return clearInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return clearInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (clearInfo != null) {
      return clearInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return clearInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return clearInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (clearInfo != null) {
      return clearInfo(this);
    }
    return orElse();
  }
}

abstract class ClearChatMessagesInfoEvent implements ChatMessageEvent {
  const factory ClearChatMessagesInfoEvent() = _$ClearChatMessagesInfoEventImpl;
}

/// @nodoc
abstract class _$$StartWatchMessagesEventImplCopyWith<$Res> {
  factory _$$StartWatchMessagesEventImplCopyWith(
          _$StartWatchMessagesEventImpl value,
          $Res Function(_$StartWatchMessagesEventImpl) then) =
      __$$StartWatchMessagesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$StartWatchMessagesEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$StartWatchMessagesEventImpl>
    implements _$$StartWatchMessagesEventImplCopyWith<$Res> {
  __$$StartWatchMessagesEventImplCopyWithImpl(
      _$StartWatchMessagesEventImpl _value,
      $Res Function(_$StartWatchMessagesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$StartWatchMessagesEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartWatchMessagesEventImpl implements StartWatchMessagesEvent {
  const _$StartWatchMessagesEventImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatMessageEvent.startWatch(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWatchMessagesEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWatchMessagesEventImplCopyWith<_$StartWatchMessagesEventImpl>
      get copyWith => __$$StartWatchMessagesEventImplCopyWithImpl<
          _$StartWatchMessagesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return startWatch(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return startWatch?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (startWatch != null) {
      return startWatch(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return startWatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return startWatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (startWatch != null) {
      return startWatch(this);
    }
    return orElse();
  }
}

abstract class StartWatchMessagesEvent implements ChatMessageEvent {
  const factory StartWatchMessagesEvent(
      {required final String conversationId}) = _$StartWatchMessagesEventImpl;

  String get conversationId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartWatchMessagesEventImplCopyWith<_$StartWatchMessagesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopWatchMessagesEventImplCopyWith<$Res> {
  factory _$$StopWatchMessagesEventImplCopyWith(
          _$StopWatchMessagesEventImpl value,
          $Res Function(_$StopWatchMessagesEventImpl) then) =
      __$$StopWatchMessagesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWatchMessagesEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$StopWatchMessagesEventImpl>
    implements _$$StopWatchMessagesEventImplCopyWith<$Res> {
  __$$StopWatchMessagesEventImplCopyWithImpl(
      _$StopWatchMessagesEventImpl _value,
      $Res Function(_$StopWatchMessagesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWatchMessagesEventImpl implements StopWatchMessagesEvent {
  const _$StopWatchMessagesEventImpl();

  @override
  String toString() {
    return 'ChatMessageEvent.stopWatch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchMessagesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return stopWatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return stopWatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (stopWatch != null) {
      return stopWatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return stopWatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return stopWatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (stopWatch != null) {
      return stopWatch(this);
    }
    return orElse();
  }
}

abstract class StopWatchMessagesEvent implements ChatMessageEvent {
  const factory StopWatchMessagesEvent() = _$StopWatchMessagesEventImpl;
}

/// @nodoc
abstract class _$$WatchMessageArrivedEventImplCopyWith<$Res> {
  factory _$$WatchMessageArrivedEventImplCopyWith(
          _$WatchMessageArrivedEventImpl value,
          $Res Function(_$WatchMessageArrivedEventImpl) then) =
      __$$WatchMessageArrivedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageEntity message});

  $ChatMessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$WatchMessageArrivedEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$WatchMessageArrivedEventImpl>
    implements _$$WatchMessageArrivedEventImplCopyWith<$Res> {
  __$$WatchMessageArrivedEventImplCopyWithImpl(
      _$WatchMessageArrivedEventImpl _value,
      $Res Function(_$WatchMessageArrivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WatchMessageArrivedEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity,
    ));
  }

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res> get message {
    return $ChatMessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$WatchMessageArrivedEventImpl implements WatchMessageArrivedEvent {
  const _$WatchMessageArrivedEventImpl(this.message);

  @override
  final ChatMessageEntity message;

  @override
  String toString() {
    return 'ChatMessageEvent.watchMessageArrived(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchMessageArrivedEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchMessageArrivedEventImplCopyWith<_$WatchMessageArrivedEventImpl>
      get copyWith => __$$WatchMessageArrivedEventImplCopyWithImpl<
          _$WatchMessageArrivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return watchMessageArrived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return watchMessageArrived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageArrived != null) {
      return watchMessageArrived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return watchMessageArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return watchMessageArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageArrived != null) {
      return watchMessageArrived(this);
    }
    return orElse();
  }
}

abstract class WatchMessageArrivedEvent implements ChatMessageEvent {
  const factory WatchMessageArrivedEvent(final ChatMessageEntity message) =
      _$WatchMessageArrivedEventImpl;

  ChatMessageEntity get message;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchMessageArrivedEventImplCopyWith<_$WatchMessageArrivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchMessageUpdatedEventImplCopyWith<$Res> {
  factory _$$WatchMessageUpdatedEventImplCopyWith(
          _$WatchMessageUpdatedEventImpl value,
          $Res Function(_$WatchMessageUpdatedEventImpl) then) =
      __$$WatchMessageUpdatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageEntity message});

  $ChatMessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$WatchMessageUpdatedEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$WatchMessageUpdatedEventImpl>
    implements _$$WatchMessageUpdatedEventImplCopyWith<$Res> {
  __$$WatchMessageUpdatedEventImplCopyWithImpl(
      _$WatchMessageUpdatedEventImpl _value,
      $Res Function(_$WatchMessageUpdatedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WatchMessageUpdatedEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity,
    ));
  }

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res> get message {
    return $ChatMessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$WatchMessageUpdatedEventImpl implements WatchMessageUpdatedEvent {
  const _$WatchMessageUpdatedEventImpl(this.message);

  @override
  final ChatMessageEntity message;

  @override
  String toString() {
    return 'ChatMessageEvent.watchMessageUpdated(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchMessageUpdatedEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchMessageUpdatedEventImplCopyWith<_$WatchMessageUpdatedEventImpl>
      get copyWith => __$$WatchMessageUpdatedEventImplCopyWithImpl<
          _$WatchMessageUpdatedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return watchMessageUpdated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return watchMessageUpdated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageUpdated != null) {
      return watchMessageUpdated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return watchMessageUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return watchMessageUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageUpdated != null) {
      return watchMessageUpdated(this);
    }
    return orElse();
  }
}

abstract class WatchMessageUpdatedEvent implements ChatMessageEvent {
  const factory WatchMessageUpdatedEvent(final ChatMessageEntity message) =
      _$WatchMessageUpdatedEventImpl;

  ChatMessageEntity get message;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchMessageUpdatedEventImplCopyWith<_$WatchMessageUpdatedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchMessageDeletedEventImplCopyWith<$Res> {
  factory _$$WatchMessageDeletedEventImplCopyWith(
          _$WatchMessageDeletedEventImpl value,
          $Res Function(_$WatchMessageDeletedEventImpl) then) =
      __$$WatchMessageDeletedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageEntity message});

  $ChatMessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$WatchMessageDeletedEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$WatchMessageDeletedEventImpl>
    implements _$$WatchMessageDeletedEventImplCopyWith<$Res> {
  __$$WatchMessageDeletedEventImplCopyWithImpl(
      _$WatchMessageDeletedEventImpl _value,
      $Res Function(_$WatchMessageDeletedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WatchMessageDeletedEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity,
    ));
  }

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res> get message {
    return $ChatMessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$WatchMessageDeletedEventImpl implements WatchMessageDeletedEvent {
  const _$WatchMessageDeletedEventImpl(this.message);

  @override
  final ChatMessageEntity message;

  @override
  String toString() {
    return 'ChatMessageEvent.watchMessageDeleted(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchMessageDeletedEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchMessageDeletedEventImplCopyWith<_$WatchMessageDeletedEventImpl>
      get copyWith => __$$WatchMessageDeletedEventImplCopyWithImpl<
          _$WatchMessageDeletedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return watchMessageDeleted(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return watchMessageDeleted?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageDeleted != null) {
      return watchMessageDeleted(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return watchMessageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return watchMessageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageDeleted != null) {
      return watchMessageDeleted(this);
    }
    return orElse();
  }
}

abstract class WatchMessageDeletedEvent implements ChatMessageEvent {
  const factory WatchMessageDeletedEvent(final ChatMessageEntity message) =
      _$WatchMessageDeletedEventImpl;

  ChatMessageEntity get message;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchMessageDeletedEventImplCopyWith<_$WatchMessageDeletedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchMessageErrorEventImplCopyWith<$Res> {
  factory _$$WatchMessageErrorEventImplCopyWith(
          _$WatchMessageErrorEventImpl value,
          $Res Function(_$WatchMessageErrorEventImpl) then) =
      __$$WatchMessageErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$WatchMessageErrorEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$WatchMessageErrorEventImpl>
    implements _$$WatchMessageErrorEventImplCopyWith<$Res> {
  __$$WatchMessageErrorEventImplCopyWithImpl(
      _$WatchMessageErrorEventImpl _value,
      $Res Function(_$WatchMessageErrorEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WatchMessageErrorEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchMessageErrorEventImpl implements WatchMessageErrorEvent {
  const _$WatchMessageErrorEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatMessageEvent.watchMessageError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchMessageErrorEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchMessageErrorEventImplCopyWith<_$WatchMessageErrorEventImpl>
      get copyWith => __$$WatchMessageErrorEventImplCopyWithImpl<
          _$WatchMessageErrorEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return watchMessageError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return watchMessageError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageError != null) {
      return watchMessageError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return watchMessageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return watchMessageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchMessageError != null) {
      return watchMessageError(this);
    }
    return orElse();
  }
}

abstract class WatchMessageErrorEvent implements ChatMessageEvent {
  const factory WatchMessageErrorEvent(final String message) =
      _$WatchMessageErrorEventImpl;

  String get message;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchMessageErrorEventImplCopyWith<_$WatchMessageErrorEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadConversationListEventImplCopyWith<$Res> {
  factory _$$LoadConversationListEventImplCopyWith(
          _$LoadConversationListEventImpl value,
          $Res Function(_$LoadConversationListEventImpl) then) =
      __$$LoadConversationListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadConversationListEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res,
        _$LoadConversationListEventImpl>
    implements _$$LoadConversationListEventImplCopyWith<$Res> {
  __$$LoadConversationListEventImplCopyWithImpl(
      _$LoadConversationListEventImpl _value,
      $Res Function(_$LoadConversationListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadConversationListEventImpl implements LoadConversationListEvent {
  const _$LoadConversationListEventImpl();

  @override
  String toString() {
    return 'ChatMessageEvent.loadConversationList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadConversationListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return loadConversationList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return loadConversationList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadConversationList != null) {
      return loadConversationList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return loadConversationList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return loadConversationList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadConversationList != null) {
      return loadConversationList(this);
    }
    return orElse();
  }
}

abstract class LoadConversationListEvent implements ChatMessageEvent {
  const factory LoadConversationListEvent() = _$LoadConversationListEventImpl;
}

/// @nodoc
abstract class _$$LoadMessageReadsEventImplCopyWith<$Res> {
  factory _$$LoadMessageReadsEventImplCopyWith(
          _$LoadMessageReadsEventImpl value,
          $Res Function(_$LoadMessageReadsEventImpl) then) =
      __$$LoadMessageReadsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$LoadMessageReadsEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$LoadMessageReadsEventImpl>
    implements _$$LoadMessageReadsEventImplCopyWith<$Res> {
  __$$LoadMessageReadsEventImplCopyWithImpl(_$LoadMessageReadsEventImpl _value,
      $Res Function(_$LoadMessageReadsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$LoadMessageReadsEventImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessageReadsEventImpl implements LoadMessageReadsEvent {
  const _$LoadMessageReadsEventImpl({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatMessageEvent.loadMessageReads(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessageReadsEventImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessageReadsEventImplCopyWith<_$LoadMessageReadsEventImpl>
      get copyWith => __$$LoadMessageReadsEventImplCopyWithImpl<
          _$LoadMessageReadsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return loadMessageReads(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return loadMessageReads?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadMessageReads != null) {
      return loadMessageReads(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return loadMessageReads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return loadMessageReads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (loadMessageReads != null) {
      return loadMessageReads(this);
    }
    return orElse();
  }
}

abstract class LoadMessageReadsEvent implements ChatMessageEvent {
  const factory LoadMessageReadsEvent({required final String messageId}) =
      _$LoadMessageReadsEventImpl;

  String get messageId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMessageReadsEventImplCopyWith<_$LoadMessageReadsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkMessageReadEventImplCopyWith<$Res> {
  factory _$$MarkMessageReadEventImplCopyWith(_$MarkMessageReadEventImpl value,
          $Res Function(_$MarkMessageReadEventImpl) then) =
      __$$MarkMessageReadEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MarkMessageReadEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$MarkMessageReadEventImpl>
    implements _$$MarkMessageReadEventImplCopyWith<$Res> {
  __$$MarkMessageReadEventImplCopyWithImpl(_$MarkMessageReadEventImpl _value,
      $Res Function(_$MarkMessageReadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MarkMessageReadEventImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkMessageReadEventImpl implements MarkMessageReadEvent {
  const _$MarkMessageReadEventImpl({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatMessageEvent.markMessageRead(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkMessageReadEventImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkMessageReadEventImplCopyWith<_$MarkMessageReadEventImpl>
      get copyWith =>
          __$$MarkMessageReadEventImplCopyWithImpl<_$MarkMessageReadEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return markMessageRead(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return markMessageRead?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (markMessageRead != null) {
      return markMessageRead(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return markMessageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return markMessageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (markMessageRead != null) {
      return markMessageRead(this);
    }
    return orElse();
  }
}

abstract class MarkMessageReadEvent implements ChatMessageEvent {
  const factory MarkMessageReadEvent({required final String messageId}) =
      _$MarkMessageReadEventImpl;

  String get messageId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkMessageReadEventImplCopyWith<_$MarkMessageReadEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartWatchReadsEventImplCopyWith<$Res> {
  factory _$$StartWatchReadsEventImplCopyWith(_$StartWatchReadsEventImpl value,
          $Res Function(_$StartWatchReadsEventImpl) then) =
      __$$StartWatchReadsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$StartWatchReadsEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$StartWatchReadsEventImpl>
    implements _$$StartWatchReadsEventImplCopyWith<$Res> {
  __$$StartWatchReadsEventImplCopyWithImpl(_$StartWatchReadsEventImpl _value,
      $Res Function(_$StartWatchReadsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$StartWatchReadsEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartWatchReadsEventImpl implements StartWatchReadsEvent {
  const _$StartWatchReadsEventImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatMessageEvent.startWatchReads(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWatchReadsEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWatchReadsEventImplCopyWith<_$StartWatchReadsEventImpl>
      get copyWith =>
          __$$StartWatchReadsEventImplCopyWithImpl<_$StartWatchReadsEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return startWatchReads(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return startWatchReads?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (startWatchReads != null) {
      return startWatchReads(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return startWatchReads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return startWatchReads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (startWatchReads != null) {
      return startWatchReads(this);
    }
    return orElse();
  }
}

abstract class StartWatchReadsEvent implements ChatMessageEvent {
  const factory StartWatchReadsEvent({required final String conversationId}) =
      _$StartWatchReadsEventImpl;

  String get conversationId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartWatchReadsEventImplCopyWith<_$StartWatchReadsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopWatchReadsEventImplCopyWith<$Res> {
  factory _$$StopWatchReadsEventImplCopyWith(_$StopWatchReadsEventImpl value,
          $Res Function(_$StopWatchReadsEventImpl) then) =
      __$$StopWatchReadsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWatchReadsEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$StopWatchReadsEventImpl>
    implements _$$StopWatchReadsEventImplCopyWith<$Res> {
  __$$StopWatchReadsEventImplCopyWithImpl(_$StopWatchReadsEventImpl _value,
      $Res Function(_$StopWatchReadsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWatchReadsEventImpl implements StopWatchReadsEvent {
  const _$StopWatchReadsEventImpl();

  @override
  String toString() {
    return 'ChatMessageEvent.stopWatchReads()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchReadsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return stopWatchReads();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return stopWatchReads?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (stopWatchReads != null) {
      return stopWatchReads();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return stopWatchReads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return stopWatchReads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (stopWatchReads != null) {
      return stopWatchReads(this);
    }
    return orElse();
  }
}

abstract class StopWatchReadsEvent implements ChatMessageEvent {
  const factory StopWatchReadsEvent() = _$StopWatchReadsEventImpl;
}

/// @nodoc
abstract class _$$WatchReadArrivedEventImplCopyWith<$Res> {
  factory _$$WatchReadArrivedEventImplCopyWith(
          _$WatchReadArrivedEventImpl value,
          $Res Function(_$WatchReadArrivedEventImpl) then) =
      __$$WatchReadArrivedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageReadEntity readEntity});

  $MessageReadEntityCopyWith<$Res> get readEntity;
}

/// @nodoc
class __$$WatchReadArrivedEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$WatchReadArrivedEventImpl>
    implements _$$WatchReadArrivedEventImplCopyWith<$Res> {
  __$$WatchReadArrivedEventImplCopyWithImpl(_$WatchReadArrivedEventImpl _value,
      $Res Function(_$WatchReadArrivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readEntity = null,
  }) {
    return _then(_$WatchReadArrivedEventImpl(
      null == readEntity
          ? _value.readEntity
          : readEntity // ignore: cast_nullable_to_non_nullable
              as MessageReadEntity,
    ));
  }

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageReadEntityCopyWith<$Res> get readEntity {
    return $MessageReadEntityCopyWith<$Res>(_value.readEntity, (value) {
      return _then(_value.copyWith(readEntity: value));
    });
  }
}

/// @nodoc

class _$WatchReadArrivedEventImpl implements WatchReadArrivedEvent {
  const _$WatchReadArrivedEventImpl(this.readEntity);

  @override
  final MessageReadEntity readEntity;

  @override
  String toString() {
    return 'ChatMessageEvent.watchReadArrived(readEntity: $readEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchReadArrivedEventImpl &&
            (identical(other.readEntity, readEntity) ||
                other.readEntity == readEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, readEntity);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchReadArrivedEventImplCopyWith<_$WatchReadArrivedEventImpl>
      get copyWith => __$$WatchReadArrivedEventImplCopyWithImpl<
          _$WatchReadArrivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return watchReadArrived(readEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return watchReadArrived?.call(readEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchReadArrived != null) {
      return watchReadArrived(readEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return watchReadArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return watchReadArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchReadArrived != null) {
      return watchReadArrived(this);
    }
    return orElse();
  }
}

abstract class WatchReadArrivedEvent implements ChatMessageEvent {
  const factory WatchReadArrivedEvent(final MessageReadEntity readEntity) =
      _$WatchReadArrivedEventImpl;

  MessageReadEntity get readEntity;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchReadArrivedEventImplCopyWith<_$WatchReadArrivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTypingEventImplCopyWith<$Res> {
  factory _$$SendTypingEventImplCopyWith(_$SendTypingEventImpl value,
          $Res Function(_$SendTypingEventImpl) then) =
      __$$SendTypingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, bool isTyping});
}

/// @nodoc
class __$$SendTypingEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$SendTypingEventImpl>
    implements _$$SendTypingEventImplCopyWith<$Res> {
  __$$SendTypingEventImplCopyWithImpl(
      _$SendTypingEventImpl _value, $Res Function(_$SendTypingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? isTyping = null,
  }) {
    return _then(_$SendTypingEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SendTypingEventImpl implements SendTypingEvent {
  const _$SendTypingEventImpl(
      {required this.conversationId, required this.isTyping});

  @override
  final String conversationId;
  @override
  final bool isTyping;

  @override
  String toString() {
    return 'ChatMessageEvent.sendTyping(conversationId: $conversationId, isTyping: $isTyping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTypingEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, isTyping);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTypingEventImplCopyWith<_$SendTypingEventImpl> get copyWith =>
      __$$SendTypingEventImplCopyWithImpl<_$SendTypingEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return sendTyping(conversationId, isTyping);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return sendTyping?.call(conversationId, isTyping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (sendTyping != null) {
      return sendTyping(conversationId, isTyping);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return sendTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return sendTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (sendTyping != null) {
      return sendTyping(this);
    }
    return orElse();
  }
}

abstract class SendTypingEvent implements ChatMessageEvent {
  const factory SendTypingEvent(
      {required final String conversationId,
      required final bool isTyping}) = _$SendTypingEventImpl;

  String get conversationId;
  bool get isTyping;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendTypingEventImplCopyWith<_$SendTypingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartWatchTypingEventImplCopyWith<$Res> {
  factory _$$StartWatchTypingEventImplCopyWith(
          _$StartWatchTypingEventImpl value,
          $Res Function(_$StartWatchTypingEventImpl) then) =
      __$$StartWatchTypingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$StartWatchTypingEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$StartWatchTypingEventImpl>
    implements _$$StartWatchTypingEventImplCopyWith<$Res> {
  __$$StartWatchTypingEventImplCopyWithImpl(_$StartWatchTypingEventImpl _value,
      $Res Function(_$StartWatchTypingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$StartWatchTypingEventImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartWatchTypingEventImpl implements StartWatchTypingEvent {
  const _$StartWatchTypingEventImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatMessageEvent.startWatchTyping(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWatchTypingEventImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWatchTypingEventImplCopyWith<_$StartWatchTypingEventImpl>
      get copyWith => __$$StartWatchTypingEventImplCopyWithImpl<
          _$StartWatchTypingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return startWatchTyping(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return startWatchTyping?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (startWatchTyping != null) {
      return startWatchTyping(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return startWatchTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return startWatchTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (startWatchTyping != null) {
      return startWatchTyping(this);
    }
    return orElse();
  }
}

abstract class StartWatchTypingEvent implements ChatMessageEvent {
  const factory StartWatchTypingEvent({required final String conversationId}) =
      _$StartWatchTypingEventImpl;

  String get conversationId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartWatchTypingEventImplCopyWith<_$StartWatchTypingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopWatchTypingEventImplCopyWith<$Res> {
  factory _$$StopWatchTypingEventImplCopyWith(_$StopWatchTypingEventImpl value,
          $Res Function(_$StopWatchTypingEventImpl) then) =
      __$$StopWatchTypingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWatchTypingEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$StopWatchTypingEventImpl>
    implements _$$StopWatchTypingEventImplCopyWith<$Res> {
  __$$StopWatchTypingEventImplCopyWithImpl(_$StopWatchTypingEventImpl _value,
      $Res Function(_$StopWatchTypingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWatchTypingEventImpl implements StopWatchTypingEvent {
  const _$StopWatchTypingEventImpl();

  @override
  String toString() {
    return 'ChatMessageEvent.stopWatchTyping()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchTypingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return stopWatchTyping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return stopWatchTyping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (stopWatchTyping != null) {
      return stopWatchTyping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return stopWatchTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return stopWatchTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (stopWatchTyping != null) {
      return stopWatchTyping(this);
    }
    return orElse();
  }
}

abstract class StopWatchTypingEvent implements ChatMessageEvent {
  const factory StopWatchTypingEvent() = _$StopWatchTypingEventImpl;
}

/// @nodoc
abstract class _$$WatchTypingArrivedEventImplCopyWith<$Res> {
  factory _$$WatchTypingArrivedEventImplCopyWith(
          _$WatchTypingArrivedEventImpl value,
          $Res Function(_$WatchTypingArrivedEventImpl) then) =
      __$$WatchTypingArrivedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$WatchTypingArrivedEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$WatchTypingArrivedEventImpl>
    implements _$$WatchTypingArrivedEventImplCopyWith<$Res> {
  __$$WatchTypingArrivedEventImplCopyWithImpl(
      _$WatchTypingArrivedEventImpl _value,
      $Res Function(_$WatchTypingArrivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$WatchTypingArrivedEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchTypingArrivedEventImpl implements WatchTypingArrivedEvent {
  const _$WatchTypingArrivedEventImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ChatMessageEvent.watchTypingArrived(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchTypingArrivedEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchTypingArrivedEventImplCopyWith<_$WatchTypingArrivedEventImpl>
      get copyWith => __$$WatchTypingArrivedEventImplCopyWithImpl<
          _$WatchTypingArrivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return watchTypingArrived(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return watchTypingArrived?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchTypingArrived != null) {
      return watchTypingArrived(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return watchTypingArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return watchTypingArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (watchTypingArrived != null) {
      return watchTypingArrived(this);
    }
    return orElse();
  }
}

abstract class WatchTypingArrivedEvent implements ChatMessageEvent {
  const factory WatchTypingArrivedEvent(final String userId) =
      _$WatchTypingArrivedEventImpl;

  String get userId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchTypingArrivedEventImplCopyWith<_$WatchTypingArrivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CleanupTypingEventImplCopyWith<$Res> {
  factory _$$CleanupTypingEventImplCopyWith(_$CleanupTypingEventImpl value,
          $Res Function(_$CleanupTypingEventImpl) then) =
      __$$CleanupTypingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CleanupTypingEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$CleanupTypingEventImpl>
    implements _$$CleanupTypingEventImplCopyWith<$Res> {
  __$$CleanupTypingEventImplCopyWithImpl(_$CleanupTypingEventImpl _value,
      $Res Function(_$CleanupTypingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CleanupTypingEventImpl implements CleanupTypingEvent {
  const _$CleanupTypingEventImpl();

  @override
  String toString() {
    return 'ChatMessageEvent.cleanupTyping()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CleanupTypingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, int? limit) loadMessages,
    required TResult Function(String conversationId, int limit)
        loadMoreMessages,
    required TResult Function(
            String conversationId, String content, String? replyToMessageId)
        sendMessage,
    required TResult Function(String messageId, String newContent) editMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String conversationId, String? uptoMessageId)
        markConversationRead,
    required TResult Function() clearInfo,
    required TResult Function(String conversationId) startWatch,
    required TResult Function() stopWatch,
    required TResult Function(ChatMessageEntity message) watchMessageArrived,
    required TResult Function(ChatMessageEntity message) watchMessageUpdated,
    required TResult Function(ChatMessageEntity message) watchMessageDeleted,
    required TResult Function(String message) watchMessageError,
    required TResult Function() loadConversationList,
    required TResult Function(String messageId) loadMessageReads,
    required TResult Function(String messageId) markMessageRead,
    required TResult Function(String conversationId) startWatchReads,
    required TResult Function() stopWatchReads,
    required TResult Function(MessageReadEntity readEntity) watchReadArrived,
    required TResult Function(String conversationId, bool isTyping) sendTyping,
    required TResult Function(String conversationId) startWatchTyping,
    required TResult Function() stopWatchTyping,
    required TResult Function(String userId) watchTypingArrived,
    required TResult Function() cleanupTyping,
  }) {
    return cleanupTyping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, int? limit)? loadMessages,
    TResult? Function(String conversationId, int limit)? loadMoreMessages,
    TResult? Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult? Function(String messageId, String newContent)? editMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult? Function()? clearInfo,
    TResult? Function(String conversationId)? startWatch,
    TResult? Function()? stopWatch,
    TResult? Function(ChatMessageEntity message)? watchMessageArrived,
    TResult? Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult? Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult? Function(String message)? watchMessageError,
    TResult? Function()? loadConversationList,
    TResult? Function(String messageId)? loadMessageReads,
    TResult? Function(String messageId)? markMessageRead,
    TResult? Function(String conversationId)? startWatchReads,
    TResult? Function()? stopWatchReads,
    TResult? Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult? Function(String conversationId, bool isTyping)? sendTyping,
    TResult? Function(String conversationId)? startWatchTyping,
    TResult? Function()? stopWatchTyping,
    TResult? Function(String userId)? watchTypingArrived,
    TResult? Function()? cleanupTyping,
  }) {
    return cleanupTyping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, int? limit)? loadMessages,
    TResult Function(String conversationId, int limit)? loadMoreMessages,
    TResult Function(
            String conversationId, String content, String? replyToMessageId)?
        sendMessage,
    TResult Function(String messageId, String newContent)? editMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String conversationId, String? uptoMessageId)?
        markConversationRead,
    TResult Function()? clearInfo,
    TResult Function(String conversationId)? startWatch,
    TResult Function()? stopWatch,
    TResult Function(ChatMessageEntity message)? watchMessageArrived,
    TResult Function(ChatMessageEntity message)? watchMessageUpdated,
    TResult Function(ChatMessageEntity message)? watchMessageDeleted,
    TResult Function(String message)? watchMessageError,
    TResult Function()? loadConversationList,
    TResult Function(String messageId)? loadMessageReads,
    TResult Function(String messageId)? markMessageRead,
    TResult Function(String conversationId)? startWatchReads,
    TResult Function()? stopWatchReads,
    TResult Function(MessageReadEntity readEntity)? watchReadArrived,
    TResult Function(String conversationId, bool isTyping)? sendTyping,
    TResult Function(String conversationId)? startWatchTyping,
    TResult Function()? stopWatchTyping,
    TResult Function(String userId)? watchTypingArrived,
    TResult Function()? cleanupTyping,
    required TResult orElse(),
  }) {
    if (cleanupTyping != null) {
      return cleanupTyping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatMessagesEvent value) loadMessages,
    required TResult Function(LoadMoreChatMessagesEvent value) loadMoreMessages,
    required TResult Function(SendChatMessageEvent value) sendMessage,
    required TResult Function(EditChatMessageEvent value) editMessage,
    required TResult Function(DeleteChatMessageEvent value) deleteMessage,
    required TResult Function(MarkConversationReadEvent value)
        markConversationRead,
    required TResult Function(ClearChatMessagesInfoEvent value) clearInfo,
    required TResult Function(StartWatchMessagesEvent value) startWatch,
    required TResult Function(StopWatchMessagesEvent value) stopWatch,
    required TResult Function(WatchMessageArrivedEvent value)
        watchMessageArrived,
    required TResult Function(WatchMessageUpdatedEvent value)
        watchMessageUpdated,
    required TResult Function(WatchMessageDeletedEvent value)
        watchMessageDeleted,
    required TResult Function(WatchMessageErrorEvent value) watchMessageError,
    required TResult Function(LoadConversationListEvent value)
        loadConversationList,
    required TResult Function(LoadMessageReadsEvent value) loadMessageReads,
    required TResult Function(MarkMessageReadEvent value) markMessageRead,
    required TResult Function(StartWatchReadsEvent value) startWatchReads,
    required TResult Function(StopWatchReadsEvent value) stopWatchReads,
    required TResult Function(WatchReadArrivedEvent value) watchReadArrived,
    required TResult Function(SendTypingEvent value) sendTyping,
    required TResult Function(StartWatchTypingEvent value) startWatchTyping,
    required TResult Function(StopWatchTypingEvent value) stopWatchTyping,
    required TResult Function(WatchTypingArrivedEvent value) watchTypingArrived,
    required TResult Function(CleanupTypingEvent value) cleanupTyping,
  }) {
    return cleanupTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatMessagesEvent value)? loadMessages,
    TResult? Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult? Function(SendChatMessageEvent value)? sendMessage,
    TResult? Function(EditChatMessageEvent value)? editMessage,
    TResult? Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult? Function(MarkConversationReadEvent value)? markConversationRead,
    TResult? Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult? Function(StartWatchMessagesEvent value)? startWatch,
    TResult? Function(StopWatchMessagesEvent value)? stopWatch,
    TResult? Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult? Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult? Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult? Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult? Function(LoadConversationListEvent value)? loadConversationList,
    TResult? Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult? Function(MarkMessageReadEvent value)? markMessageRead,
    TResult? Function(StartWatchReadsEvent value)? startWatchReads,
    TResult? Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult? Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult? Function(SendTypingEvent value)? sendTyping,
    TResult? Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult? Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult? Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult? Function(CleanupTypingEvent value)? cleanupTyping,
  }) {
    return cleanupTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatMessagesEvent value)? loadMessages,
    TResult Function(LoadMoreChatMessagesEvent value)? loadMoreMessages,
    TResult Function(SendChatMessageEvent value)? sendMessage,
    TResult Function(EditChatMessageEvent value)? editMessage,
    TResult Function(DeleteChatMessageEvent value)? deleteMessage,
    TResult Function(MarkConversationReadEvent value)? markConversationRead,
    TResult Function(ClearChatMessagesInfoEvent value)? clearInfo,
    TResult Function(StartWatchMessagesEvent value)? startWatch,
    TResult Function(StopWatchMessagesEvent value)? stopWatch,
    TResult Function(WatchMessageArrivedEvent value)? watchMessageArrived,
    TResult Function(WatchMessageUpdatedEvent value)? watchMessageUpdated,
    TResult Function(WatchMessageDeletedEvent value)? watchMessageDeleted,
    TResult Function(WatchMessageErrorEvent value)? watchMessageError,
    TResult Function(LoadConversationListEvent value)? loadConversationList,
    TResult Function(LoadMessageReadsEvent value)? loadMessageReads,
    TResult Function(MarkMessageReadEvent value)? markMessageRead,
    TResult Function(StartWatchReadsEvent value)? startWatchReads,
    TResult Function(StopWatchReadsEvent value)? stopWatchReads,
    TResult Function(WatchReadArrivedEvent value)? watchReadArrived,
    TResult Function(SendTypingEvent value)? sendTyping,
    TResult Function(StartWatchTypingEvent value)? startWatchTyping,
    TResult Function(StopWatchTypingEvent value)? stopWatchTyping,
    TResult Function(WatchTypingArrivedEvent value)? watchTypingArrived,
    TResult Function(CleanupTypingEvent value)? cleanupTyping,
    required TResult orElse(),
  }) {
    if (cleanupTyping != null) {
      return cleanupTyping(this);
    }
    return orElse();
  }
}

abstract class CleanupTypingEvent implements ChatMessageEvent {
  const factory CleanupTypingEvent() = _$CleanupTypingEventImpl;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatMessageState {

// Messages
 List<ChatMessageEntity> get messages; String? get conversationId; int get unreadCount; bool get hasMore; MessageCursorEntity? get cursor; bool get isLoading; bool get isLoadingMore; String? get errorMessage; bool get isSending; String? get sendError; ChatMessageEntity? get sentMessage; bool get isEditing; String? get editError; ChatMessageEntity? get editedMessage; bool get isDeleting; String? get deleteError; bool get isMarkingRead; String? get markReadError; String? get message; bool get isWatching; String? get watchError;// Upload Media
 bool get isUploadingMedia; String? get uploadError; String? get uploadSuccessMessage;// Conversation List
 List<ConversationListEntity> get conversations; bool get isLoadingConversations; String? get conversationsError; String get selectedFilter; String get searchQuery;// Message Reads (Read Receipts)
 Map<String, List<MessageReadEntity>> get messageReads; bool get isLoadingReads; String? get readsError; bool get isWatchingReads;// Typing Indicators
 Map<String, DateTime> get typingUsers; bool get isWatchingTyping;
/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageStateCopyWith<ChatMessageState> get copyWith => _$ChatMessageStateCopyWithImpl<ChatMessageState>(this as ChatMessageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageState&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.sendError, sendError) || other.sendError == sendError)&&(identical(other.sentMessage, sentMessage) || other.sentMessage == sentMessage)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.editError, editError) || other.editError == editError)&&(identical(other.editedMessage, editedMessage) || other.editedMessage == editedMessage)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError)&&(identical(other.isMarkingRead, isMarkingRead) || other.isMarkingRead == isMarkingRead)&&(identical(other.markReadError, markReadError) || other.markReadError == markReadError)&&(identical(other.message, message) || other.message == message)&&(identical(other.isWatching, isWatching) || other.isWatching == isWatching)&&(identical(other.watchError, watchError) || other.watchError == watchError)&&(identical(other.isUploadingMedia, isUploadingMedia) || other.isUploadingMedia == isUploadingMedia)&&(identical(other.uploadError, uploadError) || other.uploadError == uploadError)&&(identical(other.uploadSuccessMessage, uploadSuccessMessage) || other.uploadSuccessMessage == uploadSuccessMessage)&&const DeepCollectionEquality().equals(other.conversations, conversations)&&(identical(other.isLoadingConversations, isLoadingConversations) || other.isLoadingConversations == isLoadingConversations)&&(identical(other.conversationsError, conversationsError) || other.conversationsError == conversationsError)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.messageReads, messageReads)&&(identical(other.isLoadingReads, isLoadingReads) || other.isLoadingReads == isLoadingReads)&&(identical(other.readsError, readsError) || other.readsError == readsError)&&(identical(other.isWatchingReads, isWatchingReads) || other.isWatchingReads == isWatchingReads)&&const DeepCollectionEquality().equals(other.typingUsers, typingUsers)&&(identical(other.isWatchingTyping, isWatchingTyping) || other.isWatchingTyping == isWatchingTyping));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(messages),conversationId,unreadCount,hasMore,cursor,isLoading,isLoadingMore,errorMessage,isSending,sendError,sentMessage,isEditing,editError,editedMessage,isDeleting,deleteError,isMarkingRead,markReadError,message,isWatching,watchError,isUploadingMedia,uploadError,uploadSuccessMessage,const DeepCollectionEquality().hash(conversations),isLoadingConversations,conversationsError,selectedFilter,searchQuery,const DeepCollectionEquality().hash(messageReads),isLoadingReads,readsError,isWatchingReads,const DeepCollectionEquality().hash(typingUsers),isWatchingTyping]);

@override
String toString() {
  return 'ChatMessageState(messages: $messages, conversationId: $conversationId, unreadCount: $unreadCount, hasMore: $hasMore, cursor: $cursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, isSending: $isSending, sendError: $sendError, sentMessage: $sentMessage, isEditing: $isEditing, editError: $editError, editedMessage: $editedMessage, isDeleting: $isDeleting, deleteError: $deleteError, isMarkingRead: $isMarkingRead, markReadError: $markReadError, message: $message, isWatching: $isWatching, watchError: $watchError, isUploadingMedia: $isUploadingMedia, uploadError: $uploadError, uploadSuccessMessage: $uploadSuccessMessage, conversations: $conversations, isLoadingConversations: $isLoadingConversations, conversationsError: $conversationsError, selectedFilter: $selectedFilter, searchQuery: $searchQuery, messageReads: $messageReads, isLoadingReads: $isLoadingReads, readsError: $readsError, isWatchingReads: $isWatchingReads, typingUsers: $typingUsers, isWatchingTyping: $isWatchingTyping)';
}


}

/// @nodoc
abstract mixin class $ChatMessageStateCopyWith<$Res>  {
  factory $ChatMessageStateCopyWith(ChatMessageState value, $Res Function(ChatMessageState) _then) = _$ChatMessageStateCopyWithImpl;
@useResult
$Res call({
 List<ChatMessageEntity> messages, String? conversationId, int unreadCount, bool hasMore, MessageCursorEntity? cursor, bool isLoading, bool isLoadingMore, String? errorMessage, bool isSending, String? sendError, ChatMessageEntity? sentMessage, bool isEditing, String? editError, ChatMessageEntity? editedMessage, bool isDeleting, String? deleteError, bool isMarkingRead, String? markReadError, String? message, bool isWatching, String? watchError, bool isUploadingMedia, String? uploadError, String? uploadSuccessMessage, List<ConversationListEntity> conversations, bool isLoadingConversations, String? conversationsError, String selectedFilter, String searchQuery, Map<String, List<MessageReadEntity>> messageReads, bool isLoadingReads, String? readsError, bool isWatchingReads, Map<String, DateTime> typingUsers, bool isWatchingTyping
});


$MessageCursorEntityCopyWith<$Res>? get cursor;$ChatMessageEntityCopyWith<$Res>? get sentMessage;$ChatMessageEntityCopyWith<$Res>? get editedMessage;

}
/// @nodoc
class _$ChatMessageStateCopyWithImpl<$Res>
    implements $ChatMessageStateCopyWith<$Res> {
  _$ChatMessageStateCopyWithImpl(this._self, this._then);

  final ChatMessageState _self;
  final $Res Function(ChatMessageState) _then;

/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? conversationId = freezed,Object? unreadCount = null,Object? hasMore = null,Object? cursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? errorMessage = freezed,Object? isSending = null,Object? sendError = freezed,Object? sentMessage = freezed,Object? isEditing = null,Object? editError = freezed,Object? editedMessage = freezed,Object? isDeleting = null,Object? deleteError = freezed,Object? isMarkingRead = null,Object? markReadError = freezed,Object? message = freezed,Object? isWatching = null,Object? watchError = freezed,Object? isUploadingMedia = null,Object? uploadError = freezed,Object? uploadSuccessMessage = freezed,Object? conversations = null,Object? isLoadingConversations = null,Object? conversationsError = freezed,Object? selectedFilter = null,Object? searchQuery = null,Object? messageReads = null,Object? isLoadingReads = null,Object? readsError = freezed,Object? isWatchingReads = null,Object? typingUsers = null,Object? isWatchingTyping = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageEntity>,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as MessageCursorEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,sendError: freezed == sendError ? _self.sendError : sendError // ignore: cast_nullable_to_non_nullable
as String?,sentMessage: freezed == sentMessage ? _self.sentMessage : sentMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageEntity?,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,editError: freezed == editError ? _self.editError : editError // ignore: cast_nullable_to_non_nullable
as String?,editedMessage: freezed == editedMessage ? _self.editedMessage : editedMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageEntity?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,isMarkingRead: null == isMarkingRead ? _self.isMarkingRead : isMarkingRead // ignore: cast_nullable_to_non_nullable
as bool,markReadError: freezed == markReadError ? _self.markReadError : markReadError // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isWatching: null == isWatching ? _self.isWatching : isWatching // ignore: cast_nullable_to_non_nullable
as bool,watchError: freezed == watchError ? _self.watchError : watchError // ignore: cast_nullable_to_non_nullable
as String?,isUploadingMedia: null == isUploadingMedia ? _self.isUploadingMedia : isUploadingMedia // ignore: cast_nullable_to_non_nullable
as bool,uploadError: freezed == uploadError ? _self.uploadError : uploadError // ignore: cast_nullable_to_non_nullable
as String?,uploadSuccessMessage: freezed == uploadSuccessMessage ? _self.uploadSuccessMessage : uploadSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,conversations: null == conversations ? _self.conversations : conversations // ignore: cast_nullable_to_non_nullable
as List<ConversationListEntity>,isLoadingConversations: null == isLoadingConversations ? _self.isLoadingConversations : isLoadingConversations // ignore: cast_nullable_to_non_nullable
as bool,conversationsError: freezed == conversationsError ? _self.conversationsError : conversationsError // ignore: cast_nullable_to_non_nullable
as String?,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as String,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,messageReads: null == messageReads ? _self.messageReads : messageReads // ignore: cast_nullable_to_non_nullable
as Map<String, List<MessageReadEntity>>,isLoadingReads: null == isLoadingReads ? _self.isLoadingReads : isLoadingReads // ignore: cast_nullable_to_non_nullable
as bool,readsError: freezed == readsError ? _self.readsError : readsError // ignore: cast_nullable_to_non_nullable
as String?,isWatchingReads: null == isWatchingReads ? _self.isWatchingReads : isWatchingReads // ignore: cast_nullable_to_non_nullable
as bool,typingUsers: null == typingUsers ? _self.typingUsers : typingUsers // ignore: cast_nullable_to_non_nullable
as Map<String, DateTime>,isWatchingTyping: null == isWatchingTyping ? _self.isWatchingTyping : isWatchingTyping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorEntityCopyWith<$Res>? get cursor {
    if (_self.cursor == null) {
    return null;
  }

  return $MessageCursorEntityCopyWith<$Res>(_self.cursor!, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<$Res>? get sentMessage {
    if (_self.sentMessage == null) {
    return null;
  }

  return $ChatMessageEntityCopyWith<$Res>(_self.sentMessage!, (value) {
    return _then(_self.copyWith(sentMessage: value));
  });
}/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<$Res>? get editedMessage {
    if (_self.editedMessage == null) {
    return null;
  }

  return $ChatMessageEntityCopyWith<$Res>(_self.editedMessage!, (value) {
    return _then(_self.copyWith(editedMessage: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessageState].
extension ChatMessageStatePatterns on ChatMessageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageState value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessageEntity> messages,  String? conversationId,  int unreadCount,  bool hasMore,  MessageCursorEntity? cursor,  bool isLoading,  bool isLoadingMore,  String? errorMessage,  bool isSending,  String? sendError,  ChatMessageEntity? sentMessage,  bool isEditing,  String? editError,  ChatMessageEntity? editedMessage,  bool isDeleting,  String? deleteError,  bool isMarkingRead,  String? markReadError,  String? message,  bool isWatching,  String? watchError,  bool isUploadingMedia,  String? uploadError,  String? uploadSuccessMessage,  List<ConversationListEntity> conversations,  bool isLoadingConversations,  String? conversationsError,  String selectedFilter,  String searchQuery,  Map<String, List<MessageReadEntity>> messageReads,  bool isLoadingReads,  String? readsError,  bool isWatchingReads,  Map<String, DateTime> typingUsers,  bool isWatchingTyping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageState() when $default != null:
return $default(_that.messages,_that.conversationId,_that.unreadCount,_that.hasMore,_that.cursor,_that.isLoading,_that.isLoadingMore,_that.errorMessage,_that.isSending,_that.sendError,_that.sentMessage,_that.isEditing,_that.editError,_that.editedMessage,_that.isDeleting,_that.deleteError,_that.isMarkingRead,_that.markReadError,_that.message,_that.isWatching,_that.watchError,_that.isUploadingMedia,_that.uploadError,_that.uploadSuccessMessage,_that.conversations,_that.isLoadingConversations,_that.conversationsError,_that.selectedFilter,_that.searchQuery,_that.messageReads,_that.isLoadingReads,_that.readsError,_that.isWatchingReads,_that.typingUsers,_that.isWatchingTyping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessageEntity> messages,  String? conversationId,  int unreadCount,  bool hasMore,  MessageCursorEntity? cursor,  bool isLoading,  bool isLoadingMore,  String? errorMessage,  bool isSending,  String? sendError,  ChatMessageEntity? sentMessage,  bool isEditing,  String? editError,  ChatMessageEntity? editedMessage,  bool isDeleting,  String? deleteError,  bool isMarkingRead,  String? markReadError,  String? message,  bool isWatching,  String? watchError,  bool isUploadingMedia,  String? uploadError,  String? uploadSuccessMessage,  List<ConversationListEntity> conversations,  bool isLoadingConversations,  String? conversationsError,  String selectedFilter,  String searchQuery,  Map<String, List<MessageReadEntity>> messageReads,  bool isLoadingReads,  String? readsError,  bool isWatchingReads,  Map<String, DateTime> typingUsers,  bool isWatchingTyping)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageState():
return $default(_that.messages,_that.conversationId,_that.unreadCount,_that.hasMore,_that.cursor,_that.isLoading,_that.isLoadingMore,_that.errorMessage,_that.isSending,_that.sendError,_that.sentMessage,_that.isEditing,_that.editError,_that.editedMessage,_that.isDeleting,_that.deleteError,_that.isMarkingRead,_that.markReadError,_that.message,_that.isWatching,_that.watchError,_that.isUploadingMedia,_that.uploadError,_that.uploadSuccessMessage,_that.conversations,_that.isLoadingConversations,_that.conversationsError,_that.selectedFilter,_that.searchQuery,_that.messageReads,_that.isLoadingReads,_that.readsError,_that.isWatchingReads,_that.typingUsers,_that.isWatchingTyping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessageEntity> messages,  String? conversationId,  int unreadCount,  bool hasMore,  MessageCursorEntity? cursor,  bool isLoading,  bool isLoadingMore,  String? errorMessage,  bool isSending,  String? sendError,  ChatMessageEntity? sentMessage,  bool isEditing,  String? editError,  ChatMessageEntity? editedMessage,  bool isDeleting,  String? deleteError,  bool isMarkingRead,  String? markReadError,  String? message,  bool isWatching,  String? watchError,  bool isUploadingMedia,  String? uploadError,  String? uploadSuccessMessage,  List<ConversationListEntity> conversations,  bool isLoadingConversations,  String? conversationsError,  String selectedFilter,  String searchQuery,  Map<String, List<MessageReadEntity>> messageReads,  bool isLoadingReads,  String? readsError,  bool isWatchingReads,  Map<String, DateTime> typingUsers,  bool isWatchingTyping)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageState() when $default != null:
return $default(_that.messages,_that.conversationId,_that.unreadCount,_that.hasMore,_that.cursor,_that.isLoading,_that.isLoadingMore,_that.errorMessage,_that.isSending,_that.sendError,_that.sentMessage,_that.isEditing,_that.editError,_that.editedMessage,_that.isDeleting,_that.deleteError,_that.isMarkingRead,_that.markReadError,_that.message,_that.isWatching,_that.watchError,_that.isUploadingMedia,_that.uploadError,_that.uploadSuccessMessage,_that.conversations,_that.isLoadingConversations,_that.conversationsError,_that.selectedFilter,_that.searchQuery,_that.messageReads,_that.isLoadingReads,_that.readsError,_that.isWatchingReads,_that.typingUsers,_that.isWatchingTyping);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessageState implements ChatMessageState {
  const _ChatMessageState({final  List<ChatMessageEntity> messages = const <ChatMessageEntity>[], this.conversationId, this.unreadCount = 0, this.hasMore = false, this.cursor, this.isLoading = false, this.isLoadingMore = false, this.errorMessage, this.isSending = false, this.sendError, this.sentMessage, this.isEditing = false, this.editError, this.editedMessage, this.isDeleting = false, this.deleteError, this.isMarkingRead = false, this.markReadError, this.message, this.isWatching = false, this.watchError, this.isUploadingMedia = false, this.uploadError, this.uploadSuccessMessage, final  List<ConversationListEntity> conversations = const <ConversationListEntity>[], this.isLoadingConversations = false, this.conversationsError, this.selectedFilter = 'all', this.searchQuery = '', final  Map<String, List<MessageReadEntity>> messageReads = const <String, List<MessageReadEntity>>{}, this.isLoadingReads = false, this.readsError, this.isWatchingReads = false, final  Map<String, DateTime> typingUsers = const <String, DateTime>{}, this.isWatchingTyping = false}): _messages = messages,_conversations = conversations,_messageReads = messageReads,_typingUsers = typingUsers;
  

// Messages
 final  List<ChatMessageEntity> _messages;
// Messages
@override@JsonKey() List<ChatMessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  String? conversationId;
@override@JsonKey() final  int unreadCount;
@override@JsonKey() final  bool hasMore;
@override final  MessageCursorEntity? cursor;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? errorMessage;
@override@JsonKey() final  bool isSending;
@override final  String? sendError;
@override final  ChatMessageEntity? sentMessage;
@override@JsonKey() final  bool isEditing;
@override final  String? editError;
@override final  ChatMessageEntity? editedMessage;
@override@JsonKey() final  bool isDeleting;
@override final  String? deleteError;
@override@JsonKey() final  bool isMarkingRead;
@override final  String? markReadError;
@override final  String? message;
@override@JsonKey() final  bool isWatching;
@override final  String? watchError;
// Upload Media
@override@JsonKey() final  bool isUploadingMedia;
@override final  String? uploadError;
@override final  String? uploadSuccessMessage;
// Conversation List
 final  List<ConversationListEntity> _conversations;
// Conversation List
@override@JsonKey() List<ConversationListEntity> get conversations {
  if (_conversations is EqualUnmodifiableListView) return _conversations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conversations);
}

@override@JsonKey() final  bool isLoadingConversations;
@override final  String? conversationsError;
@override@JsonKey() final  String selectedFilter;
@override@JsonKey() final  String searchQuery;
// Message Reads (Read Receipts)
 final  Map<String, List<MessageReadEntity>> _messageReads;
// Message Reads (Read Receipts)
@override@JsonKey() Map<String, List<MessageReadEntity>> get messageReads {
  if (_messageReads is EqualUnmodifiableMapView) return _messageReads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_messageReads);
}

@override@JsonKey() final  bool isLoadingReads;
@override final  String? readsError;
@override@JsonKey() final  bool isWatchingReads;
// Typing Indicators
 final  Map<String, DateTime> _typingUsers;
// Typing Indicators
@override@JsonKey() Map<String, DateTime> get typingUsers {
  if (_typingUsers is EqualUnmodifiableMapView) return _typingUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_typingUsers);
}

@override@JsonKey() final  bool isWatchingTyping;

/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageStateCopyWith<_ChatMessageState> get copyWith => __$ChatMessageStateCopyWithImpl<_ChatMessageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageState&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.sendError, sendError) || other.sendError == sendError)&&(identical(other.sentMessage, sentMessage) || other.sentMessage == sentMessage)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.editError, editError) || other.editError == editError)&&(identical(other.editedMessage, editedMessage) || other.editedMessage == editedMessage)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError)&&(identical(other.isMarkingRead, isMarkingRead) || other.isMarkingRead == isMarkingRead)&&(identical(other.markReadError, markReadError) || other.markReadError == markReadError)&&(identical(other.message, message) || other.message == message)&&(identical(other.isWatching, isWatching) || other.isWatching == isWatching)&&(identical(other.watchError, watchError) || other.watchError == watchError)&&(identical(other.isUploadingMedia, isUploadingMedia) || other.isUploadingMedia == isUploadingMedia)&&(identical(other.uploadError, uploadError) || other.uploadError == uploadError)&&(identical(other.uploadSuccessMessage, uploadSuccessMessage) || other.uploadSuccessMessage == uploadSuccessMessage)&&const DeepCollectionEquality().equals(other._conversations, _conversations)&&(identical(other.isLoadingConversations, isLoadingConversations) || other.isLoadingConversations == isLoadingConversations)&&(identical(other.conversationsError, conversationsError) || other.conversationsError == conversationsError)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._messageReads, _messageReads)&&(identical(other.isLoadingReads, isLoadingReads) || other.isLoadingReads == isLoadingReads)&&(identical(other.readsError, readsError) || other.readsError == readsError)&&(identical(other.isWatchingReads, isWatchingReads) || other.isWatchingReads == isWatchingReads)&&const DeepCollectionEquality().equals(other._typingUsers, _typingUsers)&&(identical(other.isWatchingTyping, isWatchingTyping) || other.isWatchingTyping == isWatchingTyping));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_messages),conversationId,unreadCount,hasMore,cursor,isLoading,isLoadingMore,errorMessage,isSending,sendError,sentMessage,isEditing,editError,editedMessage,isDeleting,deleteError,isMarkingRead,markReadError,message,isWatching,watchError,isUploadingMedia,uploadError,uploadSuccessMessage,const DeepCollectionEquality().hash(_conversations),isLoadingConversations,conversationsError,selectedFilter,searchQuery,const DeepCollectionEquality().hash(_messageReads),isLoadingReads,readsError,isWatchingReads,const DeepCollectionEquality().hash(_typingUsers),isWatchingTyping]);

@override
String toString() {
  return 'ChatMessageState(messages: $messages, conversationId: $conversationId, unreadCount: $unreadCount, hasMore: $hasMore, cursor: $cursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, isSending: $isSending, sendError: $sendError, sentMessage: $sentMessage, isEditing: $isEditing, editError: $editError, editedMessage: $editedMessage, isDeleting: $isDeleting, deleteError: $deleteError, isMarkingRead: $isMarkingRead, markReadError: $markReadError, message: $message, isWatching: $isWatching, watchError: $watchError, isUploadingMedia: $isUploadingMedia, uploadError: $uploadError, uploadSuccessMessage: $uploadSuccessMessage, conversations: $conversations, isLoadingConversations: $isLoadingConversations, conversationsError: $conversationsError, selectedFilter: $selectedFilter, searchQuery: $searchQuery, messageReads: $messageReads, isLoadingReads: $isLoadingReads, readsError: $readsError, isWatchingReads: $isWatchingReads, typingUsers: $typingUsers, isWatchingTyping: $isWatchingTyping)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageStateCopyWith<$Res> implements $ChatMessageStateCopyWith<$Res> {
  factory _$ChatMessageStateCopyWith(_ChatMessageState value, $Res Function(_ChatMessageState) _then) = __$ChatMessageStateCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessageEntity> messages, String? conversationId, int unreadCount, bool hasMore, MessageCursorEntity? cursor, bool isLoading, bool isLoadingMore, String? errorMessage, bool isSending, String? sendError, ChatMessageEntity? sentMessage, bool isEditing, String? editError, ChatMessageEntity? editedMessage, bool isDeleting, String? deleteError, bool isMarkingRead, String? markReadError, String? message, bool isWatching, String? watchError, bool isUploadingMedia, String? uploadError, String? uploadSuccessMessage, List<ConversationListEntity> conversations, bool isLoadingConversations, String? conversationsError, String selectedFilter, String searchQuery, Map<String, List<MessageReadEntity>> messageReads, bool isLoadingReads, String? readsError, bool isWatchingReads, Map<String, DateTime> typingUsers, bool isWatchingTyping
});


@override $MessageCursorEntityCopyWith<$Res>? get cursor;@override $ChatMessageEntityCopyWith<$Res>? get sentMessage;@override $ChatMessageEntityCopyWith<$Res>? get editedMessage;

}
/// @nodoc
class __$ChatMessageStateCopyWithImpl<$Res>
    implements _$ChatMessageStateCopyWith<$Res> {
  __$ChatMessageStateCopyWithImpl(this._self, this._then);

  final _ChatMessageState _self;
  final $Res Function(_ChatMessageState) _then;

/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? conversationId = freezed,Object? unreadCount = null,Object? hasMore = null,Object? cursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? errorMessage = freezed,Object? isSending = null,Object? sendError = freezed,Object? sentMessage = freezed,Object? isEditing = null,Object? editError = freezed,Object? editedMessage = freezed,Object? isDeleting = null,Object? deleteError = freezed,Object? isMarkingRead = null,Object? markReadError = freezed,Object? message = freezed,Object? isWatching = null,Object? watchError = freezed,Object? isUploadingMedia = null,Object? uploadError = freezed,Object? uploadSuccessMessage = freezed,Object? conversations = null,Object? isLoadingConversations = null,Object? conversationsError = freezed,Object? selectedFilter = null,Object? searchQuery = null,Object? messageReads = null,Object? isLoadingReads = null,Object? readsError = freezed,Object? isWatchingReads = null,Object? typingUsers = null,Object? isWatchingTyping = null,}) {
  return _then(_ChatMessageState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageEntity>,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as MessageCursorEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,sendError: freezed == sendError ? _self.sendError : sendError // ignore: cast_nullable_to_non_nullable
as String?,sentMessage: freezed == sentMessage ? _self.sentMessage : sentMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageEntity?,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,editError: freezed == editError ? _self.editError : editError // ignore: cast_nullable_to_non_nullable
as String?,editedMessage: freezed == editedMessage ? _self.editedMessage : editedMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageEntity?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,isMarkingRead: null == isMarkingRead ? _self.isMarkingRead : isMarkingRead // ignore: cast_nullable_to_non_nullable
as bool,markReadError: freezed == markReadError ? _self.markReadError : markReadError // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isWatching: null == isWatching ? _self.isWatching : isWatching // ignore: cast_nullable_to_non_nullable
as bool,watchError: freezed == watchError ? _self.watchError : watchError // ignore: cast_nullable_to_non_nullable
as String?,isUploadingMedia: null == isUploadingMedia ? _self.isUploadingMedia : isUploadingMedia // ignore: cast_nullable_to_non_nullable
as bool,uploadError: freezed == uploadError ? _self.uploadError : uploadError // ignore: cast_nullable_to_non_nullable
as String?,uploadSuccessMessage: freezed == uploadSuccessMessage ? _self.uploadSuccessMessage : uploadSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,conversations: null == conversations ? _self._conversations : conversations // ignore: cast_nullable_to_non_nullable
as List<ConversationListEntity>,isLoadingConversations: null == isLoadingConversations ? _self.isLoadingConversations : isLoadingConversations // ignore: cast_nullable_to_non_nullable
as bool,conversationsError: freezed == conversationsError ? _self.conversationsError : conversationsError // ignore: cast_nullable_to_non_nullable
as String?,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as String,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,messageReads: null == messageReads ? _self._messageReads : messageReads // ignore: cast_nullable_to_non_nullable
as Map<String, List<MessageReadEntity>>,isLoadingReads: null == isLoadingReads ? _self.isLoadingReads : isLoadingReads // ignore: cast_nullable_to_non_nullable
as bool,readsError: freezed == readsError ? _self.readsError : readsError // ignore: cast_nullable_to_non_nullable
as String?,isWatchingReads: null == isWatchingReads ? _self.isWatchingReads : isWatchingReads // ignore: cast_nullable_to_non_nullable
as bool,typingUsers: null == typingUsers ? _self._typingUsers : typingUsers // ignore: cast_nullable_to_non_nullable
as Map<String, DateTime>,isWatchingTyping: null == isWatchingTyping ? _self.isWatchingTyping : isWatchingTyping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorEntityCopyWith<$Res>? get cursor {
    if (_self.cursor == null) {
    return null;
  }

  return $MessageCursorEntityCopyWith<$Res>(_self.cursor!, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<$Res>? get sentMessage {
    if (_self.sentMessage == null) {
    return null;
  }

  return $ChatMessageEntityCopyWith<$Res>(_self.sentMessage!, (value) {
    return _then(_self.copyWith(sentMessage: value));
  });
}/// Create a copy of ChatMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<$Res>? get editedMessage {
    if (_self.editedMessage == null) {
    return null;
  }

  return $ChatMessageEntityCopyWith<$Res>(_self.editedMessage!, (value) {
    return _then(_self.copyWith(editedMessage: value));
  });
}
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessageState {
// Messages
  List<ChatMessageEntity> get messages => throw _privateConstructorUsedError;
  String? get conversationId => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  MessageCursorEntity? get cursor => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  String? get sendError => throw _privateConstructorUsedError;
  ChatMessageEntity? get sentMessage => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  String? get editError => throw _privateConstructorUsedError;
  ChatMessageEntity? get editedMessage => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;
  String? get deleteError => throw _privateConstructorUsedError;
  bool get isMarkingRead => throw _privateConstructorUsedError;
  String? get markReadError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isWatching => throw _privateConstructorUsedError;
  String? get watchError => throw _privateConstructorUsedError; // Upload Media
  bool get isUploadingMedia => throw _privateConstructorUsedError;
  String? get uploadError => throw _privateConstructorUsedError;
  String? get uploadSuccessMessage =>
      throw _privateConstructorUsedError; // Conversation List
  List<ConversationListEntity> get conversations =>
      throw _privateConstructorUsedError;
  bool get isLoadingConversations => throw _privateConstructorUsedError;
  String? get conversationsError => throw _privateConstructorUsedError;
  String get selectedFilter => throw _privateConstructorUsedError;
  String get searchQuery =>
      throw _privateConstructorUsedError; // Message Reads (Read Receipts)
  Map<String, List<MessageReadEntity>> get messageReads =>
      throw _privateConstructorUsedError;
  bool get isLoadingReads => throw _privateConstructorUsedError;
  String? get readsError => throw _privateConstructorUsedError;
  bool get isWatchingReads =>
      throw _privateConstructorUsedError; // Typing Indicators
  Map<String, DateTime> get typingUsers => throw _privateConstructorUsedError;
  bool get isWatchingTyping => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageStateCopyWith<ChatMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageStateCopyWith<$Res> {
  factory $ChatMessageStateCopyWith(
          ChatMessageState value, $Res Function(ChatMessageState) then) =
      _$ChatMessageStateCopyWithImpl<$Res, ChatMessageState>;
  @useResult
  $Res call(
      {List<ChatMessageEntity> messages,
      String? conversationId,
      int unreadCount,
      bool hasMore,
      MessageCursorEntity? cursor,
      bool isLoading,
      bool isLoadingMore,
      String? errorMessage,
      bool isSending,
      String? sendError,
      ChatMessageEntity? sentMessage,
      bool isEditing,
      String? editError,
      ChatMessageEntity? editedMessage,
      bool isDeleting,
      String? deleteError,
      bool isMarkingRead,
      String? markReadError,
      String? message,
      bool isWatching,
      String? watchError,
      bool isUploadingMedia,
      String? uploadError,
      String? uploadSuccessMessage,
      List<ConversationListEntity> conversations,
      bool isLoadingConversations,
      String? conversationsError,
      String selectedFilter,
      String searchQuery,
      Map<String, List<MessageReadEntity>> messageReads,
      bool isLoadingReads,
      String? readsError,
      bool isWatchingReads,
      Map<String, DateTime> typingUsers,
      bool isWatchingTyping});

  $MessageCursorEntityCopyWith<$Res>? get cursor;
  $ChatMessageEntityCopyWith<$Res>? get sentMessage;
  $ChatMessageEntityCopyWith<$Res>? get editedMessage;
}

/// @nodoc
class _$ChatMessageStateCopyWithImpl<$Res, $Val extends ChatMessageState>
    implements $ChatMessageStateCopyWith<$Res> {
  _$ChatMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? conversationId = freezed,
    Object? unreadCount = null,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? errorMessage = freezed,
    Object? isSending = null,
    Object? sendError = freezed,
    Object? sentMessage = freezed,
    Object? isEditing = null,
    Object? editError = freezed,
    Object? editedMessage = freezed,
    Object? isDeleting = null,
    Object? deleteError = freezed,
    Object? isMarkingRead = null,
    Object? markReadError = freezed,
    Object? message = freezed,
    Object? isWatching = null,
    Object? watchError = freezed,
    Object? isUploadingMedia = null,
    Object? uploadError = freezed,
    Object? uploadSuccessMessage = freezed,
    Object? conversations = null,
    Object? isLoadingConversations = null,
    Object? conversationsError = freezed,
    Object? selectedFilter = null,
    Object? searchQuery = null,
    Object? messageReads = null,
    Object? isLoadingReads = null,
    Object? readsError = freezed,
    Object? isWatchingReads = null,
    Object? typingUsers = null,
    Object? isWatchingTyping = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as MessageCursorEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      sendError: freezed == sendError
          ? _value.sendError
          : sendError // ignore: cast_nullable_to_non_nullable
              as String?,
      sentMessage: freezed == sentMessage
          ? _value.sentMessage
          : sentMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity?,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      editError: freezed == editError
          ? _value.editError
          : editError // ignore: cast_nullable_to_non_nullable
              as String?,
      editedMessage: freezed == editedMessage
          ? _value.editedMessage
          : editedMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity?,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteError: freezed == deleteError
          ? _value.deleteError
          : deleteError // ignore: cast_nullable_to_non_nullable
              as String?,
      isMarkingRead: null == isMarkingRead
          ? _value.isMarkingRead
          : isMarkingRead // ignore: cast_nullable_to_non_nullable
              as bool,
      markReadError: freezed == markReadError
          ? _value.markReadError
          : markReadError // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isWatching: null == isWatching
          ? _value.isWatching
          : isWatching // ignore: cast_nullable_to_non_nullable
              as bool,
      watchError: freezed == watchError
          ? _value.watchError
          : watchError // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploadingMedia: null == isUploadingMedia
          ? _value.isUploadingMedia
          : isUploadingMedia // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadError: freezed == uploadError
          ? _value.uploadError
          : uploadError // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadSuccessMessage: freezed == uploadSuccessMessage
          ? _value.uploadSuccessMessage
          : uploadSuccessMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ConversationListEntity>,
      isLoadingConversations: null == isLoadingConversations
          ? _value.isLoadingConversations
          : isLoadingConversations // ignore: cast_nullable_to_non_nullable
              as bool,
      conversationsError: freezed == conversationsError
          ? _value.conversationsError
          : conversationsError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      messageReads: null == messageReads
          ? _value.messageReads
          : messageReads // ignore: cast_nullable_to_non_nullable
              as Map<String, List<MessageReadEntity>>,
      isLoadingReads: null == isLoadingReads
          ? _value.isLoadingReads
          : isLoadingReads // ignore: cast_nullable_to_non_nullable
              as bool,
      readsError: freezed == readsError
          ? _value.readsError
          : readsError // ignore: cast_nullable_to_non_nullable
              as String?,
      isWatchingReads: null == isWatchingReads
          ? _value.isWatchingReads
          : isWatchingReads // ignore: cast_nullable_to_non_nullable
              as bool,
      typingUsers: null == typingUsers
          ? _value.typingUsers
          : typingUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      isWatchingTyping: null == isWatchingTyping
          ? _value.isWatchingTyping
          : isWatchingTyping // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCursorEntityCopyWith<$Res>? get cursor {
    if (_value.cursor == null) {
      return null;
    }

    return $MessageCursorEntityCopyWith<$Res>(_value.cursor!, (value) {
      return _then(_value.copyWith(cursor: value) as $Val);
    });
  }

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res>? get sentMessage {
    if (_value.sentMessage == null) {
      return null;
    }

    return $ChatMessageEntityCopyWith<$Res>(_value.sentMessage!, (value) {
      return _then(_value.copyWith(sentMessage: value) as $Val);
    });
  }

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res>? get editedMessage {
    if (_value.editedMessage == null) {
      return null;
    }

    return $ChatMessageEntityCopyWith<$Res>(_value.editedMessage!, (value) {
      return _then(_value.copyWith(editedMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageStateImplCopyWith<$Res>
    implements $ChatMessageStateCopyWith<$Res> {
  factory _$$ChatMessageStateImplCopyWith(_$ChatMessageStateImpl value,
          $Res Function(_$ChatMessageStateImpl) then) =
      __$$ChatMessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChatMessageEntity> messages,
      String? conversationId,
      int unreadCount,
      bool hasMore,
      MessageCursorEntity? cursor,
      bool isLoading,
      bool isLoadingMore,
      String? errorMessage,
      bool isSending,
      String? sendError,
      ChatMessageEntity? sentMessage,
      bool isEditing,
      String? editError,
      ChatMessageEntity? editedMessage,
      bool isDeleting,
      String? deleteError,
      bool isMarkingRead,
      String? markReadError,
      String? message,
      bool isWatching,
      String? watchError,
      bool isUploadingMedia,
      String? uploadError,
      String? uploadSuccessMessage,
      List<ConversationListEntity> conversations,
      bool isLoadingConversations,
      String? conversationsError,
      String selectedFilter,
      String searchQuery,
      Map<String, List<MessageReadEntity>> messageReads,
      bool isLoadingReads,
      String? readsError,
      bool isWatchingReads,
      Map<String, DateTime> typingUsers,
      bool isWatchingTyping});

  @override
  $MessageCursorEntityCopyWith<$Res>? get cursor;
  @override
  $ChatMessageEntityCopyWith<$Res>? get sentMessage;
  @override
  $ChatMessageEntityCopyWith<$Res>? get editedMessage;
}

/// @nodoc
class __$$ChatMessageStateImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$ChatMessageStateImpl>
    implements _$$ChatMessageStateImplCopyWith<$Res> {
  __$$ChatMessageStateImplCopyWithImpl(_$ChatMessageStateImpl _value,
      $Res Function(_$ChatMessageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? conversationId = freezed,
    Object? unreadCount = null,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? errorMessage = freezed,
    Object? isSending = null,
    Object? sendError = freezed,
    Object? sentMessage = freezed,
    Object? isEditing = null,
    Object? editError = freezed,
    Object? editedMessage = freezed,
    Object? isDeleting = null,
    Object? deleteError = freezed,
    Object? isMarkingRead = null,
    Object? markReadError = freezed,
    Object? message = freezed,
    Object? isWatching = null,
    Object? watchError = freezed,
    Object? isUploadingMedia = null,
    Object? uploadError = freezed,
    Object? uploadSuccessMessage = freezed,
    Object? conversations = null,
    Object? isLoadingConversations = null,
    Object? conversationsError = freezed,
    Object? selectedFilter = null,
    Object? searchQuery = null,
    Object? messageReads = null,
    Object? isLoadingReads = null,
    Object? readsError = freezed,
    Object? isWatchingReads = null,
    Object? typingUsers = null,
    Object? isWatchingTyping = null,
  }) {
    return _then(_$ChatMessageStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as MessageCursorEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      sendError: freezed == sendError
          ? _value.sendError
          : sendError // ignore: cast_nullable_to_non_nullable
              as String?,
      sentMessage: freezed == sentMessage
          ? _value.sentMessage
          : sentMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity?,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      editError: freezed == editError
          ? _value.editError
          : editError // ignore: cast_nullable_to_non_nullable
              as String?,
      editedMessage: freezed == editedMessage
          ? _value.editedMessage
          : editedMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity?,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteError: freezed == deleteError
          ? _value.deleteError
          : deleteError // ignore: cast_nullable_to_non_nullable
              as String?,
      isMarkingRead: null == isMarkingRead
          ? _value.isMarkingRead
          : isMarkingRead // ignore: cast_nullable_to_non_nullable
              as bool,
      markReadError: freezed == markReadError
          ? _value.markReadError
          : markReadError // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isWatching: null == isWatching
          ? _value.isWatching
          : isWatching // ignore: cast_nullable_to_non_nullable
              as bool,
      watchError: freezed == watchError
          ? _value.watchError
          : watchError // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploadingMedia: null == isUploadingMedia
          ? _value.isUploadingMedia
          : isUploadingMedia // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadError: freezed == uploadError
          ? _value.uploadError
          : uploadError // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadSuccessMessage: freezed == uploadSuccessMessage
          ? _value.uploadSuccessMessage
          : uploadSuccessMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      conversations: null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ConversationListEntity>,
      isLoadingConversations: null == isLoadingConversations
          ? _value.isLoadingConversations
          : isLoadingConversations // ignore: cast_nullable_to_non_nullable
              as bool,
      conversationsError: freezed == conversationsError
          ? _value.conversationsError
          : conversationsError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      messageReads: null == messageReads
          ? _value._messageReads
          : messageReads // ignore: cast_nullable_to_non_nullable
              as Map<String, List<MessageReadEntity>>,
      isLoadingReads: null == isLoadingReads
          ? _value.isLoadingReads
          : isLoadingReads // ignore: cast_nullable_to_non_nullable
              as bool,
      readsError: freezed == readsError
          ? _value.readsError
          : readsError // ignore: cast_nullable_to_non_nullable
              as String?,
      isWatchingReads: null == isWatchingReads
          ? _value.isWatchingReads
          : isWatchingReads // ignore: cast_nullable_to_non_nullable
              as bool,
      typingUsers: null == typingUsers
          ? _value._typingUsers
          : typingUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      isWatchingTyping: null == isWatchingTyping
          ? _value.isWatchingTyping
          : isWatchingTyping // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatMessageStateImpl implements _ChatMessageState {
  const _$ChatMessageStateImpl(
      {final List<ChatMessageEntity> messages = const <ChatMessageEntity>[],
      this.conversationId,
      this.unreadCount = 0,
      this.hasMore = false,
      this.cursor,
      this.isLoading = false,
      this.isLoadingMore = false,
      this.errorMessage,
      this.isSending = false,
      this.sendError,
      this.sentMessage,
      this.isEditing = false,
      this.editError,
      this.editedMessage,
      this.isDeleting = false,
      this.deleteError,
      this.isMarkingRead = false,
      this.markReadError,
      this.message,
      this.isWatching = false,
      this.watchError,
      this.isUploadingMedia = false,
      this.uploadError,
      this.uploadSuccessMessage,
      final List<ConversationListEntity> conversations =
          const <ConversationListEntity>[],
      this.isLoadingConversations = false,
      this.conversationsError,
      this.selectedFilter = 'all',
      this.searchQuery = '',
      final Map<String, List<MessageReadEntity>> messageReads =
          const <String, List<MessageReadEntity>>{},
      this.isLoadingReads = false,
      this.readsError,
      this.isWatchingReads = false,
      final Map<String, DateTime> typingUsers = const <String, DateTime>{},
      this.isWatchingTyping = false})
      : _messages = messages,
        _conversations = conversations,
        _messageReads = messageReads,
        _typingUsers = typingUsers;

// Messages
  final List<ChatMessageEntity> _messages;
// Messages
  @override
  @JsonKey()
  List<ChatMessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? conversationId;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  final MessageCursorEntity? cursor;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isSending;
  @override
  final String? sendError;
  @override
  final ChatMessageEntity? sentMessage;
  @override
  @JsonKey()
  final bool isEditing;
  @override
  final String? editError;
  @override
  final ChatMessageEntity? editedMessage;
  @override
  @JsonKey()
  final bool isDeleting;
  @override
  final String? deleteError;
  @override
  @JsonKey()
  final bool isMarkingRead;
  @override
  final String? markReadError;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool isWatching;
  @override
  final String? watchError;
// Upload Media
  @override
  @JsonKey()
  final bool isUploadingMedia;
  @override
  final String? uploadError;
  @override
  final String? uploadSuccessMessage;
// Conversation List
  final List<ConversationListEntity> _conversations;
// Conversation List
  @override
  @JsonKey()
  List<ConversationListEntity> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  @JsonKey()
  final bool isLoadingConversations;
  @override
  final String? conversationsError;
  @override
  @JsonKey()
  final String selectedFilter;
  @override
  @JsonKey()
  final String searchQuery;
// Message Reads (Read Receipts)
  final Map<String, List<MessageReadEntity>> _messageReads;
// Message Reads (Read Receipts)
  @override
  @JsonKey()
  Map<String, List<MessageReadEntity>> get messageReads {
    if (_messageReads is EqualUnmodifiableMapView) return _messageReads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_messageReads);
  }

  @override
  @JsonKey()
  final bool isLoadingReads;
  @override
  final String? readsError;
  @override
  @JsonKey()
  final bool isWatchingReads;
// Typing Indicators
  final Map<String, DateTime> _typingUsers;
// Typing Indicators
  @override
  @JsonKey()
  Map<String, DateTime> get typingUsers {
    if (_typingUsers is EqualUnmodifiableMapView) return _typingUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_typingUsers);
  }

  @override
  @JsonKey()
  final bool isWatchingTyping;

  @override
  String toString() {
    return 'ChatMessageState(messages: $messages, conversationId: $conversationId, unreadCount: $unreadCount, hasMore: $hasMore, cursor: $cursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, isSending: $isSending, sendError: $sendError, sentMessage: $sentMessage, isEditing: $isEditing, editError: $editError, editedMessage: $editedMessage, isDeleting: $isDeleting, deleteError: $deleteError, isMarkingRead: $isMarkingRead, markReadError: $markReadError, message: $message, isWatching: $isWatching, watchError: $watchError, isUploadingMedia: $isUploadingMedia, uploadError: $uploadError, uploadSuccessMessage: $uploadSuccessMessage, conversations: $conversations, isLoadingConversations: $isLoadingConversations, conversationsError: $conversationsError, selectedFilter: $selectedFilter, searchQuery: $searchQuery, messageReads: $messageReads, isLoadingReads: $isLoadingReads, readsError: $readsError, isWatchingReads: $isWatchingReads, typingUsers: $typingUsers, isWatchingTyping: $isWatchingTyping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.sendError, sendError) ||
                other.sendError == sendError) &&
            (identical(other.sentMessage, sentMessage) ||
                other.sentMessage == sentMessage) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.editError, editError) ||
                other.editError == editError) &&
            (identical(other.editedMessage, editedMessage) ||
                other.editedMessage == editedMessage) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(other.deleteError, deleteError) ||
                other.deleteError == deleteError) &&
            (identical(other.isMarkingRead, isMarkingRead) ||
                other.isMarkingRead == isMarkingRead) &&
            (identical(other.markReadError, markReadError) ||
                other.markReadError == markReadError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isWatching, isWatching) ||
                other.isWatching == isWatching) &&
            (identical(other.watchError, watchError) ||
                other.watchError == watchError) &&
            (identical(other.isUploadingMedia, isUploadingMedia) ||
                other.isUploadingMedia == isUploadingMedia) &&
            (identical(other.uploadError, uploadError) ||
                other.uploadError == uploadError) &&
            (identical(other.uploadSuccessMessage, uploadSuccessMessage) ||
                other.uploadSuccessMessage == uploadSuccessMessage) &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.isLoadingConversations, isLoadingConversations) ||
                other.isLoadingConversations == isLoadingConversations) &&
            (identical(other.conversationsError, conversationsError) ||
                other.conversationsError == conversationsError) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality()
                .equals(other._messageReads, _messageReads) &&
            (identical(other.isLoadingReads, isLoadingReads) ||
                other.isLoadingReads == isLoadingReads) &&
            (identical(other.readsError, readsError) ||
                other.readsError == readsError) &&
            (identical(other.isWatchingReads, isWatchingReads) ||
                other.isWatchingReads == isWatchingReads) &&
            const DeepCollectionEquality()
                .equals(other._typingUsers, _typingUsers) &&
            (identical(other.isWatchingTyping, isWatchingTyping) ||
                other.isWatchingTyping == isWatchingTyping));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_messages),
        conversationId,
        unreadCount,
        hasMore,
        cursor,
        isLoading,
        isLoadingMore,
        errorMessage,
        isSending,
        sendError,
        sentMessage,
        isEditing,
        editError,
        editedMessage,
        isDeleting,
        deleteError,
        isMarkingRead,
        markReadError,
        message,
        isWatching,
        watchError,
        isUploadingMedia,
        uploadError,
        uploadSuccessMessage,
        const DeepCollectionEquality().hash(_conversations),
        isLoadingConversations,
        conversationsError,
        selectedFilter,
        searchQuery,
        const DeepCollectionEquality().hash(_messageReads),
        isLoadingReads,
        readsError,
        isWatchingReads,
        const DeepCollectionEquality().hash(_typingUsers),
        isWatchingTyping
      ]);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageStateImplCopyWith<_$ChatMessageStateImpl> get copyWith =>
      __$$ChatMessageStateImplCopyWithImpl<_$ChatMessageStateImpl>(
          this, _$identity);
}

abstract class _ChatMessageState implements ChatMessageState {
  const factory _ChatMessageState(
      {final List<ChatMessageEntity> messages,
      final String? conversationId,
      final int unreadCount,
      final bool hasMore,
      final MessageCursorEntity? cursor,
      final bool isLoading,
      final bool isLoadingMore,
      final String? errorMessage,
      final bool isSending,
      final String? sendError,
      final ChatMessageEntity? sentMessage,
      final bool isEditing,
      final String? editError,
      final ChatMessageEntity? editedMessage,
      final bool isDeleting,
      final String? deleteError,
      final bool isMarkingRead,
      final String? markReadError,
      final String? message,
      final bool isWatching,
      final String? watchError,
      final bool isUploadingMedia,
      final String? uploadError,
      final String? uploadSuccessMessage,
      final List<ConversationListEntity> conversations,
      final bool isLoadingConversations,
      final String? conversationsError,
      final String selectedFilter,
      final String searchQuery,
      final Map<String, List<MessageReadEntity>> messageReads,
      final bool isLoadingReads,
      final String? readsError,
      final bool isWatchingReads,
      final Map<String, DateTime> typingUsers,
      final bool isWatchingTyping}) = _$ChatMessageStateImpl;

// Messages
  @override
  List<ChatMessageEntity> get messages;
  @override
  String? get conversationId;
  @override
  int get unreadCount;
  @override
  bool get hasMore;
  @override
  MessageCursorEntity? get cursor;
  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  String? get errorMessage;
  @override
  bool get isSending;
  @override
  String? get sendError;
  @override
  ChatMessageEntity? get sentMessage;
  @override
  bool get isEditing;
  @override
  String? get editError;
  @override
  ChatMessageEntity? get editedMessage;
  @override
  bool get isDeleting;
  @override
  String? get deleteError;
  @override
  bool get isMarkingRead;
  @override
  String? get markReadError;
  @override
  String? get message;
  @override
  bool get isWatching;
  @override
  String? get watchError; // Upload Media
  @override
  bool get isUploadingMedia;
  @override
  String? get uploadError;
  @override
  String? get uploadSuccessMessage; // Conversation List
  @override
  List<ConversationListEntity> get conversations;
  @override
  bool get isLoadingConversations;
  @override
  String? get conversationsError;
  @override
  String get selectedFilter;
  @override
  String get searchQuery; // Message Reads (Read Receipts)
  @override
  Map<String, List<MessageReadEntity>> get messageReads;
  @override
  bool get isLoadingReads;
  @override
  String? get readsError;
  @override
  bool get isWatchingReads; // Typing Indicators
  @override
  Map<String, DateTime> get typingUsers;
  @override
  bool get isWatchingTyping;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageStateImplCopyWith<_$ChatMessageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedCommentState {
  List<CommentEntity> get comments => throw _privateConstructorUsedError;
  String? get postId => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  CommentCursorEntity? get cursor => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  String? get addError => throw _privateConstructorUsedError;
  CommentEntity? get addedComment => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;
  String? get deleteError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isWatching => throw _privateConstructorUsedError;
  String? get watchError => throw _privateConstructorUsedError;

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedCommentStateCopyWith<FeedCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentStateCopyWith<$Res> {
  factory $FeedCommentStateCopyWith(
          FeedCommentState value, $Res Function(FeedCommentState) then) =
      _$FeedCommentStateCopyWithImpl<$Res, FeedCommentState>;
  @useResult
  $Res call(
      {List<CommentEntity> comments,
      String? postId,
      bool hasMore,
      CommentCursorEntity? cursor,
      bool isLoading,
      bool isLoadingMore,
      String? errorMessage,
      bool isAdding,
      String? addError,
      CommentEntity? addedComment,
      bool isDeleting,
      String? deleteError,
      String? message,
      bool isWatching,
      String? watchError});

  $CommentEntityCopyWith<$Res>? get addedComment;
}

/// @nodoc
class _$FeedCommentStateCopyWithImpl<$Res, $Val extends FeedCommentState>
    implements $FeedCommentStateCopyWith<$Res> {
  _$FeedCommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? postId = freezed,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? errorMessage = freezed,
    Object? isAdding = null,
    Object? addError = freezed,
    Object? addedComment = freezed,
    Object? isDeleting = null,
    Object? deleteError = freezed,
    Object? message = freezed,
    Object? isWatching = null,
    Object? watchError = freezed,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as CommentCursorEntity?,
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
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      addError: freezed == addError
          ? _value.addError
          : addError // ignore: cast_nullable_to_non_nullable
              as String?,
      addedComment: freezed == addedComment
          ? _value.addedComment
          : addedComment // ignore: cast_nullable_to_non_nullable
              as CommentEntity?,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteError: freezed == deleteError
          ? _value.deleteError
          : deleteError // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentEntityCopyWith<$Res>? get addedComment {
    if (_value.addedComment == null) {
      return null;
    }

    return $CommentEntityCopyWith<$Res>(_value.addedComment!, (value) {
      return _then(_value.copyWith(addedComment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedCommentStateImplCopyWith<$Res>
    implements $FeedCommentStateCopyWith<$Res> {
  factory _$$FeedCommentStateImplCopyWith(_$FeedCommentStateImpl value,
          $Res Function(_$FeedCommentStateImpl) then) =
      __$$FeedCommentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CommentEntity> comments,
      String? postId,
      bool hasMore,
      CommentCursorEntity? cursor,
      bool isLoading,
      bool isLoadingMore,
      String? errorMessage,
      bool isAdding,
      String? addError,
      CommentEntity? addedComment,
      bool isDeleting,
      String? deleteError,
      String? message,
      bool isWatching,
      String? watchError});

  @override
  $CommentEntityCopyWith<$Res>? get addedComment;
}

/// @nodoc
class __$$FeedCommentStateImplCopyWithImpl<$Res>
    extends _$FeedCommentStateCopyWithImpl<$Res, _$FeedCommentStateImpl>
    implements _$$FeedCommentStateImplCopyWith<$Res> {
  __$$FeedCommentStateImplCopyWithImpl(_$FeedCommentStateImpl _value,
      $Res Function(_$FeedCommentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? postId = freezed,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? errorMessage = freezed,
    Object? isAdding = null,
    Object? addError = freezed,
    Object? addedComment = freezed,
    Object? isDeleting = null,
    Object? deleteError = freezed,
    Object? message = freezed,
    Object? isWatching = null,
    Object? watchError = freezed,
  }) {
    return _then(_$FeedCommentStateImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as CommentCursorEntity?,
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
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      addError: freezed == addError
          ? _value.addError
          : addError // ignore: cast_nullable_to_non_nullable
              as String?,
      addedComment: freezed == addedComment
          ? _value.addedComment
          : addedComment // ignore: cast_nullable_to_non_nullable
              as CommentEntity?,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteError: freezed == deleteError
          ? _value.deleteError
          : deleteError // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$FeedCommentStateImpl implements _FeedCommentState {
  const _$FeedCommentStateImpl(
      {final List<CommentEntity> comments = const <CommentEntity>[],
      this.postId,
      this.hasMore = false,
      this.cursor,
      this.isLoading = false,
      this.isLoadingMore = false,
      this.errorMessage,
      this.isAdding = false,
      this.addError,
      this.addedComment,
      this.isDeleting = false,
      this.deleteError,
      this.message,
      this.isWatching = false,
      this.watchError})
      : _comments = comments;

  final List<CommentEntity> _comments;
  @override
  @JsonKey()
  List<CommentEntity> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final String? postId;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  final CommentCursorEntity? cursor;
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
  final bool isAdding;
  @override
  final String? addError;
  @override
  final CommentEntity? addedComment;
  @override
  @JsonKey()
  final bool isDeleting;
  @override
  final String? deleteError;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool isWatching;
  @override
  final String? watchError;

  @override
  String toString() {
    return 'FeedCommentState(comments: $comments, postId: $postId, hasMore: $hasMore, cursor: $cursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, isAdding: $isAdding, addError: $addError, addedComment: $addedComment, isDeleting: $isDeleting, deleteError: $deleteError, message: $message, isWatching: $isWatching, watchError: $watchError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentStateImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.addError, addError) ||
                other.addError == addError) &&
            (identical(other.addedComment, addedComment) ||
                other.addedComment == addedComment) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(other.deleteError, deleteError) ||
                other.deleteError == deleteError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isWatching, isWatching) ||
                other.isWatching == isWatching) &&
            (identical(other.watchError, watchError) ||
                other.watchError == watchError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      postId,
      hasMore,
      cursor,
      isLoading,
      isLoadingMore,
      errorMessage,
      isAdding,
      addError,
      addedComment,
      isDeleting,
      deleteError,
      message,
      isWatching,
      watchError);

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentStateImplCopyWith<_$FeedCommentStateImpl> get copyWith =>
      __$$FeedCommentStateImplCopyWithImpl<_$FeedCommentStateImpl>(
          this, _$identity);
}

abstract class _FeedCommentState implements FeedCommentState {
  const factory _FeedCommentState(
      {final List<CommentEntity> comments,
      final String? postId,
      final bool hasMore,
      final CommentCursorEntity? cursor,
      final bool isLoading,
      final bool isLoadingMore,
      final String? errorMessage,
      final bool isAdding,
      final String? addError,
      final CommentEntity? addedComment,
      final bool isDeleting,
      final String? deleteError,
      final String? message,
      final bool isWatching,
      final String? watchError}) = _$FeedCommentStateImpl;

  @override
  List<CommentEntity> get comments;
  @override
  String? get postId;
  @override
  bool get hasMore;
  @override
  CommentCursorEntity? get cursor;
  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  String? get errorMessage;
  @override
  bool get isAdding;
  @override
  String? get addError;
  @override
  CommentEntity? get addedComment;
  @override
  bool get isDeleting;
  @override
  String? get deleteError;
  @override
  String? get message;
  @override
  bool get isWatching;
  @override
  String? get watchError;

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedCommentStateImplCopyWith<_$FeedCommentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

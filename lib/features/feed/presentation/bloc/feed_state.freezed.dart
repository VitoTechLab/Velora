// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedState {
  List<FeedEntity> get posts => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  FeedCursorEntity? get cursor => throw _privateConstructorUsedError;
  bool get isLoadingInitial => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  String? get errorFeed => throw _privateConstructorUsedError;
  FeedEntity? get singlePost => throw _privateConstructorUsedError;
  bool get isLoadingSinglePost => throw _privateConstructorUsedError;
  String? get errorSinglePost => throw _privateConstructorUsedError;
  FeedEntity? get updatedPost => throw _privateConstructorUsedError;
  bool get isUpdatingPost => throw _privateConstructorUsedError;
  String? get errorUpdatePost => throw _privateConstructorUsedError;
  bool get isDeletingPost => throw _privateConstructorUsedError;
  String? get errorDeletePost => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
  @useResult
  $Res call(
      {List<FeedEntity> posts,
      bool hasMore,
      FeedCursorEntity? cursor,
      bool isLoadingInitial,
      bool isLoadingMore,
      bool isRefreshing,
      String? errorFeed,
      FeedEntity? singlePost,
      bool isLoadingSinglePost,
      String? errorSinglePost,
      FeedEntity? updatedPost,
      bool isUpdatingPost,
      String? errorUpdatePost,
      bool isDeletingPost,
      String? errorDeletePost,
      String? message});

  $FeedEntityCopyWith<$Res>? get singlePost;
  $FeedEntityCopyWith<$Res>? get updatedPost;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoadingInitial = null,
    Object? isLoadingMore = null,
    Object? isRefreshing = null,
    Object? errorFeed = freezed,
    Object? singlePost = freezed,
    Object? isLoadingSinglePost = null,
    Object? errorSinglePost = freezed,
    Object? updatedPost = freezed,
    Object? isUpdatingPost = null,
    Object? errorUpdatePost = freezed,
    Object? isDeletingPost = null,
    Object? errorDeletePost = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as FeedCursorEntity?,
      isLoadingInitial: null == isLoadingInitial
          ? _value.isLoadingInitial
          : isLoadingInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorFeed: freezed == errorFeed
          ? _value.errorFeed
          : errorFeed // ignore: cast_nullable_to_non_nullable
              as String?,
      singlePost: freezed == singlePost
          ? _value.singlePost
          : singlePost // ignore: cast_nullable_to_non_nullable
              as FeedEntity?,
      isLoadingSinglePost: null == isLoadingSinglePost
          ? _value.isLoadingSinglePost
          : isLoadingSinglePost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSinglePost: freezed == errorSinglePost
          ? _value.errorSinglePost
          : errorSinglePost // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedPost: freezed == updatedPost
          ? _value.updatedPost
          : updatedPost // ignore: cast_nullable_to_non_nullable
              as FeedEntity?,
      isUpdatingPost: null == isUpdatingPost
          ? _value.isUpdatingPost
          : isUpdatingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUpdatePost: freezed == errorUpdatePost
          ? _value.errorUpdatePost
          : errorUpdatePost // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeletingPost: null == isDeletingPost
          ? _value.isDeletingPost
          : isDeletingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDeletePost: freezed == errorDeletePost
          ? _value.errorDeletePost
          : errorDeletePost // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedEntityCopyWith<$Res>? get singlePost {
    if (_value.singlePost == null) {
      return null;
    }

    return $FeedEntityCopyWith<$Res>(_value.singlePost!, (value) {
      return _then(_value.copyWith(singlePost: value) as $Val);
    });
  }

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedEntityCopyWith<$Res>? get updatedPost {
    if (_value.updatedPost == null) {
      return null;
    }

    return $FeedEntityCopyWith<$Res>(_value.updatedPost!, (value) {
      return _then(_value.copyWith(updatedPost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedStateImplCopyWith<$Res>
    implements $FeedStateCopyWith<$Res> {
  factory _$$FeedStateImplCopyWith(
          _$FeedStateImpl value, $Res Function(_$FeedStateImpl) then) =
      __$$FeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FeedEntity> posts,
      bool hasMore,
      FeedCursorEntity? cursor,
      bool isLoadingInitial,
      bool isLoadingMore,
      bool isRefreshing,
      String? errorFeed,
      FeedEntity? singlePost,
      bool isLoadingSinglePost,
      String? errorSinglePost,
      FeedEntity? updatedPost,
      bool isUpdatingPost,
      String? errorUpdatePost,
      bool isDeletingPost,
      String? errorDeletePost,
      String? message});

  @override
  $FeedEntityCopyWith<$Res>? get singlePost;
  @override
  $FeedEntityCopyWith<$Res>? get updatedPost;
}

/// @nodoc
class __$$FeedStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateImpl>
    implements _$$FeedStateImplCopyWith<$Res> {
  __$$FeedStateImplCopyWithImpl(
      _$FeedStateImpl _value, $Res Function(_$FeedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoadingInitial = null,
    Object? isLoadingMore = null,
    Object? isRefreshing = null,
    Object? errorFeed = freezed,
    Object? singlePost = freezed,
    Object? isLoadingSinglePost = null,
    Object? errorSinglePost = freezed,
    Object? updatedPost = freezed,
    Object? isUpdatingPost = null,
    Object? errorUpdatePost = freezed,
    Object? isDeletingPost = null,
    Object? errorDeletePost = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FeedStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as FeedCursorEntity?,
      isLoadingInitial: null == isLoadingInitial
          ? _value.isLoadingInitial
          : isLoadingInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorFeed: freezed == errorFeed
          ? _value.errorFeed
          : errorFeed // ignore: cast_nullable_to_non_nullable
              as String?,
      singlePost: freezed == singlePost
          ? _value.singlePost
          : singlePost // ignore: cast_nullable_to_non_nullable
              as FeedEntity?,
      isLoadingSinglePost: null == isLoadingSinglePost
          ? _value.isLoadingSinglePost
          : isLoadingSinglePost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSinglePost: freezed == errorSinglePost
          ? _value.errorSinglePost
          : errorSinglePost // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedPost: freezed == updatedPost
          ? _value.updatedPost
          : updatedPost // ignore: cast_nullable_to_non_nullable
              as FeedEntity?,
      isUpdatingPost: null == isUpdatingPost
          ? _value.isUpdatingPost
          : isUpdatingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUpdatePost: freezed == errorUpdatePost
          ? _value.errorUpdatePost
          : errorUpdatePost // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeletingPost: null == isDeletingPost
          ? _value.isDeletingPost
          : isDeletingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDeletePost: freezed == errorDeletePost
          ? _value.errorDeletePost
          : errorDeletePost // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeedStateImpl implements _FeedState {
  const _$FeedStateImpl(
      {final List<FeedEntity> posts = const <FeedEntity>[],
      this.hasMore = false,
      this.cursor,
      this.isLoadingInitial = false,
      this.isLoadingMore = false,
      this.isRefreshing = false,
      this.errorFeed,
      this.singlePost,
      this.isLoadingSinglePost = false,
      this.errorSinglePost,
      this.updatedPost,
      this.isUpdatingPost = false,
      this.errorUpdatePost,
      this.isDeletingPost = false,
      this.errorDeletePost,
      this.message})
      : _posts = posts;

  final List<FeedEntity> _posts;
  @override
  @JsonKey()
  List<FeedEntity> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final bool hasMore;
  @override
  final FeedCursorEntity? cursor;
  @override
  @JsonKey()
  final bool isLoadingInitial;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  final String? errorFeed;
  @override
  final FeedEntity? singlePost;
  @override
  @JsonKey()
  final bool isLoadingSinglePost;
  @override
  final String? errorSinglePost;
  @override
  final FeedEntity? updatedPost;
  @override
  @JsonKey()
  final bool isUpdatingPost;
  @override
  final String? errorUpdatePost;
  @override
  @JsonKey()
  final bool isDeletingPost;
  @override
  final String? errorDeletePost;
  @override
  final String? message;

  @override
  String toString() {
    return 'FeedState(posts: $posts, hasMore: $hasMore, cursor: $cursor, isLoadingInitial: $isLoadingInitial, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, errorFeed: $errorFeed, singlePost: $singlePost, isLoadingSinglePost: $isLoadingSinglePost, errorSinglePost: $errorSinglePost, updatedPost: $updatedPost, isUpdatingPost: $isUpdatingPost, errorUpdatePost: $errorUpdatePost, isDeletingPost: $isDeletingPost, errorDeletePost: $errorDeletePost, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.isLoadingInitial, isLoadingInitial) ||
                other.isLoadingInitial == isLoadingInitial) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.errorFeed, errorFeed) ||
                other.errorFeed == errorFeed) &&
            (identical(other.singlePost, singlePost) ||
                other.singlePost == singlePost) &&
            (identical(other.isLoadingSinglePost, isLoadingSinglePost) ||
                other.isLoadingSinglePost == isLoadingSinglePost) &&
            (identical(other.errorSinglePost, errorSinglePost) ||
                other.errorSinglePost == errorSinglePost) &&
            (identical(other.updatedPost, updatedPost) ||
                other.updatedPost == updatedPost) &&
            (identical(other.isUpdatingPost, isUpdatingPost) ||
                other.isUpdatingPost == isUpdatingPost) &&
            (identical(other.errorUpdatePost, errorUpdatePost) ||
                other.errorUpdatePost == errorUpdatePost) &&
            (identical(other.isDeletingPost, isDeletingPost) ||
                other.isDeletingPost == isDeletingPost) &&
            (identical(other.errorDeletePost, errorDeletePost) ||
                other.errorDeletePost == errorDeletePost) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      hasMore,
      cursor,
      isLoadingInitial,
      isLoadingMore,
      isRefreshing,
      errorFeed,
      singlePost,
      isLoadingSinglePost,
      errorSinglePost,
      updatedPost,
      isUpdatingPost,
      errorUpdatePost,
      isDeletingPost,
      errorDeletePost,
      message);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      __$$FeedStateImplCopyWithImpl<_$FeedStateImpl>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {final List<FeedEntity> posts,
      final bool hasMore,
      final FeedCursorEntity? cursor,
      final bool isLoadingInitial,
      final bool isLoadingMore,
      final bool isRefreshing,
      final String? errorFeed,
      final FeedEntity? singlePost,
      final bool isLoadingSinglePost,
      final String? errorSinglePost,
      final FeedEntity? updatedPost,
      final bool isUpdatingPost,
      final String? errorUpdatePost,
      final bool isDeletingPost,
      final String? errorDeletePost,
      final String? message}) = _$FeedStateImpl;

  @override
  List<FeedEntity> get posts;
  @override
  bool get hasMore;
  @override
  FeedCursorEntity? get cursor;
  @override
  bool get isLoadingInitial;
  @override
  bool get isLoadingMore;
  @override
  bool get isRefreshing;
  @override
  String? get errorFeed;
  @override
  FeedEntity? get singlePost;
  @override
  bool get isLoadingSinglePost;
  @override
  String? get errorSinglePost;
  @override
  FeedEntity? get updatedPost;
  @override
  bool get isUpdatingPost;
  @override
  String? get errorUpdatePost;
  @override
  bool get isDeletingPost;
  @override
  String? get errorDeletePost;
  @override
  String? get message;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

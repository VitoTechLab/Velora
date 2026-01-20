// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedCommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentEventCopyWith<$Res> {
  factory $FeedCommentEventCopyWith(
          FeedCommentEvent value, $Res Function(FeedCommentEvent) then) =
      _$FeedCommentEventCopyWithImpl<$Res, FeedCommentEvent>;
}

/// @nodoc
class _$FeedCommentEventCopyWithImpl<$Res, $Val extends FeedCommentEvent>
    implements $FeedCommentEventCopyWith<$Res> {
  _$FeedCommentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFeedCommentsEventImplCopyWith<$Res> {
  factory _$$LoadFeedCommentsEventImplCopyWith(
          _$LoadFeedCommentsEventImpl value,
          $Res Function(_$LoadFeedCommentsEventImpl) then) =
      __$$LoadFeedCommentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, int? limit});
}

/// @nodoc
class __$$LoadFeedCommentsEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$LoadFeedCommentsEventImpl>
    implements _$$LoadFeedCommentsEventImplCopyWith<$Res> {
  __$$LoadFeedCommentsEventImplCopyWithImpl(_$LoadFeedCommentsEventImpl _value,
      $Res Function(_$LoadFeedCommentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? limit = freezed,
  }) {
    return _then(_$LoadFeedCommentsEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadFeedCommentsEventImpl implements LoadFeedCommentsEvent {
  const _$LoadFeedCommentsEventImpl({required this.postId, this.limit});

  @override
  final String postId;
  @override
  final int? limit;

  @override
  String toString() {
    return 'FeedCommentEvent.loadFeedComments(postId: $postId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFeedCommentsEventImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, limit);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFeedCommentsEventImplCopyWith<_$LoadFeedCommentsEventImpl>
      get copyWith => __$$LoadFeedCommentsEventImplCopyWithImpl<
          _$LoadFeedCommentsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return loadFeedComments(postId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return loadFeedComments?.call(postId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (loadFeedComments != null) {
      return loadFeedComments(postId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return loadFeedComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return loadFeedComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (loadFeedComments != null) {
      return loadFeedComments(this);
    }
    return orElse();
  }
}

abstract class LoadFeedCommentsEvent implements FeedCommentEvent {
  const factory LoadFeedCommentsEvent(
      {required final String postId,
      final int? limit}) = _$LoadFeedCommentsEventImpl;

  String get postId;
  int? get limit;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFeedCommentsEventImplCopyWith<_$LoadFeedCommentsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreFeedCommentsEventImplCopyWith<$Res> {
  factory _$$LoadMoreFeedCommentsEventImplCopyWith(
          _$LoadMoreFeedCommentsEventImpl value,
          $Res Function(_$LoadMoreFeedCommentsEventImpl) then) =
      __$$LoadMoreFeedCommentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, int limit});
}

/// @nodoc
class __$$LoadMoreFeedCommentsEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res,
        _$LoadMoreFeedCommentsEventImpl>
    implements _$$LoadMoreFeedCommentsEventImplCopyWith<$Res> {
  __$$LoadMoreFeedCommentsEventImplCopyWithImpl(
      _$LoadMoreFeedCommentsEventImpl _value,
      $Res Function(_$LoadMoreFeedCommentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? limit = null,
  }) {
    return _then(_$LoadMoreFeedCommentsEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadMoreFeedCommentsEventImpl implements LoadMoreFeedCommentsEvent {
  const _$LoadMoreFeedCommentsEventImpl(
      {required this.postId, required this.limit});

  @override
  final String postId;
  @override
  final int limit;

  @override
  String toString() {
    return 'FeedCommentEvent.loadMoreFeedComments(postId: $postId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreFeedCommentsEventImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, limit);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreFeedCommentsEventImplCopyWith<_$LoadMoreFeedCommentsEventImpl>
      get copyWith => __$$LoadMoreFeedCommentsEventImplCopyWithImpl<
          _$LoadMoreFeedCommentsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return loadMoreFeedComments(postId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return loadMoreFeedComments?.call(postId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (loadMoreFeedComments != null) {
      return loadMoreFeedComments(postId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return loadMoreFeedComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return loadMoreFeedComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (loadMoreFeedComments != null) {
      return loadMoreFeedComments(this);
    }
    return orElse();
  }
}

abstract class LoadMoreFeedCommentsEvent implements FeedCommentEvent {
  const factory LoadMoreFeedCommentsEvent(
      {required final String postId,
      required final int limit}) = _$LoadMoreFeedCommentsEventImpl;

  String get postId;
  int get limit;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreFeedCommentsEventImplCopyWith<_$LoadMoreFeedCommentsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadRepliesEventImplCopyWith<$Res> {
  factory _$$LoadRepliesEventImplCopyWith(_$LoadRepliesEventImpl value,
          $Res Function(_$LoadRepliesEventImpl) then) =
      __$$LoadRepliesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String parentCommentId});
}

/// @nodoc
class __$$LoadRepliesEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$LoadRepliesEventImpl>
    implements _$$LoadRepliesEventImplCopyWith<$Res> {
  __$$LoadRepliesEventImplCopyWithImpl(_$LoadRepliesEventImpl _value,
      $Res Function(_$LoadRepliesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCommentId = null,
  }) {
    return _then(_$LoadRepliesEventImpl(
      parentCommentId: null == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadRepliesEventImpl implements LoadRepliesEvent {
  const _$LoadRepliesEventImpl({required this.parentCommentId});

  @override
  final String parentCommentId;

  @override
  String toString() {
    return 'FeedCommentEvent.loadReplies(parentCommentId: $parentCommentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRepliesEventImpl &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentCommentId);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRepliesEventImplCopyWith<_$LoadRepliesEventImpl> get copyWith =>
      __$$LoadRepliesEventImplCopyWithImpl<_$LoadRepliesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return loadReplies(parentCommentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return loadReplies?.call(parentCommentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (loadReplies != null) {
      return loadReplies(parentCommentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return loadReplies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return loadReplies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (loadReplies != null) {
      return loadReplies(this);
    }
    return orElse();
  }
}

abstract class LoadRepliesEvent implements FeedCommentEvent {
  const factory LoadRepliesEvent({required final String parentCommentId}) =
      _$LoadRepliesEventImpl;

  String get parentCommentId;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadRepliesEventImplCopyWith<_$LoadRepliesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFeedCommentEventImplCopyWith<$Res> {
  factory _$$AddFeedCommentEventImplCopyWith(_$AddFeedCommentEventImpl value,
          $Res Function(_$AddFeedCommentEventImpl) then) =
      __$$AddFeedCommentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, String content, String? parentCommentId});
}

/// @nodoc
class __$$AddFeedCommentEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$AddFeedCommentEventImpl>
    implements _$$AddFeedCommentEventImplCopyWith<$Res> {
  __$$AddFeedCommentEventImplCopyWithImpl(_$AddFeedCommentEventImpl _value,
      $Res Function(_$AddFeedCommentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
    Object? parentCommentId = freezed,
  }) {
    return _then(_$AddFeedCommentEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddFeedCommentEventImpl implements AddFeedCommentEvent {
  const _$AddFeedCommentEventImpl(
      {required this.postId, required this.content, this.parentCommentId});

  @override
  final String postId;
  @override
  final String content;
  @override
  final String? parentCommentId;

  @override
  String toString() {
    return 'FeedCommentEvent.addFeedComment(postId: $postId, content: $content, parentCommentId: $parentCommentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeedCommentEventImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, postId, content, parentCommentId);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeedCommentEventImplCopyWith<_$AddFeedCommentEventImpl> get copyWith =>
      __$$AddFeedCommentEventImplCopyWithImpl<_$AddFeedCommentEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return addFeedComment(postId, content, parentCommentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return addFeedComment?.call(postId, content, parentCommentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (addFeedComment != null) {
      return addFeedComment(postId, content, parentCommentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return addFeedComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return addFeedComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (addFeedComment != null) {
      return addFeedComment(this);
    }
    return orElse();
  }
}

abstract class AddFeedCommentEvent implements FeedCommentEvent {
  const factory AddFeedCommentEvent(
      {required final String postId,
      required final String content,
      final String? parentCommentId}) = _$AddFeedCommentEventImpl;

  String get postId;
  String get content;
  String? get parentCommentId;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFeedCommentEventImplCopyWith<_$AddFeedCommentEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFeedCommentEventImplCopyWith<$Res> {
  factory _$$DeleteFeedCommentEventImplCopyWith(
          _$DeleteFeedCommentEventImpl value,
          $Res Function(_$DeleteFeedCommentEventImpl) then) =
      __$$DeleteFeedCommentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commentId});
}

/// @nodoc
class __$$DeleteFeedCommentEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$DeleteFeedCommentEventImpl>
    implements _$$DeleteFeedCommentEventImplCopyWith<$Res> {
  __$$DeleteFeedCommentEventImplCopyWithImpl(
      _$DeleteFeedCommentEventImpl _value,
      $Res Function(_$DeleteFeedCommentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_$DeleteFeedCommentEventImpl(
      null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFeedCommentEventImpl implements DeleteFeedCommentEvent {
  const _$DeleteFeedCommentEventImpl(this.commentId);

  @override
  final String commentId;

  @override
  String toString() {
    return 'FeedCommentEvent.deleteFeedComment(commentId: $commentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFeedCommentEventImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFeedCommentEventImplCopyWith<_$DeleteFeedCommentEventImpl>
      get copyWith => __$$DeleteFeedCommentEventImplCopyWithImpl<
          _$DeleteFeedCommentEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return deleteFeedComment(commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return deleteFeedComment?.call(commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (deleteFeedComment != null) {
      return deleteFeedComment(commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return deleteFeedComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return deleteFeedComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (deleteFeedComment != null) {
      return deleteFeedComment(this);
    }
    return orElse();
  }
}

abstract class DeleteFeedCommentEvent implements FeedCommentEvent {
  const factory DeleteFeedCommentEvent(final String commentId) =
      _$DeleteFeedCommentEventImpl;

  String get commentId;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFeedCommentEventImplCopyWith<_$DeleteFeedCommentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFeedCommentLikeEventImplCopyWith<$Res> {
  factory _$$ToggleFeedCommentLikeEventImplCopyWith(
          _$ToggleFeedCommentLikeEventImpl value,
          $Res Function(_$ToggleFeedCommentLikeEventImpl) then) =
      __$$ToggleFeedCommentLikeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commentId});
}

/// @nodoc
class __$$ToggleFeedCommentLikeEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res,
        _$ToggleFeedCommentLikeEventImpl>
    implements _$$ToggleFeedCommentLikeEventImplCopyWith<$Res> {
  __$$ToggleFeedCommentLikeEventImplCopyWithImpl(
      _$ToggleFeedCommentLikeEventImpl _value,
      $Res Function(_$ToggleFeedCommentLikeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_$ToggleFeedCommentLikeEventImpl(
      null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleFeedCommentLikeEventImpl implements ToggleFeedCommentLikeEvent {
  const _$ToggleFeedCommentLikeEventImpl(this.commentId);

  @override
  final String commentId;

  @override
  String toString() {
    return 'FeedCommentEvent.toggleFeedCommentLike(commentId: $commentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFeedCommentLikeEventImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFeedCommentLikeEventImplCopyWith<_$ToggleFeedCommentLikeEventImpl>
      get copyWith => __$$ToggleFeedCommentLikeEventImplCopyWithImpl<
          _$ToggleFeedCommentLikeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return toggleFeedCommentLike(commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return toggleFeedCommentLike?.call(commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (toggleFeedCommentLike != null) {
      return toggleFeedCommentLike(commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return toggleFeedCommentLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return toggleFeedCommentLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (toggleFeedCommentLike != null) {
      return toggleFeedCommentLike(this);
    }
    return orElse();
  }
}

abstract class ToggleFeedCommentLikeEvent implements FeedCommentEvent {
  const factory ToggleFeedCommentLikeEvent(final String commentId) =
      _$ToggleFeedCommentLikeEventImpl;

  String get commentId;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFeedCommentLikeEventImplCopyWith<_$ToggleFeedCommentLikeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFeedCommentMessagesEventImplCopyWith<$Res> {
  factory _$$ClearFeedCommentMessagesEventImplCopyWith(
          _$ClearFeedCommentMessagesEventImpl value,
          $Res Function(_$ClearFeedCommentMessagesEventImpl) then) =
      __$$ClearFeedCommentMessagesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFeedCommentMessagesEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res,
        _$ClearFeedCommentMessagesEventImpl>
    implements _$$ClearFeedCommentMessagesEventImplCopyWith<$Res> {
  __$$ClearFeedCommentMessagesEventImplCopyWithImpl(
      _$ClearFeedCommentMessagesEventImpl _value,
      $Res Function(_$ClearFeedCommentMessagesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearFeedCommentMessagesEventImpl
    implements ClearFeedCommentMessagesEvent {
  const _$ClearFeedCommentMessagesEventImpl();

  @override
  String toString() {
    return 'FeedCommentEvent.clearFeedCommentMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFeedCommentMessagesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return clearFeedCommentMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return clearFeedCommentMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (clearFeedCommentMessages != null) {
      return clearFeedCommentMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return clearFeedCommentMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return clearFeedCommentMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (clearFeedCommentMessages != null) {
      return clearFeedCommentMessages(this);
    }
    return orElse();
  }
}

abstract class ClearFeedCommentMessagesEvent implements FeedCommentEvent {
  const factory ClearFeedCommentMessagesEvent() =
      _$ClearFeedCommentMessagesEventImpl;
}

/// @nodoc
abstract class _$$StartWatchCommentsEventImplCopyWith<$Res> {
  factory _$$StartWatchCommentsEventImplCopyWith(
          _$StartWatchCommentsEventImpl value,
          $Res Function(_$StartWatchCommentsEventImpl) then) =
      __$$StartWatchCommentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$StartWatchCommentsEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$StartWatchCommentsEventImpl>
    implements _$$StartWatchCommentsEventImplCopyWith<$Res> {
  __$$StartWatchCommentsEventImplCopyWithImpl(
      _$StartWatchCommentsEventImpl _value,
      $Res Function(_$StartWatchCommentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$StartWatchCommentsEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartWatchCommentsEventImpl implements StartWatchCommentsEvent {
  const _$StartWatchCommentsEventImpl({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'FeedCommentEvent.startWatchComments(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWatchCommentsEventImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWatchCommentsEventImplCopyWith<_$StartWatchCommentsEventImpl>
      get copyWith => __$$StartWatchCommentsEventImplCopyWithImpl<
          _$StartWatchCommentsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return startWatchComments(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return startWatchComments?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (startWatchComments != null) {
      return startWatchComments(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return startWatchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return startWatchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (startWatchComments != null) {
      return startWatchComments(this);
    }
    return orElse();
  }
}

abstract class StartWatchCommentsEvent implements FeedCommentEvent {
  const factory StartWatchCommentsEvent({required final String postId}) =
      _$StartWatchCommentsEventImpl;

  String get postId;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartWatchCommentsEventImplCopyWith<_$StartWatchCommentsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopWatchCommentsEventImplCopyWith<$Res> {
  factory _$$StopWatchCommentsEventImplCopyWith(
          _$StopWatchCommentsEventImpl value,
          $Res Function(_$StopWatchCommentsEventImpl) then) =
      __$$StopWatchCommentsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWatchCommentsEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$StopWatchCommentsEventImpl>
    implements _$$StopWatchCommentsEventImplCopyWith<$Res> {
  __$$StopWatchCommentsEventImplCopyWithImpl(
      _$StopWatchCommentsEventImpl _value,
      $Res Function(_$StopWatchCommentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWatchCommentsEventImpl implements StopWatchCommentsEvent {
  const _$StopWatchCommentsEventImpl();

  @override
  String toString() {
    return 'FeedCommentEvent.stopWatchComments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchCommentsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return stopWatchComments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return stopWatchComments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (stopWatchComments != null) {
      return stopWatchComments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return stopWatchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return stopWatchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (stopWatchComments != null) {
      return stopWatchComments(this);
    }
    return orElse();
  }
}

abstract class StopWatchCommentsEvent implements FeedCommentEvent {
  const factory StopWatchCommentsEvent() = _$StopWatchCommentsEventImpl;
}

/// @nodoc
abstract class _$$WatchCommentArrivedEventImplCopyWith<$Res> {
  factory _$$WatchCommentArrivedEventImplCopyWith(
          _$WatchCommentArrivedEventImpl value,
          $Res Function(_$WatchCommentArrivedEventImpl) then) =
      __$$WatchCommentArrivedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentEntity comment});

  $CommentEntityCopyWith<$Res> get comment;
}

/// @nodoc
class __$$WatchCommentArrivedEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$WatchCommentArrivedEventImpl>
    implements _$$WatchCommentArrivedEventImplCopyWith<$Res> {
  __$$WatchCommentArrivedEventImplCopyWithImpl(
      _$WatchCommentArrivedEventImpl _value,
      $Res Function(_$WatchCommentArrivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$WatchCommentArrivedEventImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentEntity,
    ));
  }

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentEntityCopyWith<$Res> get comment {
    return $CommentEntityCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$WatchCommentArrivedEventImpl implements WatchCommentArrivedEvent {
  const _$WatchCommentArrivedEventImpl({required this.comment});

  @override
  final CommentEntity comment;

  @override
  String toString() {
    return 'FeedCommentEvent.watchCommentArrived(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchCommentArrivedEventImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchCommentArrivedEventImplCopyWith<_$WatchCommentArrivedEventImpl>
      get copyWith => __$$WatchCommentArrivedEventImplCopyWithImpl<
          _$WatchCommentArrivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return watchCommentArrived(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return watchCommentArrived?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (watchCommentArrived != null) {
      return watchCommentArrived(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return watchCommentArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return watchCommentArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (watchCommentArrived != null) {
      return watchCommentArrived(this);
    }
    return orElse();
  }
}

abstract class WatchCommentArrivedEvent implements FeedCommentEvent {
  const factory WatchCommentArrivedEvent(
      {required final CommentEntity comment}) = _$WatchCommentArrivedEventImpl;

  CommentEntity get comment;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchCommentArrivedEventImplCopyWith<_$WatchCommentArrivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchErrorEventImplCopyWith<$Res> {
  factory _$$WatchErrorEventImplCopyWith(_$WatchErrorEventImpl value,
          $Res Function(_$WatchErrorEventImpl) then) =
      __$$WatchErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$WatchErrorEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$WatchErrorEventImpl>
    implements _$$WatchErrorEventImplCopyWith<$Res> {
  __$$WatchErrorEventImplCopyWithImpl(
      _$WatchErrorEventImpl _value, $Res Function(_$WatchErrorEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WatchErrorEventImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchErrorEventImpl implements WatchErrorEvent {
  const _$WatchErrorEventImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FeedCommentEvent.watchError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchErrorEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchErrorEventImplCopyWith<_$WatchErrorEventImpl> get copyWith =>
      __$$WatchErrorEventImplCopyWithImpl<_$WatchErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, int? limit) loadFeedComments,
    required TResult Function(String postId, int limit) loadMoreFeedComments,
    required TResult Function(String parentCommentId) loadReplies,
    required TResult Function(
            String postId, String content, String? parentCommentId)
        addFeedComment,
    required TResult Function(String commentId) deleteFeedComment,
    required TResult Function(String commentId) toggleFeedCommentLike,
    required TResult Function() clearFeedCommentMessages,
    required TResult Function(String postId) startWatchComments,
    required TResult Function() stopWatchComments,
    required TResult Function(CommentEntity comment) watchCommentArrived,
    required TResult Function(String message) watchError,
  }) {
    return watchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, int? limit)? loadFeedComments,
    TResult? Function(String postId, int limit)? loadMoreFeedComments,
    TResult? Function(String parentCommentId)? loadReplies,
    TResult? Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult? Function(String commentId)? deleteFeedComment,
    TResult? Function(String commentId)? toggleFeedCommentLike,
    TResult? Function()? clearFeedCommentMessages,
    TResult? Function(String postId)? startWatchComments,
    TResult? Function()? stopWatchComments,
    TResult? Function(CommentEntity comment)? watchCommentArrived,
    TResult? Function(String message)? watchError,
  }) {
    return watchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, int? limit)? loadFeedComments,
    TResult Function(String postId, int limit)? loadMoreFeedComments,
    TResult Function(String parentCommentId)? loadReplies,
    TResult Function(String postId, String content, String? parentCommentId)?
        addFeedComment,
    TResult Function(String commentId)? deleteFeedComment,
    TResult Function(String commentId)? toggleFeedCommentLike,
    TResult Function()? clearFeedCommentMessages,
    TResult Function(String postId)? startWatchComments,
    TResult Function()? stopWatchComments,
    TResult Function(CommentEntity comment)? watchCommentArrived,
    TResult Function(String message)? watchError,
    required TResult orElse(),
  }) {
    if (watchError != null) {
      return watchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFeedCommentsEvent value) loadFeedComments,
    required TResult Function(LoadMoreFeedCommentsEvent value)
        loadMoreFeedComments,
    required TResult Function(LoadRepliesEvent value) loadReplies,
    required TResult Function(AddFeedCommentEvent value) addFeedComment,
    required TResult Function(DeleteFeedCommentEvent value) deleteFeedComment,
    required TResult Function(ToggleFeedCommentLikeEvent value)
        toggleFeedCommentLike,
    required TResult Function(ClearFeedCommentMessagesEvent value)
        clearFeedCommentMessages,
    required TResult Function(StartWatchCommentsEvent value) startWatchComments,
    required TResult Function(StopWatchCommentsEvent value) stopWatchComments,
    required TResult Function(WatchCommentArrivedEvent value)
        watchCommentArrived,
    required TResult Function(WatchErrorEvent value) watchError,
  }) {
    return watchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult? Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult? Function(LoadRepliesEvent value)? loadReplies,
    TResult? Function(AddFeedCommentEvent value)? addFeedComment,
    TResult? Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult? Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult? Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult? Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult? Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult? Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult? Function(WatchErrorEvent value)? watchError,
  }) {
    return watchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFeedCommentsEvent value)? loadFeedComments,
    TResult Function(LoadMoreFeedCommentsEvent value)? loadMoreFeedComments,
    TResult Function(LoadRepliesEvent value)? loadReplies,
    TResult Function(AddFeedCommentEvent value)? addFeedComment,
    TResult Function(DeleteFeedCommentEvent value)? deleteFeedComment,
    TResult Function(ToggleFeedCommentLikeEvent value)? toggleFeedCommentLike,
    TResult Function(ClearFeedCommentMessagesEvent value)?
        clearFeedCommentMessages,
    TResult Function(StartWatchCommentsEvent value)? startWatchComments,
    TResult Function(StopWatchCommentsEvent value)? stopWatchComments,
    TResult Function(WatchCommentArrivedEvent value)? watchCommentArrived,
    TResult Function(WatchErrorEvent value)? watchError,
    required TResult orElse(),
  }) {
    if (watchError != null) {
      return watchError(this);
    }
    return orElse();
  }
}

abstract class WatchErrorEvent implements FeedCommentEvent {
  const factory WatchErrorEvent({required final String message}) =
      _$WatchErrorEventImpl;

  String get message;

  /// Create a copy of FeedCommentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchErrorEventImplCopyWith<_$WatchErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

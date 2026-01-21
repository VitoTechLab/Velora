// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res, FeedEvent>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res, $Val extends FeedEvent>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadInitialFeedEventImplCopyWith<$Res> {
  factory _$$LoadInitialFeedEventImplCopyWith(_$LoadInitialFeedEventImpl value,
          $Res Function(_$LoadInitialFeedEventImpl) then) =
      __$$LoadInitialFeedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, String? userId});
}

/// @nodoc
class __$$LoadInitialFeedEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$LoadInitialFeedEventImpl>
    implements _$$LoadInitialFeedEventImplCopyWith<$Res> {
  __$$LoadInitialFeedEventImplCopyWithImpl(_$LoadInitialFeedEventImpl _value,
      $Res Function(_$LoadInitialFeedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? userId = freezed,
  }) {
    return _then(_$LoadInitialFeedEventImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadInitialFeedEventImpl implements LoadInitialFeedEvent {
  const _$LoadInitialFeedEventImpl({this.limit = 20, this.userId});

  @override
  @JsonKey()
  final int limit;
  @override
  final String? userId;

  @override
  String toString() {
    return 'FeedEvent.loadInitialFeed(limit: $limit, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInitialFeedEventImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, userId);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInitialFeedEventImplCopyWith<_$LoadInitialFeedEventImpl>
      get copyWith =>
          __$$LoadInitialFeedEventImplCopyWithImpl<_$LoadInitialFeedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return loadInitialFeed(limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return loadInitialFeed?.call(limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (loadInitialFeed != null) {
      return loadInitialFeed(limit, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return loadInitialFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return loadInitialFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (loadInitialFeed != null) {
      return loadInitialFeed(this);
    }
    return orElse();
  }
}

abstract class LoadInitialFeedEvent implements FeedEvent {
  const factory LoadInitialFeedEvent({final int limit, final String? userId}) =
      _$LoadInitialFeedEventImpl;

  int get limit;
  String? get userId;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadInitialFeedEventImplCopyWith<_$LoadInitialFeedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreFeedEventImplCopyWith<$Res> {
  factory _$$LoadMoreFeedEventImplCopyWith(_$LoadMoreFeedEventImpl value,
          $Res Function(_$LoadMoreFeedEventImpl) then) =
      __$$LoadMoreFeedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, String? userId});
}

/// @nodoc
class __$$LoadMoreFeedEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$LoadMoreFeedEventImpl>
    implements _$$LoadMoreFeedEventImplCopyWith<$Res> {
  __$$LoadMoreFeedEventImplCopyWithImpl(_$LoadMoreFeedEventImpl _value,
      $Res Function(_$LoadMoreFeedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? userId = freezed,
  }) {
    return _then(_$LoadMoreFeedEventImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadMoreFeedEventImpl implements LoadMoreFeedEvent {
  const _$LoadMoreFeedEventImpl({this.limit = 20, this.userId});

  @override
  @JsonKey()
  final int limit;
  @override
  final String? userId;

  @override
  String toString() {
    return 'FeedEvent.loadMoreFeed(limit: $limit, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreFeedEventImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, userId);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreFeedEventImplCopyWith<_$LoadMoreFeedEventImpl> get copyWith =>
      __$$LoadMoreFeedEventImplCopyWithImpl<_$LoadMoreFeedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return loadMoreFeed(limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return loadMoreFeed?.call(limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (loadMoreFeed != null) {
      return loadMoreFeed(limit, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return loadMoreFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return loadMoreFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (loadMoreFeed != null) {
      return loadMoreFeed(this);
    }
    return orElse();
  }
}

abstract class LoadMoreFeedEvent implements FeedEvent {
  const factory LoadMoreFeedEvent({final int limit, final String? userId}) =
      _$LoadMoreFeedEventImpl;

  int get limit;
  String? get userId;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreFeedEventImplCopyWith<_$LoadMoreFeedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPostByIdEventImplCopyWith<$Res> {
  factory _$$GetPostByIdEventImplCopyWith(_$GetPostByIdEventImpl value,
          $Res Function(_$GetPostByIdEventImpl) then) =
      __$$GetPostByIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$GetPostByIdEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$GetPostByIdEventImpl>
    implements _$$GetPostByIdEventImplCopyWith<$Res> {
  __$$GetPostByIdEventImplCopyWithImpl(_$GetPostByIdEventImpl _value,
      $Res Function(_$GetPostByIdEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$GetPostByIdEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPostByIdEventImpl implements GetPostByIdEvent {
  const _$GetPostByIdEventImpl({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'FeedEvent.getPostById(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostByIdEventImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostByIdEventImplCopyWith<_$GetPostByIdEventImpl> get copyWith =>
      __$$GetPostByIdEventImplCopyWithImpl<_$GetPostByIdEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return getPostById(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return getPostById?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (getPostById != null) {
      return getPostById(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return getPostById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return getPostById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (getPostById != null) {
      return getPostById(this);
    }
    return orElse();
  }
}

abstract class GetPostByIdEvent implements FeedEvent {
  const factory GetPostByIdEvent({required final String postId}) =
      _$GetPostByIdEventImpl;

  String get postId;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPostByIdEventImplCopyWith<_$GetPostByIdEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePostEventImplCopyWith<$Res> {
  factory _$$UpdatePostEventImplCopyWith(_$UpdatePostEventImpl value,
          $Res Function(_$UpdatePostEventImpl) then) =
      __$$UpdatePostEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedEntity post});

  $FeedEntityCopyWith<$Res> get post;
}

/// @nodoc
class __$$UpdatePostEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$UpdatePostEventImpl>
    implements _$$UpdatePostEventImplCopyWith<$Res> {
  __$$UpdatePostEventImplCopyWithImpl(
      _$UpdatePostEventImpl _value, $Res Function(_$UpdatePostEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$UpdatePostEventImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as FeedEntity,
    ));
  }

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedEntityCopyWith<$Res> get post {
    return $FeedEntityCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$UpdatePostEventImpl implements UpdatePostEvent {
  const _$UpdatePostEventImpl({required this.post});

  @override
  final FeedEntity post;

  @override
  String toString() {
    return 'FeedEvent.updatePostEntity(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePostEventImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePostEventImplCopyWith<_$UpdatePostEventImpl> get copyWith =>
      __$$UpdatePostEventImplCopyWithImpl<_$UpdatePostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return updatePostEntity(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return updatePostEntity?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (updatePostEntity != null) {
      return updatePostEntity(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return updatePostEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return updatePostEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (updatePostEntity != null) {
      return updatePostEntity(this);
    }
    return orElse();
  }
}

abstract class UpdatePostEvent implements FeedEvent {
  const factory UpdatePostEvent({required final FeedEntity post}) =
      _$UpdatePostEventImpl;

  FeedEntity get post;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePostEventImplCopyWith<_$UpdatePostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePostEventImplCopyWith<$Res> {
  factory _$$DeletePostEventImplCopyWith(_$DeletePostEventImpl value,
          $Res Function(_$DeletePostEventImpl) then) =
      __$$DeletePostEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$DeletePostEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$DeletePostEventImpl>
    implements _$$DeletePostEventImplCopyWith<$Res> {
  __$$DeletePostEventImplCopyWithImpl(
      _$DeletePostEventImpl _value, $Res Function(_$DeletePostEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$DeletePostEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePostEventImpl implements DeletePostEvent {
  const _$DeletePostEventImpl({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'FeedEvent.deletePost(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePostEventImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePostEventImplCopyWith<_$DeletePostEventImpl> get copyWith =>
      __$$DeletePostEventImplCopyWithImpl<_$DeletePostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return deletePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return deletePost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return deletePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return deletePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(this);
    }
    return orElse();
  }
}

abstract class DeletePostEvent implements FeedEvent {
  const factory DeletePostEvent({required final String postId}) =
      _$DeletePostEventImpl;

  String get postId;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePostEventImplCopyWith<_$DeletePostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshFeedEventImplCopyWith<$Res> {
  factory _$$RefreshFeedEventImplCopyWith(_$RefreshFeedEventImpl value,
          $Res Function(_$RefreshFeedEventImpl) then) =
      __$$RefreshFeedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshFeedEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$RefreshFeedEventImpl>
    implements _$$RefreshFeedEventImplCopyWith<$Res> {
  __$$RefreshFeedEventImplCopyWithImpl(_$RefreshFeedEventImpl _value,
      $Res Function(_$RefreshFeedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshFeedEventImpl implements RefreshFeedEvent {
  const _$RefreshFeedEventImpl();

  @override
  String toString() {
    return 'FeedEvent.refreshFeed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshFeedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return refreshFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return refreshFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return refreshFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return refreshFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed(this);
    }
    return orElse();
  }
}

abstract class RefreshFeedEvent implements FeedEvent {
  const factory RefreshFeedEvent() = _$RefreshFeedEventImpl;
}

/// @nodoc
abstract class _$$ToggleLikePostEventImplCopyWith<$Res> {
  factory _$$ToggleLikePostEventImplCopyWith(_$ToggleLikePostEventImpl value,
          $Res Function(_$ToggleLikePostEventImpl) then) =
      __$$ToggleLikePostEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$ToggleLikePostEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$ToggleLikePostEventImpl>
    implements _$$ToggleLikePostEventImplCopyWith<$Res> {
  __$$ToggleLikePostEventImplCopyWithImpl(_$ToggleLikePostEventImpl _value,
      $Res Function(_$ToggleLikePostEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$ToggleLikePostEventImpl(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleLikePostEventImpl implements ToggleLikePostEvent {
  const _$ToggleLikePostEventImpl(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'FeedEvent.toggleLikePost(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleLikePostEventImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleLikePostEventImplCopyWith<_$ToggleLikePostEventImpl> get copyWith =>
      __$$ToggleLikePostEventImplCopyWithImpl<_$ToggleLikePostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return toggleLikePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return toggleLikePost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (toggleLikePost != null) {
      return toggleLikePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return toggleLikePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return toggleLikePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (toggleLikePost != null) {
      return toggleLikePost(this);
    }
    return orElse();
  }
}

abstract class ToggleLikePostEvent implements FeedEvent {
  const factory ToggleLikePostEvent(final String postId) =
      _$ToggleLikePostEventImpl;

  String get postId;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleLikePostEventImplCopyWith<_$ToggleLikePostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleBookmarkPostEventImplCopyWith<$Res> {
  factory _$$ToggleBookmarkPostEventImplCopyWith(
          _$ToggleBookmarkPostEventImpl value,
          $Res Function(_$ToggleBookmarkPostEventImpl) then) =
      __$$ToggleBookmarkPostEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$ToggleBookmarkPostEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$ToggleBookmarkPostEventImpl>
    implements _$$ToggleBookmarkPostEventImplCopyWith<$Res> {
  __$$ToggleBookmarkPostEventImplCopyWithImpl(
      _$ToggleBookmarkPostEventImpl _value,
      $Res Function(_$ToggleBookmarkPostEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$ToggleBookmarkPostEventImpl(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleBookmarkPostEventImpl implements ToggleBookmarkPostEvent {
  const _$ToggleBookmarkPostEventImpl(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'FeedEvent.toggleBookmarkPost(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBookmarkPostEventImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleBookmarkPostEventImplCopyWith<_$ToggleBookmarkPostEventImpl>
      get copyWith => __$$ToggleBookmarkPostEventImplCopyWithImpl<
          _$ToggleBookmarkPostEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return toggleBookmarkPost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return toggleBookmarkPost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (toggleBookmarkPost != null) {
      return toggleBookmarkPost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return toggleBookmarkPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return toggleBookmarkPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (toggleBookmarkPost != null) {
      return toggleBookmarkPost(this);
    }
    return orElse();
  }
}

abstract class ToggleBookmarkPostEvent implements FeedEvent {
  const factory ToggleBookmarkPostEvent(final String postId) =
      _$ToggleBookmarkPostEventImpl;

  String get postId;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleBookmarkPostEventImplCopyWith<_$ToggleBookmarkPostEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewPostEventImplCopyWith<$Res> {
  factory _$$AddNewPostEventImplCopyWith(_$AddNewPostEventImpl value,
          $Res Function(_$AddNewPostEventImpl) then) =
      __$$AddNewPostEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedEntity post});

  $FeedEntityCopyWith<$Res> get post;
}

/// @nodoc
class __$$AddNewPostEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$AddNewPostEventImpl>
    implements _$$AddNewPostEventImplCopyWith<$Res> {
  __$$AddNewPostEventImplCopyWithImpl(
      _$AddNewPostEventImpl _value, $Res Function(_$AddNewPostEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$AddNewPostEventImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as FeedEntity,
    ));
  }

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedEntityCopyWith<$Res> get post {
    return $FeedEntityCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$AddNewPostEventImpl implements AddNewPostEvent {
  const _$AddNewPostEventImpl(this.post);

  @override
  final FeedEntity post;

  @override
  String toString() {
    return 'FeedEvent.addNewPost(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewPostEventImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewPostEventImplCopyWith<_$AddNewPostEventImpl> get copyWith =>
      __$$AddNewPostEventImplCopyWithImpl<_$AddNewPostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return addNewPost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return addNewPost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (addNewPost != null) {
      return addNewPost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return addNewPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return addNewPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (addNewPost != null) {
      return addNewPost(this);
    }
    return orElse();
  }
}

abstract class AddNewPostEvent implements FeedEvent {
  const factory AddNewPostEvent(final FeedEntity post) = _$AddNewPostEventImpl;

  FeedEntity get post;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNewPostEventImplCopyWith<_$AddNewPostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTransientEventImplCopyWith<$Res> {
  factory _$$ClearTransientEventImplCopyWith(_$ClearTransientEventImpl value,
          $Res Function(_$ClearTransientEventImpl) then) =
      __$$ClearTransientEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTransientEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$ClearTransientEventImpl>
    implements _$$ClearTransientEventImplCopyWith<$Res> {
  __$$ClearTransientEventImplCopyWithImpl(_$ClearTransientEventImpl _value,
      $Res Function(_$ClearTransientEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTransientEventImpl implements ClearTransientEvent {
  const _$ClearTransientEventImpl();

  @override
  String toString() {
    return 'FeedEvent.clearTransient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTransientEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return clearTransient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return clearTransient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return clearTransient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return clearTransient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient(this);
    }
    return orElse();
  }
}

abstract class ClearTransientEvent implements FeedEvent {
  const factory ClearTransientEvent() = _$ClearTransientEventImpl;
}

/// @nodoc
abstract class _$$StartWatchFeedEventImplCopyWith<$Res> {
  factory _$$StartWatchFeedEventImplCopyWith(_$StartWatchFeedEventImpl value,
          $Res Function(_$StartWatchFeedEventImpl) then) =
      __$$StartWatchFeedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartWatchFeedEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$StartWatchFeedEventImpl>
    implements _$$StartWatchFeedEventImplCopyWith<$Res> {
  __$$StartWatchFeedEventImplCopyWithImpl(_$StartWatchFeedEventImpl _value,
      $Res Function(_$StartWatchFeedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartWatchFeedEventImpl implements StartWatchFeedEvent {
  const _$StartWatchFeedEventImpl();

  @override
  String toString() {
    return 'FeedEvent.startWatchFeed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWatchFeedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return startWatchFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return startWatchFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (startWatchFeed != null) {
      return startWatchFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return startWatchFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return startWatchFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (startWatchFeed != null) {
      return startWatchFeed(this);
    }
    return orElse();
  }
}

abstract class StartWatchFeedEvent implements FeedEvent {
  const factory StartWatchFeedEvent() = _$StartWatchFeedEventImpl;
}

/// @nodoc
abstract class _$$StopWatchFeedEventImplCopyWith<$Res> {
  factory _$$StopWatchFeedEventImplCopyWith(_$StopWatchFeedEventImpl value,
          $Res Function(_$StopWatchFeedEventImpl) then) =
      __$$StopWatchFeedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWatchFeedEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$StopWatchFeedEventImpl>
    implements _$$StopWatchFeedEventImplCopyWith<$Res> {
  __$$StopWatchFeedEventImplCopyWithImpl(_$StopWatchFeedEventImpl _value,
      $Res Function(_$StopWatchFeedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWatchFeedEventImpl implements StopWatchFeedEvent {
  const _$StopWatchFeedEventImpl();

  @override
  String toString() {
    return 'FeedEvent.stopWatchFeed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopWatchFeedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return stopWatchFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return stopWatchFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (stopWatchFeed != null) {
      return stopWatchFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return stopWatchFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return stopWatchFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (stopWatchFeed != null) {
      return stopWatchFeed(this);
    }
    return orElse();
  }
}

abstract class StopWatchFeedEvent implements FeedEvent {
  const factory StopWatchFeedEvent() = _$StopWatchFeedEventImpl;
}

/// @nodoc
abstract class _$$FeedPostArrivedEventImplCopyWith<$Res> {
  factory _$$FeedPostArrivedEventImplCopyWith(_$FeedPostArrivedEventImpl value,
          $Res Function(_$FeedPostArrivedEventImpl) then) =
      __$$FeedPostArrivedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedEntity post});

  $FeedEntityCopyWith<$Res> get post;
}

/// @nodoc
class __$$FeedPostArrivedEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$FeedPostArrivedEventImpl>
    implements _$$FeedPostArrivedEventImplCopyWith<$Res> {
  __$$FeedPostArrivedEventImplCopyWithImpl(_$FeedPostArrivedEventImpl _value,
      $Res Function(_$FeedPostArrivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$FeedPostArrivedEventImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as FeedEntity,
    ));
  }

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedEntityCopyWith<$Res> get post {
    return $FeedEntityCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$FeedPostArrivedEventImpl implements FeedPostArrivedEvent {
  const _$FeedPostArrivedEventImpl(this.post);

  @override
  final FeedEntity post;

  @override
  String toString() {
    return 'FeedEvent.feedPostArrived(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedPostArrivedEventImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedPostArrivedEventImplCopyWith<_$FeedPostArrivedEventImpl>
      get copyWith =>
          __$$FeedPostArrivedEventImplCopyWithImpl<_$FeedPostArrivedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? userId) loadInitialFeed,
    required TResult Function(int limit, String? userId) loadMoreFeed,
    required TResult Function(String postId) getPostById,
    required TResult Function(FeedEntity post) updatePostEntity,
    required TResult Function(String postId) deletePost,
    required TResult Function() refreshFeed,
    required TResult Function(String postId) toggleLikePost,
    required TResult Function(String postId) toggleBookmarkPost,
    required TResult Function(FeedEntity post) addNewPost,
    required TResult Function() clearTransient,
    required TResult Function() startWatchFeed,
    required TResult Function() stopWatchFeed,
    required TResult Function(FeedEntity post) feedPostArrived,
  }) {
    return feedPostArrived(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, String? userId)? loadInitialFeed,
    TResult? Function(int limit, String? userId)? loadMoreFeed,
    TResult? Function(String postId)? getPostById,
    TResult? Function(FeedEntity post)? updatePostEntity,
    TResult? Function(String postId)? deletePost,
    TResult? Function()? refreshFeed,
    TResult? Function(String postId)? toggleLikePost,
    TResult? Function(String postId)? toggleBookmarkPost,
    TResult? Function(FeedEntity post)? addNewPost,
    TResult? Function()? clearTransient,
    TResult? Function()? startWatchFeed,
    TResult? Function()? stopWatchFeed,
    TResult? Function(FeedEntity post)? feedPostArrived,
  }) {
    return feedPostArrived?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? userId)? loadInitialFeed,
    TResult Function(int limit, String? userId)? loadMoreFeed,
    TResult Function(String postId)? getPostById,
    TResult Function(FeedEntity post)? updatePostEntity,
    TResult Function(String postId)? deletePost,
    TResult Function()? refreshFeed,
    TResult Function(String postId)? toggleLikePost,
    TResult Function(String postId)? toggleBookmarkPost,
    TResult Function(FeedEntity post)? addNewPost,
    TResult Function()? clearTransient,
    TResult Function()? startWatchFeed,
    TResult Function()? stopWatchFeed,
    TResult Function(FeedEntity post)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (feedPostArrived != null) {
      return feedPostArrived(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialFeedEvent value) loadInitialFeed,
    required TResult Function(LoadMoreFeedEvent value) loadMoreFeed,
    required TResult Function(GetPostByIdEvent value) getPostById,
    required TResult Function(UpdatePostEvent value) updatePostEntity,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(RefreshFeedEvent value) refreshFeed,
    required TResult Function(ToggleLikePostEvent value) toggleLikePost,
    required TResult Function(ToggleBookmarkPostEvent value) toggleBookmarkPost,
    required TResult Function(AddNewPostEvent value) addNewPost,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(StartWatchFeedEvent value) startWatchFeed,
    required TResult Function(StopWatchFeedEvent value) stopWatchFeed,
    required TResult Function(FeedPostArrivedEvent value) feedPostArrived,
  }) {
    return feedPostArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult? Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult? Function(GetPostByIdEvent value)? getPostById,
    TResult? Function(UpdatePostEvent value)? updatePostEntity,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(RefreshFeedEvent value)? refreshFeed,
    TResult? Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult? Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult? Function(AddNewPostEvent value)? addNewPost,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult? Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult? Function(FeedPostArrivedEvent value)? feedPostArrived,
  }) {
    return feedPostArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialFeedEvent value)? loadInitialFeed,
    TResult Function(LoadMoreFeedEvent value)? loadMoreFeed,
    TResult Function(GetPostByIdEvent value)? getPostById,
    TResult Function(UpdatePostEvent value)? updatePostEntity,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(RefreshFeedEvent value)? refreshFeed,
    TResult Function(ToggleLikePostEvent value)? toggleLikePost,
    TResult Function(ToggleBookmarkPostEvent value)? toggleBookmarkPost,
    TResult Function(AddNewPostEvent value)? addNewPost,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(StartWatchFeedEvent value)? startWatchFeed,
    TResult Function(StopWatchFeedEvent value)? stopWatchFeed,
    TResult Function(FeedPostArrivedEvent value)? feedPostArrived,
    required TResult orElse(),
  }) {
    if (feedPostArrived != null) {
      return feedPostArrived(this);
    }
    return orElse();
  }
}

abstract class FeedPostArrivedEvent implements FeedEvent {
  const factory FeedPostArrivedEvent(final FeedEntity post) =
      _$FeedPostArrivedEventImpl;

  FeedEntity get post;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedPostArrivedEventImplCopyWith<_$FeedPostArrivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

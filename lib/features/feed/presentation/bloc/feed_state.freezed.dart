// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedState {

 List<FeedEntity> get posts; bool get hasMore; FeedCursorEntity? get cursor; bool get isLoadingInitial; bool get isLoadingMore; bool get isRefreshing; String? get errorFeed; FeedEntity? get singlePost; bool get isLoadingSinglePost; String? get errorSinglePost; FeedEntity? get updatedPost; bool get isUpdatingPost; String? get errorUpdatePost; bool get isDeletingPost; String? get errorDeletePost; String? get message;
/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedStateCopyWith<FeedState> get copyWith => _$FeedStateCopyWithImpl<FeedState>(this as FeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedState&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoadingInitial, isLoadingInitial) || other.isLoadingInitial == isLoadingInitial)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.errorFeed, errorFeed) || other.errorFeed == errorFeed)&&(identical(other.singlePost, singlePost) || other.singlePost == singlePost)&&(identical(other.isLoadingSinglePost, isLoadingSinglePost) || other.isLoadingSinglePost == isLoadingSinglePost)&&(identical(other.errorSinglePost, errorSinglePost) || other.errorSinglePost == errorSinglePost)&&(identical(other.updatedPost, updatedPost) || other.updatedPost == updatedPost)&&(identical(other.isUpdatingPost, isUpdatingPost) || other.isUpdatingPost == isUpdatingPost)&&(identical(other.errorUpdatePost, errorUpdatePost) || other.errorUpdatePost == errorUpdatePost)&&(identical(other.isDeletingPost, isDeletingPost) || other.isDeletingPost == isDeletingPost)&&(identical(other.errorDeletePost, errorDeletePost) || other.errorDeletePost == errorDeletePost)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),hasMore,cursor,isLoadingInitial,isLoadingMore,isRefreshing,errorFeed,singlePost,isLoadingSinglePost,errorSinglePost,updatedPost,isUpdatingPost,errorUpdatePost,isDeletingPost,errorDeletePost,message);

@override
String toString() {
  return 'FeedState(posts: $posts, hasMore: $hasMore, cursor: $cursor, isLoadingInitial: $isLoadingInitial, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, errorFeed: $errorFeed, singlePost: $singlePost, isLoadingSinglePost: $isLoadingSinglePost, errorSinglePost: $errorSinglePost, updatedPost: $updatedPost, isUpdatingPost: $isUpdatingPost, errorUpdatePost: $errorUpdatePost, isDeletingPost: $isDeletingPost, errorDeletePost: $errorDeletePost, message: $message)';
}


}

/// @nodoc
abstract mixin class $FeedStateCopyWith<$Res>  {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) _then) = _$FeedStateCopyWithImpl;
@useResult
$Res call({
 List<FeedEntity> posts, bool hasMore, FeedCursorEntity? cursor, bool isLoadingInitial, bool isLoadingMore, bool isRefreshing, String? errorFeed, FeedEntity? singlePost, bool isLoadingSinglePost, String? errorSinglePost, FeedEntity? updatedPost, bool isUpdatingPost, String? errorUpdatePost, bool isDeletingPost, String? errorDeletePost, String? message
});


$FeedEntityCopyWith<$Res>? get singlePost;$FeedEntityCopyWith<$Res>? get updatedPost;

}
/// @nodoc
class _$FeedStateCopyWithImpl<$Res>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._self, this._then);

  final FeedState _self;
  final $Res Function(FeedState) _then;

/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? hasMore = null,Object? cursor = freezed,Object? isLoadingInitial = null,Object? isLoadingMore = null,Object? isRefreshing = null,Object? errorFeed = freezed,Object? singlePost = freezed,Object? isLoadingSinglePost = null,Object? errorSinglePost = freezed,Object? updatedPost = freezed,Object? isUpdatingPost = null,Object? errorUpdatePost = freezed,Object? isDeletingPost = null,Object? errorDeletePost = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as FeedCursorEntity?,isLoadingInitial: null == isLoadingInitial ? _self.isLoadingInitial : isLoadingInitial // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,errorFeed: freezed == errorFeed ? _self.errorFeed : errorFeed // ignore: cast_nullable_to_non_nullable
as String?,singlePost: freezed == singlePost ? _self.singlePost : singlePost // ignore: cast_nullable_to_non_nullable
as FeedEntity?,isLoadingSinglePost: null == isLoadingSinglePost ? _self.isLoadingSinglePost : isLoadingSinglePost // ignore: cast_nullable_to_non_nullable
as bool,errorSinglePost: freezed == errorSinglePost ? _self.errorSinglePost : errorSinglePost // ignore: cast_nullable_to_non_nullable
as String?,updatedPost: freezed == updatedPost ? _self.updatedPost : updatedPost // ignore: cast_nullable_to_non_nullable
as FeedEntity?,isUpdatingPost: null == isUpdatingPost ? _self.isUpdatingPost : isUpdatingPost // ignore: cast_nullable_to_non_nullable
as bool,errorUpdatePost: freezed == errorUpdatePost ? _self.errorUpdatePost : errorUpdatePost // ignore: cast_nullable_to_non_nullable
as String?,isDeletingPost: null == isDeletingPost ? _self.isDeletingPost : isDeletingPost // ignore: cast_nullable_to_non_nullable
as bool,errorDeletePost: freezed == errorDeletePost ? _self.errorDeletePost : errorDeletePost // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res>? get singlePost {
    if (_self.singlePost == null) {
    return null;
  }

  return $FeedEntityCopyWith<$Res>(_self.singlePost!, (value) {
    return _then(_self.copyWith(singlePost: value));
  });
}/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res>? get updatedPost {
    if (_self.updatedPost == null) {
    return null;
  }

  return $FeedEntityCopyWith<$Res>(_self.updatedPost!, (value) {
    return _then(_self.copyWith(updatedPost: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedState].
extension FeedStatePatterns on FeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedState value)  $default,){
final _that = this;
switch (_that) {
case _FeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedState value)?  $default,){
final _that = this;
switch (_that) {
case _FeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FeedEntity> posts,  bool hasMore,  FeedCursorEntity? cursor,  bool isLoadingInitial,  bool isLoadingMore,  bool isRefreshing,  String? errorFeed,  FeedEntity? singlePost,  bool isLoadingSinglePost,  String? errorSinglePost,  FeedEntity? updatedPost,  bool isUpdatingPost,  String? errorUpdatePost,  bool isDeletingPost,  String? errorDeletePost,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedState() when $default != null:
return $default(_that.posts,_that.hasMore,_that.cursor,_that.isLoadingInitial,_that.isLoadingMore,_that.isRefreshing,_that.errorFeed,_that.singlePost,_that.isLoadingSinglePost,_that.errorSinglePost,_that.updatedPost,_that.isUpdatingPost,_that.errorUpdatePost,_that.isDeletingPost,_that.errorDeletePost,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FeedEntity> posts,  bool hasMore,  FeedCursorEntity? cursor,  bool isLoadingInitial,  bool isLoadingMore,  bool isRefreshing,  String? errorFeed,  FeedEntity? singlePost,  bool isLoadingSinglePost,  String? errorSinglePost,  FeedEntity? updatedPost,  bool isUpdatingPost,  String? errorUpdatePost,  bool isDeletingPost,  String? errorDeletePost,  String? message)  $default,) {final _that = this;
switch (_that) {
case _FeedState():
return $default(_that.posts,_that.hasMore,_that.cursor,_that.isLoadingInitial,_that.isLoadingMore,_that.isRefreshing,_that.errorFeed,_that.singlePost,_that.isLoadingSinglePost,_that.errorSinglePost,_that.updatedPost,_that.isUpdatingPost,_that.errorUpdatePost,_that.isDeletingPost,_that.errorDeletePost,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FeedEntity> posts,  bool hasMore,  FeedCursorEntity? cursor,  bool isLoadingInitial,  bool isLoadingMore,  bool isRefreshing,  String? errorFeed,  FeedEntity? singlePost,  bool isLoadingSinglePost,  String? errorSinglePost,  FeedEntity? updatedPost,  bool isUpdatingPost,  String? errorUpdatePost,  bool isDeletingPost,  String? errorDeletePost,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _FeedState() when $default != null:
return $default(_that.posts,_that.hasMore,_that.cursor,_that.isLoadingInitial,_that.isLoadingMore,_that.isRefreshing,_that.errorFeed,_that.singlePost,_that.isLoadingSinglePost,_that.errorSinglePost,_that.updatedPost,_that.isUpdatingPost,_that.errorUpdatePost,_that.isDeletingPost,_that.errorDeletePost,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _FeedState implements FeedState {
  const _FeedState({final  List<FeedEntity> posts = const <FeedEntity>[], this.hasMore = false, this.cursor, this.isLoadingInitial = false, this.isLoadingMore = false, this.isRefreshing = false, this.errorFeed, this.singlePost, this.isLoadingSinglePost = false, this.errorSinglePost, this.updatedPost, this.isUpdatingPost = false, this.errorUpdatePost, this.isDeletingPost = false, this.errorDeletePost, this.message}): _posts = posts;
  

 final  List<FeedEntity> _posts;
@override@JsonKey() List<FeedEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override@JsonKey() final  bool hasMore;
@override final  FeedCursorEntity? cursor;
@override@JsonKey() final  bool isLoadingInitial;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool isRefreshing;
@override final  String? errorFeed;
@override final  FeedEntity? singlePost;
@override@JsonKey() final  bool isLoadingSinglePost;
@override final  String? errorSinglePost;
@override final  FeedEntity? updatedPost;
@override@JsonKey() final  bool isUpdatingPost;
@override final  String? errorUpdatePost;
@override@JsonKey() final  bool isDeletingPost;
@override final  String? errorDeletePost;
@override final  String? message;

/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedStateCopyWith<_FeedState> get copyWith => __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedState&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoadingInitial, isLoadingInitial) || other.isLoadingInitial == isLoadingInitial)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.errorFeed, errorFeed) || other.errorFeed == errorFeed)&&(identical(other.singlePost, singlePost) || other.singlePost == singlePost)&&(identical(other.isLoadingSinglePost, isLoadingSinglePost) || other.isLoadingSinglePost == isLoadingSinglePost)&&(identical(other.errorSinglePost, errorSinglePost) || other.errorSinglePost == errorSinglePost)&&(identical(other.updatedPost, updatedPost) || other.updatedPost == updatedPost)&&(identical(other.isUpdatingPost, isUpdatingPost) || other.isUpdatingPost == isUpdatingPost)&&(identical(other.errorUpdatePost, errorUpdatePost) || other.errorUpdatePost == errorUpdatePost)&&(identical(other.isDeletingPost, isDeletingPost) || other.isDeletingPost == isDeletingPost)&&(identical(other.errorDeletePost, errorDeletePost) || other.errorDeletePost == errorDeletePost)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),hasMore,cursor,isLoadingInitial,isLoadingMore,isRefreshing,errorFeed,singlePost,isLoadingSinglePost,errorSinglePost,updatedPost,isUpdatingPost,errorUpdatePost,isDeletingPost,errorDeletePost,message);

@override
String toString() {
  return 'FeedState(posts: $posts, hasMore: $hasMore, cursor: $cursor, isLoadingInitial: $isLoadingInitial, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, errorFeed: $errorFeed, singlePost: $singlePost, isLoadingSinglePost: $isLoadingSinglePost, errorSinglePost: $errorSinglePost, updatedPost: $updatedPost, isUpdatingPost: $isUpdatingPost, errorUpdatePost: $errorUpdatePost, isDeletingPost: $isDeletingPost, errorDeletePost: $errorDeletePost, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(_FeedState value, $Res Function(_FeedState) _then) = __$FeedStateCopyWithImpl;
@override @useResult
$Res call({
 List<FeedEntity> posts, bool hasMore, FeedCursorEntity? cursor, bool isLoadingInitial, bool isLoadingMore, bool isRefreshing, String? errorFeed, FeedEntity? singlePost, bool isLoadingSinglePost, String? errorSinglePost, FeedEntity? updatedPost, bool isUpdatingPost, String? errorUpdatePost, bool isDeletingPost, String? errorDeletePost, String? message
});


@override $FeedEntityCopyWith<$Res>? get singlePost;@override $FeedEntityCopyWith<$Res>? get updatedPost;

}
/// @nodoc
class __$FeedStateCopyWithImpl<$Res>
    implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(this._self, this._then);

  final _FeedState _self;
  final $Res Function(_FeedState) _then;

/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? hasMore = null,Object? cursor = freezed,Object? isLoadingInitial = null,Object? isLoadingMore = null,Object? isRefreshing = null,Object? errorFeed = freezed,Object? singlePost = freezed,Object? isLoadingSinglePost = null,Object? errorSinglePost = freezed,Object? updatedPost = freezed,Object? isUpdatingPost = null,Object? errorUpdatePost = freezed,Object? isDeletingPost = null,Object? errorDeletePost = freezed,Object? message = freezed,}) {
  return _then(_FeedState(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as FeedCursorEntity?,isLoadingInitial: null == isLoadingInitial ? _self.isLoadingInitial : isLoadingInitial // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,errorFeed: freezed == errorFeed ? _self.errorFeed : errorFeed // ignore: cast_nullable_to_non_nullable
as String?,singlePost: freezed == singlePost ? _self.singlePost : singlePost // ignore: cast_nullable_to_non_nullable
as FeedEntity?,isLoadingSinglePost: null == isLoadingSinglePost ? _self.isLoadingSinglePost : isLoadingSinglePost // ignore: cast_nullable_to_non_nullable
as bool,errorSinglePost: freezed == errorSinglePost ? _self.errorSinglePost : errorSinglePost // ignore: cast_nullable_to_non_nullable
as String?,updatedPost: freezed == updatedPost ? _self.updatedPost : updatedPost // ignore: cast_nullable_to_non_nullable
as FeedEntity?,isUpdatingPost: null == isUpdatingPost ? _self.isUpdatingPost : isUpdatingPost // ignore: cast_nullable_to_non_nullable
as bool,errorUpdatePost: freezed == errorUpdatePost ? _self.errorUpdatePost : errorUpdatePost // ignore: cast_nullable_to_non_nullable
as String?,isDeletingPost: null == isDeletingPost ? _self.isDeletingPost : isDeletingPost // ignore: cast_nullable_to_non_nullable
as bool,errorDeletePost: freezed == errorDeletePost ? _self.errorDeletePost : errorDeletePost // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res>? get singlePost {
    if (_self.singlePost == null) {
    return null;
  }

  return $FeedEntityCopyWith<$Res>(_self.singlePost!, (value) {
    return _then(_self.copyWith(singlePost: value));
  });
}/// Create a copy of FeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res>? get updatedPost {
    if (_self.updatedPost == null) {
    return null;
  }

  return $FeedEntityCopyWith<$Res>(_self.updatedPost!, (value) {
    return _then(_self.copyWith(updatedPost: value));
  });
}
}

// dart format on

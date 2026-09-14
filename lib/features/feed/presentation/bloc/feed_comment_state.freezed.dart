// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedCommentState {

 List<CommentEntity> get comments; String? get postId; bool get hasMore; CommentCursorEntity? get cursor; bool get isLoading; bool get isLoadingMore; String? get errorMessage; bool get isAdding; String? get addError; CommentEntity? get addedComment; bool get isDeleting; String? get deleteError; String? get message; bool get isWatching; String? get watchError;
/// Create a copy of FeedCommentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedCommentStateCopyWith<FeedCommentState> get copyWith => _$FeedCommentStateCopyWithImpl<FeedCommentState>(this as FeedCommentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedCommentState&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isAdding, isAdding) || other.isAdding == isAdding)&&(identical(other.addError, addError) || other.addError == addError)&&(identical(other.addedComment, addedComment) || other.addedComment == addedComment)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError)&&(identical(other.message, message) || other.message == message)&&(identical(other.isWatching, isWatching) || other.isWatching == isWatching)&&(identical(other.watchError, watchError) || other.watchError == watchError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comments),postId,hasMore,cursor,isLoading,isLoadingMore,errorMessage,isAdding,addError,addedComment,isDeleting,deleteError,message,isWatching,watchError);

@override
String toString() {
  return 'FeedCommentState(comments: $comments, postId: $postId, hasMore: $hasMore, cursor: $cursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, isAdding: $isAdding, addError: $addError, addedComment: $addedComment, isDeleting: $isDeleting, deleteError: $deleteError, message: $message, isWatching: $isWatching, watchError: $watchError)';
}


}

/// @nodoc
abstract mixin class $FeedCommentStateCopyWith<$Res>  {
  factory $FeedCommentStateCopyWith(FeedCommentState value, $Res Function(FeedCommentState) _then) = _$FeedCommentStateCopyWithImpl;
@useResult
$Res call({
 List<CommentEntity> comments, String? postId, bool hasMore, CommentCursorEntity? cursor, bool isLoading, bool isLoadingMore, String? errorMessage, bool isAdding, String? addError, CommentEntity? addedComment, bool isDeleting, String? deleteError, String? message, bool isWatching, String? watchError
});


$CommentEntityCopyWith<$Res>? get addedComment;

}
/// @nodoc
class _$FeedCommentStateCopyWithImpl<$Res>
    implements $FeedCommentStateCopyWith<$Res> {
  _$FeedCommentStateCopyWithImpl(this._self, this._then);

  final FeedCommentState _self;
  final $Res Function(FeedCommentState) _then;

/// Create a copy of FeedCommentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comments = null,Object? postId = freezed,Object? hasMore = null,Object? cursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? errorMessage = freezed,Object? isAdding = null,Object? addError = freezed,Object? addedComment = freezed,Object? isDeleting = null,Object? deleteError = freezed,Object? message = freezed,Object? isWatching = null,Object? watchError = freezed,}) {
  return _then(_self.copyWith(
comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CommentCursorEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isAdding: null == isAdding ? _self.isAdding : isAdding // ignore: cast_nullable_to_non_nullable
as bool,addError: freezed == addError ? _self.addError : addError // ignore: cast_nullable_to_non_nullable
as String?,addedComment: freezed == addedComment ? _self.addedComment : addedComment // ignore: cast_nullable_to_non_nullable
as CommentEntity?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isWatching: null == isWatching ? _self.isWatching : isWatching // ignore: cast_nullable_to_non_nullable
as bool,watchError: freezed == watchError ? _self.watchError : watchError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FeedCommentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res>? get addedComment {
    if (_self.addedComment == null) {
    return null;
  }

  return $CommentEntityCopyWith<$Res>(_self.addedComment!, (value) {
    return _then(_self.copyWith(addedComment: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedCommentState].
extension FeedCommentStatePatterns on FeedCommentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedCommentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedCommentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedCommentState value)  $default,){
final _that = this;
switch (_that) {
case _FeedCommentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedCommentState value)?  $default,){
final _that = this;
switch (_that) {
case _FeedCommentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommentEntity> comments,  String? postId,  bool hasMore,  CommentCursorEntity? cursor,  bool isLoading,  bool isLoadingMore,  String? errorMessage,  bool isAdding,  String? addError,  CommentEntity? addedComment,  bool isDeleting,  String? deleteError,  String? message,  bool isWatching,  String? watchError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedCommentState() when $default != null:
return $default(_that.comments,_that.postId,_that.hasMore,_that.cursor,_that.isLoading,_that.isLoadingMore,_that.errorMessage,_that.isAdding,_that.addError,_that.addedComment,_that.isDeleting,_that.deleteError,_that.message,_that.isWatching,_that.watchError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommentEntity> comments,  String? postId,  bool hasMore,  CommentCursorEntity? cursor,  bool isLoading,  bool isLoadingMore,  String? errorMessage,  bool isAdding,  String? addError,  CommentEntity? addedComment,  bool isDeleting,  String? deleteError,  String? message,  bool isWatching,  String? watchError)  $default,) {final _that = this;
switch (_that) {
case _FeedCommentState():
return $default(_that.comments,_that.postId,_that.hasMore,_that.cursor,_that.isLoading,_that.isLoadingMore,_that.errorMessage,_that.isAdding,_that.addError,_that.addedComment,_that.isDeleting,_that.deleteError,_that.message,_that.isWatching,_that.watchError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommentEntity> comments,  String? postId,  bool hasMore,  CommentCursorEntity? cursor,  bool isLoading,  bool isLoadingMore,  String? errorMessage,  bool isAdding,  String? addError,  CommentEntity? addedComment,  bool isDeleting,  String? deleteError,  String? message,  bool isWatching,  String? watchError)?  $default,) {final _that = this;
switch (_that) {
case _FeedCommentState() when $default != null:
return $default(_that.comments,_that.postId,_that.hasMore,_that.cursor,_that.isLoading,_that.isLoadingMore,_that.errorMessage,_that.isAdding,_that.addError,_that.addedComment,_that.isDeleting,_that.deleteError,_that.message,_that.isWatching,_that.watchError);case _:
  return null;

}
}

}

/// @nodoc


class _FeedCommentState implements FeedCommentState {
  const _FeedCommentState({final  List<CommentEntity> comments = const <CommentEntity>[], this.postId, this.hasMore = false, this.cursor, this.isLoading = false, this.isLoadingMore = false, this.errorMessage, this.isAdding = false, this.addError, this.addedComment, this.isDeleting = false, this.deleteError, this.message, this.isWatching = false, this.watchError}): _comments = comments;
  

 final  List<CommentEntity> _comments;
@override@JsonKey() List<CommentEntity> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

@override final  String? postId;
@override@JsonKey() final  bool hasMore;
@override final  CommentCursorEntity? cursor;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? errorMessage;
@override@JsonKey() final  bool isAdding;
@override final  String? addError;
@override final  CommentEntity? addedComment;
@override@JsonKey() final  bool isDeleting;
@override final  String? deleteError;
@override final  String? message;
@override@JsonKey() final  bool isWatching;
@override final  String? watchError;

/// Create a copy of FeedCommentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedCommentStateCopyWith<_FeedCommentState> get copyWith => __$FeedCommentStateCopyWithImpl<_FeedCommentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedCommentState&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isAdding, isAdding) || other.isAdding == isAdding)&&(identical(other.addError, addError) || other.addError == addError)&&(identical(other.addedComment, addedComment) || other.addedComment == addedComment)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError)&&(identical(other.message, message) || other.message == message)&&(identical(other.isWatching, isWatching) || other.isWatching == isWatching)&&(identical(other.watchError, watchError) || other.watchError == watchError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comments),postId,hasMore,cursor,isLoading,isLoadingMore,errorMessage,isAdding,addError,addedComment,isDeleting,deleteError,message,isWatching,watchError);

@override
String toString() {
  return 'FeedCommentState(comments: $comments, postId: $postId, hasMore: $hasMore, cursor: $cursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, isAdding: $isAdding, addError: $addError, addedComment: $addedComment, isDeleting: $isDeleting, deleteError: $deleteError, message: $message, isWatching: $isWatching, watchError: $watchError)';
}


}

/// @nodoc
abstract mixin class _$FeedCommentStateCopyWith<$Res> implements $FeedCommentStateCopyWith<$Res> {
  factory _$FeedCommentStateCopyWith(_FeedCommentState value, $Res Function(_FeedCommentState) _then) = __$FeedCommentStateCopyWithImpl;
@override @useResult
$Res call({
 List<CommentEntity> comments, String? postId, bool hasMore, CommentCursorEntity? cursor, bool isLoading, bool isLoadingMore, String? errorMessage, bool isAdding, String? addError, CommentEntity? addedComment, bool isDeleting, String? deleteError, String? message, bool isWatching, String? watchError
});


@override $CommentEntityCopyWith<$Res>? get addedComment;

}
/// @nodoc
class __$FeedCommentStateCopyWithImpl<$Res>
    implements _$FeedCommentStateCopyWith<$Res> {
  __$FeedCommentStateCopyWithImpl(this._self, this._then);

  final _FeedCommentState _self;
  final $Res Function(_FeedCommentState) _then;

/// Create a copy of FeedCommentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comments = null,Object? postId = freezed,Object? hasMore = null,Object? cursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? errorMessage = freezed,Object? isAdding = null,Object? addError = freezed,Object? addedComment = freezed,Object? isDeleting = null,Object? deleteError = freezed,Object? message = freezed,Object? isWatching = null,Object? watchError = freezed,}) {
  return _then(_FeedCommentState(
comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CommentCursorEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isAdding: null == isAdding ? _self.isAdding : isAdding // ignore: cast_nullable_to_non_nullable
as bool,addError: freezed == addError ? _self.addError : addError // ignore: cast_nullable_to_non_nullable
as String?,addedComment: freezed == addedComment ? _self.addedComment : addedComment // ignore: cast_nullable_to_non_nullable
as CommentEntity?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isWatching: null == isWatching ? _self.isWatching : isWatching // ignore: cast_nullable_to_non_nullable
as bool,watchError: freezed == watchError ? _self.watchError : watchError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FeedCommentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res>? get addedComment {
    if (_self.addedComment == null) {
    return null;
  }

  return $CommentEntityCopyWith<$Res>(_self.addedComment!, (value) {
    return _then(_self.copyWith(addedComment: value));
  });
}
}

// dart format on

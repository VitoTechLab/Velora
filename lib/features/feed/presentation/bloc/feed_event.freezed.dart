// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedEvent()';
}


}

/// @nodoc
class $FeedEventCopyWith<$Res>  {
$FeedEventCopyWith(FeedEvent _, $Res Function(FeedEvent) __);
}


/// Adds pattern-matching-related methods to [FeedEvent].
extension FeedEventPatterns on FeedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadInitialFeedEvent value)?  loadInitialFeed,TResult Function( LoadMoreFeedEvent value)?  loadMoreFeed,TResult Function( GetPostByIdEvent value)?  getPostById,TResult Function( UpdatePostEvent value)?  updatePostEntity,TResult Function( DeletePostEvent value)?  deletePost,TResult Function( RefreshFeedEvent value)?  refreshFeed,TResult Function( ToggleLikePostEvent value)?  toggleLikePost,TResult Function( ToggleBookmarkPostEvent value)?  toggleBookmarkPost,TResult Function( AddNewPostEvent value)?  addNewPost,TResult Function( LoadCommentsEvent value)?  loadComments,TResult Function( AddCommentEvent value)?  addComment,TResult Function( DeleteCommentEvent value)?  deleteComment,TResult Function( ToggleLikeCommentEvent value)?  toggleLikeComment,TResult Function( ClearTransientEvent value)?  clearTransient,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadInitialFeedEvent() when loadInitialFeed != null:
return loadInitialFeed(_that);case LoadMoreFeedEvent() when loadMoreFeed != null:
return loadMoreFeed(_that);case GetPostByIdEvent() when getPostById != null:
return getPostById(_that);case UpdatePostEvent() when updatePostEntity != null:
return updatePostEntity(_that);case DeletePostEvent() when deletePost != null:
return deletePost(_that);case RefreshFeedEvent() when refreshFeed != null:
return refreshFeed(_that);case ToggleLikePostEvent() when toggleLikePost != null:
return toggleLikePost(_that);case ToggleBookmarkPostEvent() when toggleBookmarkPost != null:
return toggleBookmarkPost(_that);case AddNewPostEvent() when addNewPost != null:
return addNewPost(_that);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that);case AddCommentEvent() when addComment != null:
return addComment(_that);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that);case ToggleLikeCommentEvent() when toggleLikeComment != null:
return toggleLikeComment(_that);case ClearTransientEvent() when clearTransient != null:
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadInitialFeedEvent value)  loadInitialFeed,required TResult Function( LoadMoreFeedEvent value)  loadMoreFeed,required TResult Function( GetPostByIdEvent value)  getPostById,required TResult Function( UpdatePostEvent value)  updatePostEntity,required TResult Function( DeletePostEvent value)  deletePost,required TResult Function( RefreshFeedEvent value)  refreshFeed,required TResult Function( ToggleLikePostEvent value)  toggleLikePost,required TResult Function( ToggleBookmarkPostEvent value)  toggleBookmarkPost,required TResult Function( AddNewPostEvent value)  addNewPost,required TResult Function( LoadCommentsEvent value)  loadComments,required TResult Function( AddCommentEvent value)  addComment,required TResult Function( DeleteCommentEvent value)  deleteComment,required TResult Function( ToggleLikeCommentEvent value)  toggleLikeComment,required TResult Function( ClearTransientEvent value)  clearTransient,}){
final _that = this;
switch (_that) {
case LoadInitialFeedEvent():
return loadInitialFeed(_that);case LoadMoreFeedEvent():
return loadMoreFeed(_that);case GetPostByIdEvent():
return getPostById(_that);case UpdatePostEvent():
return updatePostEntity(_that);case DeletePostEvent():
return deletePost(_that);case RefreshFeedEvent():
return refreshFeed(_that);case ToggleLikePostEvent():
return toggleLikePost(_that);case ToggleBookmarkPostEvent():
return toggleBookmarkPost(_that);case AddNewPostEvent():
return addNewPost(_that);case LoadCommentsEvent():
return loadComments(_that);case AddCommentEvent():
return addComment(_that);case DeleteCommentEvent():
return deleteComment(_that);case ToggleLikeCommentEvent():
return toggleLikeComment(_that);case ClearTransientEvent():
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadInitialFeedEvent value)?  loadInitialFeed,TResult? Function( LoadMoreFeedEvent value)?  loadMoreFeed,TResult? Function( GetPostByIdEvent value)?  getPostById,TResult? Function( UpdatePostEvent value)?  updatePostEntity,TResult? Function( DeletePostEvent value)?  deletePost,TResult? Function( RefreshFeedEvent value)?  refreshFeed,TResult? Function( ToggleLikePostEvent value)?  toggleLikePost,TResult? Function( ToggleBookmarkPostEvent value)?  toggleBookmarkPost,TResult? Function( AddNewPostEvent value)?  addNewPost,TResult? Function( LoadCommentsEvent value)?  loadComments,TResult? Function( AddCommentEvent value)?  addComment,TResult? Function( DeleteCommentEvent value)?  deleteComment,TResult? Function( ToggleLikeCommentEvent value)?  toggleLikeComment,TResult? Function( ClearTransientEvent value)?  clearTransient,}){
final _that = this;
switch (_that) {
case LoadInitialFeedEvent() when loadInitialFeed != null:
return loadInitialFeed(_that);case LoadMoreFeedEvent() when loadMoreFeed != null:
return loadMoreFeed(_that);case GetPostByIdEvent() when getPostById != null:
return getPostById(_that);case UpdatePostEvent() when updatePostEntity != null:
return updatePostEntity(_that);case DeletePostEvent() when deletePost != null:
return deletePost(_that);case RefreshFeedEvent() when refreshFeed != null:
return refreshFeed(_that);case ToggleLikePostEvent() when toggleLikePost != null:
return toggleLikePost(_that);case ToggleBookmarkPostEvent() when toggleBookmarkPost != null:
return toggleBookmarkPost(_that);case AddNewPostEvent() when addNewPost != null:
return addNewPost(_that);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that);case AddCommentEvent() when addComment != null:
return addComment(_that);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that);case ToggleLikeCommentEvent() when toggleLikeComment != null:
return toggleLikeComment(_that);case ClearTransientEvent() when clearTransient != null:
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int limit,  String? userId)?  loadInitialFeed,TResult Function( int limit,  String? userId)?  loadMoreFeed,TResult Function( String postId)?  getPostById,TResult Function( FeedEntity post)?  updatePostEntity,TResult Function( String postId)?  deletePost,TResult Function()?  refreshFeed,TResult Function( String postId)?  toggleLikePost,TResult Function( String postId)?  toggleBookmarkPost,TResult Function( FeedEntity post)?  addNewPost,TResult Function( String postId,  int? limit)?  loadComments,TResult Function( String postId,  String content,  String? parentCommentId)?  addComment,TResult Function( String commentId)?  deleteComment,TResult Function( String commentId)?  toggleLikeComment,TResult Function()?  clearTransient,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadInitialFeedEvent() when loadInitialFeed != null:
return loadInitialFeed(_that.limit,_that.userId);case LoadMoreFeedEvent() when loadMoreFeed != null:
return loadMoreFeed(_that.limit,_that.userId);case GetPostByIdEvent() when getPostById != null:
return getPostById(_that.postId);case UpdatePostEvent() when updatePostEntity != null:
return updatePostEntity(_that.post);case DeletePostEvent() when deletePost != null:
return deletePost(_that.postId);case RefreshFeedEvent() when refreshFeed != null:
return refreshFeed();case ToggleLikePostEvent() when toggleLikePost != null:
return toggleLikePost(_that.postId);case ToggleBookmarkPostEvent() when toggleBookmarkPost != null:
return toggleBookmarkPost(_that.postId);case AddNewPostEvent() when addNewPost != null:
return addNewPost(_that.post);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that.postId,_that.limit);case AddCommentEvent() when addComment != null:
return addComment(_that.postId,_that.content,_that.parentCommentId);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that.commentId);case ToggleLikeCommentEvent() when toggleLikeComment != null:
return toggleLikeComment(_that.commentId);case ClearTransientEvent() when clearTransient != null:
return clearTransient();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int limit,  String? userId)  loadInitialFeed,required TResult Function( int limit,  String? userId)  loadMoreFeed,required TResult Function( String postId)  getPostById,required TResult Function( FeedEntity post)  updatePostEntity,required TResult Function( String postId)  deletePost,required TResult Function()  refreshFeed,required TResult Function( String postId)  toggleLikePost,required TResult Function( String postId)  toggleBookmarkPost,required TResult Function( FeedEntity post)  addNewPost,required TResult Function( String postId,  int? limit)  loadComments,required TResult Function( String postId,  String content,  String? parentCommentId)  addComment,required TResult Function( String commentId)  deleteComment,required TResult Function( String commentId)  toggleLikeComment,required TResult Function()  clearTransient,}) {final _that = this;
switch (_that) {
case LoadInitialFeedEvent():
return loadInitialFeed(_that.limit,_that.userId);case LoadMoreFeedEvent():
return loadMoreFeed(_that.limit,_that.userId);case GetPostByIdEvent():
return getPostById(_that.postId);case UpdatePostEvent():
return updatePostEntity(_that.post);case DeletePostEvent():
return deletePost(_that.postId);case RefreshFeedEvent():
return refreshFeed();case ToggleLikePostEvent():
return toggleLikePost(_that.postId);case ToggleBookmarkPostEvent():
return toggleBookmarkPost(_that.postId);case AddNewPostEvent():
return addNewPost(_that.post);case LoadCommentsEvent():
return loadComments(_that.postId,_that.limit);case AddCommentEvent():
return addComment(_that.postId,_that.content,_that.parentCommentId);case DeleteCommentEvent():
return deleteComment(_that.commentId);case ToggleLikeCommentEvent():
return toggleLikeComment(_that.commentId);case ClearTransientEvent():
return clearTransient();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int limit,  String? userId)?  loadInitialFeed,TResult? Function( int limit,  String? userId)?  loadMoreFeed,TResult? Function( String postId)?  getPostById,TResult? Function( FeedEntity post)?  updatePostEntity,TResult? Function( String postId)?  deletePost,TResult? Function()?  refreshFeed,TResult? Function( String postId)?  toggleLikePost,TResult? Function( String postId)?  toggleBookmarkPost,TResult? Function( FeedEntity post)?  addNewPost,TResult? Function( String postId,  int? limit)?  loadComments,TResult? Function( String postId,  String content,  String? parentCommentId)?  addComment,TResult? Function( String commentId)?  deleteComment,TResult? Function( String commentId)?  toggleLikeComment,TResult? Function()?  clearTransient,}) {final _that = this;
switch (_that) {
case LoadInitialFeedEvent() when loadInitialFeed != null:
return loadInitialFeed(_that.limit,_that.userId);case LoadMoreFeedEvent() when loadMoreFeed != null:
return loadMoreFeed(_that.limit,_that.userId);case GetPostByIdEvent() when getPostById != null:
return getPostById(_that.postId);case UpdatePostEvent() when updatePostEntity != null:
return updatePostEntity(_that.post);case DeletePostEvent() when deletePost != null:
return deletePost(_that.postId);case RefreshFeedEvent() when refreshFeed != null:
return refreshFeed();case ToggleLikePostEvent() when toggleLikePost != null:
return toggleLikePost(_that.postId);case ToggleBookmarkPostEvent() when toggleBookmarkPost != null:
return toggleBookmarkPost(_that.postId);case AddNewPostEvent() when addNewPost != null:
return addNewPost(_that.post);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that.postId,_that.limit);case AddCommentEvent() when addComment != null:
return addComment(_that.postId,_that.content,_that.parentCommentId);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that.commentId);case ToggleLikeCommentEvent() when toggleLikeComment != null:
return toggleLikeComment(_that.commentId);case ClearTransientEvent() when clearTransient != null:
return clearTransient();case _:
  return null;

}
}

}

/// @nodoc


class LoadInitialFeedEvent implements FeedEvent {
  const LoadInitialFeedEvent({this.limit = 20, this.userId});
  

@JsonKey() final  int limit;
 final  String? userId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadInitialFeedEventCopyWith<LoadInitialFeedEvent> get copyWith => _$LoadInitialFeedEventCopyWithImpl<LoadInitialFeedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadInitialFeedEvent&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,limit,userId);

@override
String toString() {
  return 'FeedEvent.loadInitialFeed(limit: $limit, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadInitialFeedEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $LoadInitialFeedEventCopyWith(LoadInitialFeedEvent value, $Res Function(LoadInitialFeedEvent) _then) = _$LoadInitialFeedEventCopyWithImpl;
@useResult
$Res call({
 int limit, String? userId
});




}
/// @nodoc
class _$LoadInitialFeedEventCopyWithImpl<$Res>
    implements $LoadInitialFeedEventCopyWith<$Res> {
  _$LoadInitialFeedEventCopyWithImpl(this._self, this._then);

  final LoadInitialFeedEvent _self;
  final $Res Function(LoadInitialFeedEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? limit = null,Object? userId = freezed,}) {
  return _then(LoadInitialFeedEvent(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class LoadMoreFeedEvent implements FeedEvent {
  const LoadMoreFeedEvent({this.limit = 20, this.userId});
  

@JsonKey() final  int limit;
 final  String? userId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreFeedEventCopyWith<LoadMoreFeedEvent> get copyWith => _$LoadMoreFeedEventCopyWithImpl<LoadMoreFeedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreFeedEvent&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,limit,userId);

@override
String toString() {
  return 'FeedEvent.loadMoreFeed(limit: $limit, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadMoreFeedEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $LoadMoreFeedEventCopyWith(LoadMoreFeedEvent value, $Res Function(LoadMoreFeedEvent) _then) = _$LoadMoreFeedEventCopyWithImpl;
@useResult
$Res call({
 int limit, String? userId
});




}
/// @nodoc
class _$LoadMoreFeedEventCopyWithImpl<$Res>
    implements $LoadMoreFeedEventCopyWith<$Res> {
  _$LoadMoreFeedEventCopyWithImpl(this._self, this._then);

  final LoadMoreFeedEvent _self;
  final $Res Function(LoadMoreFeedEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? limit = null,Object? userId = freezed,}) {
  return _then(LoadMoreFeedEvent(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GetPostByIdEvent implements FeedEvent {
  const GetPostByIdEvent({required this.postId});
  

 final  String postId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPostByIdEventCopyWith<GetPostByIdEvent> get copyWith => _$GetPostByIdEventCopyWithImpl<GetPostByIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPostByIdEvent&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'FeedEvent.getPostById(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $GetPostByIdEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $GetPostByIdEventCopyWith(GetPostByIdEvent value, $Res Function(GetPostByIdEvent) _then) = _$GetPostByIdEventCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$GetPostByIdEventCopyWithImpl<$Res>
    implements $GetPostByIdEventCopyWith<$Res> {
  _$GetPostByIdEventCopyWithImpl(this._self, this._then);

  final GetPostByIdEvent _self;
  final $Res Function(GetPostByIdEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(GetPostByIdEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdatePostEvent implements FeedEvent {
  const UpdatePostEvent({required this.post});
  

 final  FeedEntity post;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePostEventCopyWith<UpdatePostEvent> get copyWith => _$UpdatePostEventCopyWithImpl<UpdatePostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePostEvent&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'FeedEvent.updatePostEntity(post: $post)';
}


}

/// @nodoc
abstract mixin class $UpdatePostEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $UpdatePostEventCopyWith(UpdatePostEvent value, $Res Function(UpdatePostEvent) _then) = _$UpdatePostEventCopyWithImpl;
@useResult
$Res call({
 FeedEntity post
});


$FeedEntityCopyWith<$Res> get post;

}
/// @nodoc
class _$UpdatePostEventCopyWithImpl<$Res>
    implements $UpdatePostEventCopyWith<$Res> {
  _$UpdatePostEventCopyWithImpl(this._self, this._then);

  final UpdatePostEvent _self;
  final $Res Function(UpdatePostEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(UpdatePostEvent(
post: null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as FeedEntity,
  ));
}

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res> get post {
  
  return $FeedEntityCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc


class DeletePostEvent implements FeedEvent {
  const DeletePostEvent({required this.postId});
  

 final  String postId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletePostEventCopyWith<DeletePostEvent> get copyWith => _$DeletePostEventCopyWithImpl<DeletePostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePostEvent&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'FeedEvent.deletePost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $DeletePostEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $DeletePostEventCopyWith(DeletePostEvent value, $Res Function(DeletePostEvent) _then) = _$DeletePostEventCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$DeletePostEventCopyWithImpl<$Res>
    implements $DeletePostEventCopyWith<$Res> {
  _$DeletePostEventCopyWithImpl(this._self, this._then);

  final DeletePostEvent _self;
  final $Res Function(DeletePostEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(DeletePostEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RefreshFeedEvent implements FeedEvent {
  const RefreshFeedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshFeedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedEvent.refreshFeed()';
}


}




/// @nodoc


class ToggleLikePostEvent implements FeedEvent {
  const ToggleLikePostEvent(this.postId);
  

 final  String postId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleLikePostEventCopyWith<ToggleLikePostEvent> get copyWith => _$ToggleLikePostEventCopyWithImpl<ToggleLikePostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleLikePostEvent&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'FeedEvent.toggleLikePost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $ToggleLikePostEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $ToggleLikePostEventCopyWith(ToggleLikePostEvent value, $Res Function(ToggleLikePostEvent) _then) = _$ToggleLikePostEventCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$ToggleLikePostEventCopyWithImpl<$Res>
    implements $ToggleLikePostEventCopyWith<$Res> {
  _$ToggleLikePostEventCopyWithImpl(this._self, this._then);

  final ToggleLikePostEvent _self;
  final $Res Function(ToggleLikePostEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(ToggleLikePostEvent(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleBookmarkPostEvent implements FeedEvent {
  const ToggleBookmarkPostEvent(this.postId);
  

 final  String postId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleBookmarkPostEventCopyWith<ToggleBookmarkPostEvent> get copyWith => _$ToggleBookmarkPostEventCopyWithImpl<ToggleBookmarkPostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleBookmarkPostEvent&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'FeedEvent.toggleBookmarkPost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $ToggleBookmarkPostEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $ToggleBookmarkPostEventCopyWith(ToggleBookmarkPostEvent value, $Res Function(ToggleBookmarkPostEvent) _then) = _$ToggleBookmarkPostEventCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$ToggleBookmarkPostEventCopyWithImpl<$Res>
    implements $ToggleBookmarkPostEventCopyWith<$Res> {
  _$ToggleBookmarkPostEventCopyWithImpl(this._self, this._then);

  final ToggleBookmarkPostEvent _self;
  final $Res Function(ToggleBookmarkPostEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(ToggleBookmarkPostEvent(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddNewPostEvent implements FeedEvent {
  const AddNewPostEvent(this.post);
  

 final  FeedEntity post;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNewPostEventCopyWith<AddNewPostEvent> get copyWith => _$AddNewPostEventCopyWithImpl<AddNewPostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewPostEvent&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'FeedEvent.addNewPost(post: $post)';
}


}

/// @nodoc
abstract mixin class $AddNewPostEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $AddNewPostEventCopyWith(AddNewPostEvent value, $Res Function(AddNewPostEvent) _then) = _$AddNewPostEventCopyWithImpl;
@useResult
$Res call({
 FeedEntity post
});


$FeedEntityCopyWith<$Res> get post;

}
/// @nodoc
class _$AddNewPostEventCopyWithImpl<$Res>
    implements $AddNewPostEventCopyWith<$Res> {
  _$AddNewPostEventCopyWithImpl(this._self, this._then);

  final AddNewPostEvent _self;
  final $Res Function(AddNewPostEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(AddNewPostEvent(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as FeedEntity,
  ));
}

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res> get post {
  
  return $FeedEntityCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc


class LoadCommentsEvent implements FeedEvent {
  const LoadCommentsEvent({required this.postId, this.limit});
  

 final  String postId;
 final  int? limit;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCommentsEventCopyWith<LoadCommentsEvent> get copyWith => _$LoadCommentsEventCopyWithImpl<LoadCommentsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCommentsEvent&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,postId,limit);

@override
String toString() {
  return 'FeedEvent.loadComments(postId: $postId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadCommentsEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $LoadCommentsEventCopyWith(LoadCommentsEvent value, $Res Function(LoadCommentsEvent) _then) = _$LoadCommentsEventCopyWithImpl;
@useResult
$Res call({
 String postId, int? limit
});




}
/// @nodoc
class _$LoadCommentsEventCopyWithImpl<$Res>
    implements $LoadCommentsEventCopyWith<$Res> {
  _$LoadCommentsEventCopyWithImpl(this._self, this._then);

  final LoadCommentsEvent _self;
  final $Res Function(LoadCommentsEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? limit = freezed,}) {
  return _then(LoadCommentsEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class AddCommentEvent implements FeedEvent {
  const AddCommentEvent({required this.postId, required this.content, this.parentCommentId});
  

 final  String postId;
 final  String content;
 final  String? parentCommentId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCommentEventCopyWith<AddCommentEvent> get copyWith => _$AddCommentEventCopyWithImpl<AddCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCommentEvent&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.content, content) || other.content == content)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId));
}


@override
int get hashCode => Object.hash(runtimeType,postId,content,parentCommentId);

@override
String toString() {
  return 'FeedEvent.addComment(postId: $postId, content: $content, parentCommentId: $parentCommentId)';
}


}

/// @nodoc
abstract mixin class $AddCommentEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $AddCommentEventCopyWith(AddCommentEvent value, $Res Function(AddCommentEvent) _then) = _$AddCommentEventCopyWithImpl;
@useResult
$Res call({
 String postId, String content, String? parentCommentId
});




}
/// @nodoc
class _$AddCommentEventCopyWithImpl<$Res>
    implements $AddCommentEventCopyWith<$Res> {
  _$AddCommentEventCopyWithImpl(this._self, this._then);

  final AddCommentEvent _self;
  final $Res Function(AddCommentEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? content = null,Object? parentCommentId = freezed,}) {
  return _then(AddCommentEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DeleteCommentEvent implements FeedEvent {
  const DeleteCommentEvent(this.commentId);
  

 final  String commentId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCommentEventCopyWith<DeleteCommentEvent> get copyWith => _$DeleteCommentEventCopyWithImpl<DeleteCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCommentEvent&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,commentId);

@override
String toString() {
  return 'FeedEvent.deleteComment(commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class $DeleteCommentEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $DeleteCommentEventCopyWith(DeleteCommentEvent value, $Res Function(DeleteCommentEvent) _then) = _$DeleteCommentEventCopyWithImpl;
@useResult
$Res call({
 String commentId
});




}
/// @nodoc
class _$DeleteCommentEventCopyWithImpl<$Res>
    implements $DeleteCommentEventCopyWith<$Res> {
  _$DeleteCommentEventCopyWithImpl(this._self, this._then);

  final DeleteCommentEvent _self;
  final $Res Function(DeleteCommentEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,}) {
  return _then(DeleteCommentEvent(
null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleLikeCommentEvent implements FeedEvent {
  const ToggleLikeCommentEvent(this.commentId);
  

 final  String commentId;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleLikeCommentEventCopyWith<ToggleLikeCommentEvent> get copyWith => _$ToggleLikeCommentEventCopyWithImpl<ToggleLikeCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleLikeCommentEvent&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,commentId);

@override
String toString() {
  return 'FeedEvent.toggleLikeComment(commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class $ToggleLikeCommentEventCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $ToggleLikeCommentEventCopyWith(ToggleLikeCommentEvent value, $Res Function(ToggleLikeCommentEvent) _then) = _$ToggleLikeCommentEventCopyWithImpl;
@useResult
$Res call({
 String commentId
});




}
/// @nodoc
class _$ToggleLikeCommentEventCopyWithImpl<$Res>
    implements $ToggleLikeCommentEventCopyWith<$Res> {
  _$ToggleLikeCommentEventCopyWithImpl(this._self, this._then);

  final ToggleLikeCommentEvent _self;
  final $Res Function(ToggleLikeCommentEvent) _then;

/// Create a copy of FeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,}) {
  return _then(ToggleLikeCommentEvent(
null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearTransientEvent implements FeedEvent {
  const ClearTransientEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearTransientEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedEvent.clearTransient()';
}


}




// dart format on

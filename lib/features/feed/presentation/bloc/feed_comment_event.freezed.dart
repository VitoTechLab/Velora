// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedCommentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedCommentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedCommentEvent()';
}


}

/// @nodoc
class $FeedCommentEventCopyWith<$Res>  {
$FeedCommentEventCopyWith(FeedCommentEvent _, $Res Function(FeedCommentEvent) __);
}


/// Adds pattern-matching-related methods to [FeedCommentEvent].
extension FeedCommentEventPatterns on FeedCommentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadFeedCommentsEvent value)?  loadFeedComments,TResult Function( LoadMoreFeedCommentsEvent value)?  loadMoreFeedComments,TResult Function( LoadRepliesEvent value)?  loadReplies,TResult Function( AddFeedCommentEvent value)?  addFeedComment,TResult Function( DeleteFeedCommentEvent value)?  deleteFeedComment,TResult Function( ToggleFeedCommentLikeEvent value)?  toggleFeedCommentLike,TResult Function( ClearFeedCommentMessagesEvent value)?  clearFeedCommentMessages,TResult Function( StartWatchCommentsEvent value)?  startWatchComments,TResult Function( StopWatchCommentsEvent value)?  stopWatchComments,TResult Function( WatchCommentArrivedEvent value)?  watchCommentArrived,TResult Function( WatchErrorEvent value)?  watchError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadFeedCommentsEvent() when loadFeedComments != null:
return loadFeedComments(_that);case LoadMoreFeedCommentsEvent() when loadMoreFeedComments != null:
return loadMoreFeedComments(_that);case LoadRepliesEvent() when loadReplies != null:
return loadReplies(_that);case AddFeedCommentEvent() when addFeedComment != null:
return addFeedComment(_that);case DeleteFeedCommentEvent() when deleteFeedComment != null:
return deleteFeedComment(_that);case ToggleFeedCommentLikeEvent() when toggleFeedCommentLike != null:
return toggleFeedCommentLike(_that);case ClearFeedCommentMessagesEvent() when clearFeedCommentMessages != null:
return clearFeedCommentMessages(_that);case StartWatchCommentsEvent() when startWatchComments != null:
return startWatchComments(_that);case StopWatchCommentsEvent() when stopWatchComments != null:
return stopWatchComments(_that);case WatchCommentArrivedEvent() when watchCommentArrived != null:
return watchCommentArrived(_that);case WatchErrorEvent() when watchError != null:
return watchError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadFeedCommentsEvent value)  loadFeedComments,required TResult Function( LoadMoreFeedCommentsEvent value)  loadMoreFeedComments,required TResult Function( LoadRepliesEvent value)  loadReplies,required TResult Function( AddFeedCommentEvent value)  addFeedComment,required TResult Function( DeleteFeedCommentEvent value)  deleteFeedComment,required TResult Function( ToggleFeedCommentLikeEvent value)  toggleFeedCommentLike,required TResult Function( ClearFeedCommentMessagesEvent value)  clearFeedCommentMessages,required TResult Function( StartWatchCommentsEvent value)  startWatchComments,required TResult Function( StopWatchCommentsEvent value)  stopWatchComments,required TResult Function( WatchCommentArrivedEvent value)  watchCommentArrived,required TResult Function( WatchErrorEvent value)  watchError,}){
final _that = this;
switch (_that) {
case LoadFeedCommentsEvent():
return loadFeedComments(_that);case LoadMoreFeedCommentsEvent():
return loadMoreFeedComments(_that);case LoadRepliesEvent():
return loadReplies(_that);case AddFeedCommentEvent():
return addFeedComment(_that);case DeleteFeedCommentEvent():
return deleteFeedComment(_that);case ToggleFeedCommentLikeEvent():
return toggleFeedCommentLike(_that);case ClearFeedCommentMessagesEvent():
return clearFeedCommentMessages(_that);case StartWatchCommentsEvent():
return startWatchComments(_that);case StopWatchCommentsEvent():
return stopWatchComments(_that);case WatchCommentArrivedEvent():
return watchCommentArrived(_that);case WatchErrorEvent():
return watchError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadFeedCommentsEvent value)?  loadFeedComments,TResult? Function( LoadMoreFeedCommentsEvent value)?  loadMoreFeedComments,TResult? Function( LoadRepliesEvent value)?  loadReplies,TResult? Function( AddFeedCommentEvent value)?  addFeedComment,TResult? Function( DeleteFeedCommentEvent value)?  deleteFeedComment,TResult? Function( ToggleFeedCommentLikeEvent value)?  toggleFeedCommentLike,TResult? Function( ClearFeedCommentMessagesEvent value)?  clearFeedCommentMessages,TResult? Function( StartWatchCommentsEvent value)?  startWatchComments,TResult? Function( StopWatchCommentsEvent value)?  stopWatchComments,TResult? Function( WatchCommentArrivedEvent value)?  watchCommentArrived,TResult? Function( WatchErrorEvent value)?  watchError,}){
final _that = this;
switch (_that) {
case LoadFeedCommentsEvent() when loadFeedComments != null:
return loadFeedComments(_that);case LoadMoreFeedCommentsEvent() when loadMoreFeedComments != null:
return loadMoreFeedComments(_that);case LoadRepliesEvent() when loadReplies != null:
return loadReplies(_that);case AddFeedCommentEvent() when addFeedComment != null:
return addFeedComment(_that);case DeleteFeedCommentEvent() when deleteFeedComment != null:
return deleteFeedComment(_that);case ToggleFeedCommentLikeEvent() when toggleFeedCommentLike != null:
return toggleFeedCommentLike(_that);case ClearFeedCommentMessagesEvent() when clearFeedCommentMessages != null:
return clearFeedCommentMessages(_that);case StartWatchCommentsEvent() when startWatchComments != null:
return startWatchComments(_that);case StopWatchCommentsEvent() when stopWatchComments != null:
return stopWatchComments(_that);case WatchCommentArrivedEvent() when watchCommentArrived != null:
return watchCommentArrived(_that);case WatchErrorEvent() when watchError != null:
return watchError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String postId,  int? limit)?  loadFeedComments,TResult Function( String postId,  int limit)?  loadMoreFeedComments,TResult Function( String parentCommentId)?  loadReplies,TResult Function( String postId,  String content,  String? parentCommentId)?  addFeedComment,TResult Function( String commentId)?  deleteFeedComment,TResult Function( String commentId)?  toggleFeedCommentLike,TResult Function()?  clearFeedCommentMessages,TResult Function( String postId)?  startWatchComments,TResult Function()?  stopWatchComments,TResult Function( CommentEntity comment)?  watchCommentArrived,TResult Function( String message)?  watchError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadFeedCommentsEvent() when loadFeedComments != null:
return loadFeedComments(_that.postId,_that.limit);case LoadMoreFeedCommentsEvent() when loadMoreFeedComments != null:
return loadMoreFeedComments(_that.postId,_that.limit);case LoadRepliesEvent() when loadReplies != null:
return loadReplies(_that.parentCommentId);case AddFeedCommentEvent() when addFeedComment != null:
return addFeedComment(_that.postId,_that.content,_that.parentCommentId);case DeleteFeedCommentEvent() when deleteFeedComment != null:
return deleteFeedComment(_that.commentId);case ToggleFeedCommentLikeEvent() when toggleFeedCommentLike != null:
return toggleFeedCommentLike(_that.commentId);case ClearFeedCommentMessagesEvent() when clearFeedCommentMessages != null:
return clearFeedCommentMessages();case StartWatchCommentsEvent() when startWatchComments != null:
return startWatchComments(_that.postId);case StopWatchCommentsEvent() when stopWatchComments != null:
return stopWatchComments();case WatchCommentArrivedEvent() when watchCommentArrived != null:
return watchCommentArrived(_that.comment);case WatchErrorEvent() when watchError != null:
return watchError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String postId,  int? limit)  loadFeedComments,required TResult Function( String postId,  int limit)  loadMoreFeedComments,required TResult Function( String parentCommentId)  loadReplies,required TResult Function( String postId,  String content,  String? parentCommentId)  addFeedComment,required TResult Function( String commentId)  deleteFeedComment,required TResult Function( String commentId)  toggleFeedCommentLike,required TResult Function()  clearFeedCommentMessages,required TResult Function( String postId)  startWatchComments,required TResult Function()  stopWatchComments,required TResult Function( CommentEntity comment)  watchCommentArrived,required TResult Function( String message)  watchError,}) {final _that = this;
switch (_that) {
case LoadFeedCommentsEvent():
return loadFeedComments(_that.postId,_that.limit);case LoadMoreFeedCommentsEvent():
return loadMoreFeedComments(_that.postId,_that.limit);case LoadRepliesEvent():
return loadReplies(_that.parentCommentId);case AddFeedCommentEvent():
return addFeedComment(_that.postId,_that.content,_that.parentCommentId);case DeleteFeedCommentEvent():
return deleteFeedComment(_that.commentId);case ToggleFeedCommentLikeEvent():
return toggleFeedCommentLike(_that.commentId);case ClearFeedCommentMessagesEvent():
return clearFeedCommentMessages();case StartWatchCommentsEvent():
return startWatchComments(_that.postId);case StopWatchCommentsEvent():
return stopWatchComments();case WatchCommentArrivedEvent():
return watchCommentArrived(_that.comment);case WatchErrorEvent():
return watchError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String postId,  int? limit)?  loadFeedComments,TResult? Function( String postId,  int limit)?  loadMoreFeedComments,TResult? Function( String parentCommentId)?  loadReplies,TResult? Function( String postId,  String content,  String? parentCommentId)?  addFeedComment,TResult? Function( String commentId)?  deleteFeedComment,TResult? Function( String commentId)?  toggleFeedCommentLike,TResult? Function()?  clearFeedCommentMessages,TResult? Function( String postId)?  startWatchComments,TResult? Function()?  stopWatchComments,TResult? Function( CommentEntity comment)?  watchCommentArrived,TResult? Function( String message)?  watchError,}) {final _that = this;
switch (_that) {
case LoadFeedCommentsEvent() when loadFeedComments != null:
return loadFeedComments(_that.postId,_that.limit);case LoadMoreFeedCommentsEvent() when loadMoreFeedComments != null:
return loadMoreFeedComments(_that.postId,_that.limit);case LoadRepliesEvent() when loadReplies != null:
return loadReplies(_that.parentCommentId);case AddFeedCommentEvent() when addFeedComment != null:
return addFeedComment(_that.postId,_that.content,_that.parentCommentId);case DeleteFeedCommentEvent() when deleteFeedComment != null:
return deleteFeedComment(_that.commentId);case ToggleFeedCommentLikeEvent() when toggleFeedCommentLike != null:
return toggleFeedCommentLike(_that.commentId);case ClearFeedCommentMessagesEvent() when clearFeedCommentMessages != null:
return clearFeedCommentMessages();case StartWatchCommentsEvent() when startWatchComments != null:
return startWatchComments(_that.postId);case StopWatchCommentsEvent() when stopWatchComments != null:
return stopWatchComments();case WatchCommentArrivedEvent() when watchCommentArrived != null:
return watchCommentArrived(_that.comment);case WatchErrorEvent() when watchError != null:
return watchError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class LoadFeedCommentsEvent implements FeedCommentEvent {
  const LoadFeedCommentsEvent({required this.postId, this.limit});
  

 final  String postId;
 final  int? limit;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadFeedCommentsEventCopyWith<LoadFeedCommentsEvent> get copyWith => _$LoadFeedCommentsEventCopyWithImpl<LoadFeedCommentsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFeedCommentsEvent&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,postId,limit);

@override
String toString() {
  return 'FeedCommentEvent.loadFeedComments(postId: $postId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadFeedCommentsEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $LoadFeedCommentsEventCopyWith(LoadFeedCommentsEvent value, $Res Function(LoadFeedCommentsEvent) _then) = _$LoadFeedCommentsEventCopyWithImpl;
@useResult
$Res call({
 String postId, int? limit
});




}
/// @nodoc
class _$LoadFeedCommentsEventCopyWithImpl<$Res>
    implements $LoadFeedCommentsEventCopyWith<$Res> {
  _$LoadFeedCommentsEventCopyWithImpl(this._self, this._then);

  final LoadFeedCommentsEvent _self;
  final $Res Function(LoadFeedCommentsEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? limit = freezed,}) {
  return _then(LoadFeedCommentsEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class LoadMoreFeedCommentsEvent implements FeedCommentEvent {
  const LoadMoreFeedCommentsEvent({required this.postId, required this.limit});
  

 final  String postId;
 final  int limit;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreFeedCommentsEventCopyWith<LoadMoreFeedCommentsEvent> get copyWith => _$LoadMoreFeedCommentsEventCopyWithImpl<LoadMoreFeedCommentsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreFeedCommentsEvent&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,postId,limit);

@override
String toString() {
  return 'FeedCommentEvent.loadMoreFeedComments(postId: $postId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadMoreFeedCommentsEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $LoadMoreFeedCommentsEventCopyWith(LoadMoreFeedCommentsEvent value, $Res Function(LoadMoreFeedCommentsEvent) _then) = _$LoadMoreFeedCommentsEventCopyWithImpl;
@useResult
$Res call({
 String postId, int limit
});




}
/// @nodoc
class _$LoadMoreFeedCommentsEventCopyWithImpl<$Res>
    implements $LoadMoreFeedCommentsEventCopyWith<$Res> {
  _$LoadMoreFeedCommentsEventCopyWithImpl(this._self, this._then);

  final LoadMoreFeedCommentsEvent _self;
  final $Res Function(LoadMoreFeedCommentsEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? limit = null,}) {
  return _then(LoadMoreFeedCommentsEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadRepliesEvent implements FeedCommentEvent {
  const LoadRepliesEvent({required this.parentCommentId});
  

 final  String parentCommentId;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRepliesEventCopyWith<LoadRepliesEvent> get copyWith => _$LoadRepliesEventCopyWithImpl<LoadRepliesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRepliesEvent&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId));
}


@override
int get hashCode => Object.hash(runtimeType,parentCommentId);

@override
String toString() {
  return 'FeedCommentEvent.loadReplies(parentCommentId: $parentCommentId)';
}


}

/// @nodoc
abstract mixin class $LoadRepliesEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $LoadRepliesEventCopyWith(LoadRepliesEvent value, $Res Function(LoadRepliesEvent) _then) = _$LoadRepliesEventCopyWithImpl;
@useResult
$Res call({
 String parentCommentId
});




}
/// @nodoc
class _$LoadRepliesEventCopyWithImpl<$Res>
    implements $LoadRepliesEventCopyWith<$Res> {
  _$LoadRepliesEventCopyWithImpl(this._self, this._then);

  final LoadRepliesEvent _self;
  final $Res Function(LoadRepliesEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? parentCommentId = null,}) {
  return _then(LoadRepliesEvent(
parentCommentId: null == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddFeedCommentEvent implements FeedCommentEvent {
  const AddFeedCommentEvent({required this.postId, required this.content, this.parentCommentId});
  

 final  String postId;
 final  String content;
 final  String? parentCommentId;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddFeedCommentEventCopyWith<AddFeedCommentEvent> get copyWith => _$AddFeedCommentEventCopyWithImpl<AddFeedCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFeedCommentEvent&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.content, content) || other.content == content)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId));
}


@override
int get hashCode => Object.hash(runtimeType,postId,content,parentCommentId);

@override
String toString() {
  return 'FeedCommentEvent.addFeedComment(postId: $postId, content: $content, parentCommentId: $parentCommentId)';
}


}

/// @nodoc
abstract mixin class $AddFeedCommentEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $AddFeedCommentEventCopyWith(AddFeedCommentEvent value, $Res Function(AddFeedCommentEvent) _then) = _$AddFeedCommentEventCopyWithImpl;
@useResult
$Res call({
 String postId, String content, String? parentCommentId
});




}
/// @nodoc
class _$AddFeedCommentEventCopyWithImpl<$Res>
    implements $AddFeedCommentEventCopyWith<$Res> {
  _$AddFeedCommentEventCopyWithImpl(this._self, this._then);

  final AddFeedCommentEvent _self;
  final $Res Function(AddFeedCommentEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? content = null,Object? parentCommentId = freezed,}) {
  return _then(AddFeedCommentEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DeleteFeedCommentEvent implements FeedCommentEvent {
  const DeleteFeedCommentEvent(this.commentId);
  

 final  String commentId;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteFeedCommentEventCopyWith<DeleteFeedCommentEvent> get copyWith => _$DeleteFeedCommentEventCopyWithImpl<DeleteFeedCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteFeedCommentEvent&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,commentId);

@override
String toString() {
  return 'FeedCommentEvent.deleteFeedComment(commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class $DeleteFeedCommentEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $DeleteFeedCommentEventCopyWith(DeleteFeedCommentEvent value, $Res Function(DeleteFeedCommentEvent) _then) = _$DeleteFeedCommentEventCopyWithImpl;
@useResult
$Res call({
 String commentId
});




}
/// @nodoc
class _$DeleteFeedCommentEventCopyWithImpl<$Res>
    implements $DeleteFeedCommentEventCopyWith<$Res> {
  _$DeleteFeedCommentEventCopyWithImpl(this._self, this._then);

  final DeleteFeedCommentEvent _self;
  final $Res Function(DeleteFeedCommentEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,}) {
  return _then(DeleteFeedCommentEvent(
null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleFeedCommentLikeEvent implements FeedCommentEvent {
  const ToggleFeedCommentLikeEvent(this.commentId);
  

 final  String commentId;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFeedCommentLikeEventCopyWith<ToggleFeedCommentLikeEvent> get copyWith => _$ToggleFeedCommentLikeEventCopyWithImpl<ToggleFeedCommentLikeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFeedCommentLikeEvent&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,commentId);

@override
String toString() {
  return 'FeedCommentEvent.toggleFeedCommentLike(commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class $ToggleFeedCommentLikeEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $ToggleFeedCommentLikeEventCopyWith(ToggleFeedCommentLikeEvent value, $Res Function(ToggleFeedCommentLikeEvent) _then) = _$ToggleFeedCommentLikeEventCopyWithImpl;
@useResult
$Res call({
 String commentId
});




}
/// @nodoc
class _$ToggleFeedCommentLikeEventCopyWithImpl<$Res>
    implements $ToggleFeedCommentLikeEventCopyWith<$Res> {
  _$ToggleFeedCommentLikeEventCopyWithImpl(this._self, this._then);

  final ToggleFeedCommentLikeEvent _self;
  final $Res Function(ToggleFeedCommentLikeEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,}) {
  return _then(ToggleFeedCommentLikeEvent(
null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearFeedCommentMessagesEvent implements FeedCommentEvent {
  const ClearFeedCommentMessagesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearFeedCommentMessagesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedCommentEvent.clearFeedCommentMessages()';
}


}




/// @nodoc


class StartWatchCommentsEvent implements FeedCommentEvent {
  const StartWatchCommentsEvent({required this.postId});
  

 final  String postId;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartWatchCommentsEventCopyWith<StartWatchCommentsEvent> get copyWith => _$StartWatchCommentsEventCopyWithImpl<StartWatchCommentsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWatchCommentsEvent&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'FeedCommentEvent.startWatchComments(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $StartWatchCommentsEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $StartWatchCommentsEventCopyWith(StartWatchCommentsEvent value, $Res Function(StartWatchCommentsEvent) _then) = _$StartWatchCommentsEventCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$StartWatchCommentsEventCopyWithImpl<$Res>
    implements $StartWatchCommentsEventCopyWith<$Res> {
  _$StartWatchCommentsEventCopyWithImpl(this._self, this._then);

  final StartWatchCommentsEvent _self;
  final $Res Function(StartWatchCommentsEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(StartWatchCommentsEvent(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StopWatchCommentsEvent implements FeedCommentEvent {
  const StopWatchCommentsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWatchCommentsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedCommentEvent.stopWatchComments()';
}


}




/// @nodoc


class WatchCommentArrivedEvent implements FeedCommentEvent {
  const WatchCommentArrivedEvent({required this.comment});
  

 final  CommentEntity comment;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchCommentArrivedEventCopyWith<WatchCommentArrivedEvent> get copyWith => _$WatchCommentArrivedEventCopyWithImpl<WatchCommentArrivedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchCommentArrivedEvent&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'FeedCommentEvent.watchCommentArrived(comment: $comment)';
}


}

/// @nodoc
abstract mixin class $WatchCommentArrivedEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $WatchCommentArrivedEventCopyWith(WatchCommentArrivedEvent value, $Res Function(WatchCommentArrivedEvent) _then) = _$WatchCommentArrivedEventCopyWithImpl;
@useResult
$Res call({
 CommentEntity comment
});


$CommentEntityCopyWith<$Res> get comment;

}
/// @nodoc
class _$WatchCommentArrivedEventCopyWithImpl<$Res>
    implements $WatchCommentArrivedEventCopyWith<$Res> {
  _$WatchCommentArrivedEventCopyWithImpl(this._self, this._then);

  final WatchCommentArrivedEvent _self;
  final $Res Function(WatchCommentArrivedEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(WatchCommentArrivedEvent(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res> get comment {
  
  return $CommentEntityCopyWith<$Res>(_self.comment, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}

/// @nodoc


class WatchErrorEvent implements FeedCommentEvent {
  const WatchErrorEvent({required this.message});
  

 final  String message;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchErrorEventCopyWith<WatchErrorEvent> get copyWith => _$WatchErrorEventCopyWithImpl<WatchErrorEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchErrorEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FeedCommentEvent.watchError(message: $message)';
}


}

/// @nodoc
abstract mixin class $WatchErrorEventCopyWith<$Res> implements $FeedCommentEventCopyWith<$Res> {
  factory $WatchErrorEventCopyWith(WatchErrorEvent value, $Res Function(WatchErrorEvent) _then) = _$WatchErrorEventCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WatchErrorEventCopyWithImpl<$Res>
    implements $WatchErrorEventCopyWith<$Res> {
  _$WatchErrorEventCopyWithImpl(this._self, this._then);

  final WatchErrorEvent _self;
  final $Res Function(WatchErrorEvent) _then;

/// Create a copy of FeedCommentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WatchErrorEvent(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

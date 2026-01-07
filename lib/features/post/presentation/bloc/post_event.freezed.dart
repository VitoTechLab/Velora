// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent()';
}


}

/// @nodoc
class $PostEventCopyWith<$Res>  {
$PostEventCopyWith(PostEvent _, $Res Function(PostEvent) __);
}


/// Adds pattern-matching-related methods to [PostEvent].
extension PostEventPatterns on PostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreatePostEvent value)?  createPost,TResult Function( ClearPostTransientEvent value)?  clearPostTransient,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that);case ClearPostTransientEvent() when clearPostTransient != null:
return clearPostTransient(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreatePostEvent value)  createPost,required TResult Function( ClearPostTransientEvent value)  clearPostTransient,}){
final _that = this;
switch (_that) {
case CreatePostEvent():
return createPost(_that);case ClearPostTransientEvent():
return clearPostTransient(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreatePostEvent value)?  createPost,TResult? Function( ClearPostTransientEvent value)?  clearPostTransient,}){
final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that);case ClearPostTransientEvent() when clearPostTransient != null:
return clearPostTransient(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId,  String content,  List<String> imageUrls,  List<String> videoUrls,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)?  createPost,TResult Function()?  clearPostTransient,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that.userId,_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case ClearPostTransientEvent() when clearPostTransient != null:
return clearPostTransient();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId,  String content,  List<String> imageUrls,  List<String> videoUrls,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)  createPost,required TResult Function()  clearPostTransient,}) {final _that = this;
switch (_that) {
case CreatePostEvent():
return createPost(_that.userId,_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case ClearPostTransientEvent():
return clearPostTransient();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId,  String content,  List<String> imageUrls,  List<String> videoUrls,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)?  createPost,TResult? Function()?  clearPostTransient,}) {final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that.userId,_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case ClearPostTransientEvent() when clearPostTransient != null:
return clearPostTransient();case _:
  return null;

}
}

}

/// @nodoc


class CreatePostEvent implements PostEvent {
  const CreatePostEvent({required this.userId, required this.content, final  List<String> imageUrls = const [], final  List<String> videoUrls = const [], this.commentsEnabled = true, this.hideLikeCount = false, this.hideCommentCount = false, this.hideShareCount = false, this.hideLikesList = false, this.campaignId, this.campaignTitle}): _imageUrls = imageUrls,_videoUrls = videoUrls;
  

 final  String userId;
 final  String content;
 final  List<String> _imageUrls;
@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

 final  List<String> _videoUrls;
@JsonKey() List<String> get videoUrls {
  if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoUrls);
}

@JsonKey() final  bool commentsEnabled;
@JsonKey() final  bool hideLikeCount;
@JsonKey() final  bool hideCommentCount;
@JsonKey() final  bool hideShareCount;
@JsonKey() final  bool hideLikesList;
 final  String? campaignId;
 final  String? campaignTitle;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostEventCopyWith<CreatePostEvent> get copyWith => _$CreatePostEventCopyWithImpl<CreatePostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._videoUrls, _videoUrls)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}


@override
int get hashCode => Object.hash(runtimeType,userId,content,const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_videoUrls),commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle);

@override
String toString() {
  return 'PostEvent.createPost(userId: $userId, content: $content, imageUrls: $imageUrls, videoUrls: $videoUrls, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $CreatePostEventCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(CreatePostEvent value, $Res Function(CreatePostEvent) _then) = _$CreatePostEventCopyWithImpl;
@useResult
$Res call({
 String userId, String content, List<String> imageUrls, List<String> videoUrls, bool commentsEnabled, bool hideLikeCount, bool hideCommentCount, bool hideShareCount, bool hideLikesList, String? campaignId, String? campaignTitle
});




}
/// @nodoc
class _$CreatePostEventCopyWithImpl<$Res>
    implements $CreatePostEventCopyWith<$Res> {
  _$CreatePostEventCopyWithImpl(this._self, this._then);

  final CreatePostEvent _self;
  final $Res Function(CreatePostEvent) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? content = null,Object? imageUrls = null,Object? videoUrls = null,Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideCommentCount = null,Object? hideShareCount = null,Object? hideLikesList = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(CreatePostEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrls: null == videoUrls ? _self._videoUrls : videoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,commentsEnabled: null == commentsEnabled ? _self.commentsEnabled : commentsEnabled // ignore: cast_nullable_to_non_nullable
as bool,hideLikeCount: null == hideLikeCount ? _self.hideLikeCount : hideLikeCount // ignore: cast_nullable_to_non_nullable
as bool,hideCommentCount: null == hideCommentCount ? _self.hideCommentCount : hideCommentCount // ignore: cast_nullable_to_non_nullable
as bool,hideShareCount: null == hideShareCount ? _self.hideShareCount : hideShareCount // ignore: cast_nullable_to_non_nullable
as bool,hideLikesList: null == hideLikesList ? _self.hideLikesList : hideLikesList // ignore: cast_nullable_to_non_nullable
as bool,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ClearPostTransientEvent implements PostEvent {
  const ClearPostTransientEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearPostTransientEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent.clearPostTransient()';
}


}




// dart format on

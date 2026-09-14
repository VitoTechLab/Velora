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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId,  String content,  List<String> mediaUrls,  List<String> tags,  List<String> mentionIds,  Map<String, dynamic>? location,  bool allowComments,  bool allowShare,  String? campaignTitle)?  createPost,TResult Function()?  clearPostTransient,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that.userId,_that.content,_that.mediaUrls,_that.tags,_that.mentionIds,_that.location,_that.allowComments,_that.allowShare,_that.campaignTitle);case ClearPostTransientEvent() when clearPostTransient != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId,  String content,  List<String> mediaUrls,  List<String> tags,  List<String> mentionIds,  Map<String, dynamic>? location,  bool allowComments,  bool allowShare,  String? campaignTitle)  createPost,required TResult Function()  clearPostTransient,}) {final _that = this;
switch (_that) {
case CreatePostEvent():
return createPost(_that.userId,_that.content,_that.mediaUrls,_that.tags,_that.mentionIds,_that.location,_that.allowComments,_that.allowShare,_that.campaignTitle);case ClearPostTransientEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId,  String content,  List<String> mediaUrls,  List<String> tags,  List<String> mentionIds,  Map<String, dynamic>? location,  bool allowComments,  bool allowShare,  String? campaignTitle)?  createPost,TResult? Function()?  clearPostTransient,}) {final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that.userId,_that.content,_that.mediaUrls,_that.tags,_that.mentionIds,_that.location,_that.allowComments,_that.allowShare,_that.campaignTitle);case ClearPostTransientEvent() when clearPostTransient != null:
return clearPostTransient();case _:
  return null;

}
}

}

/// @nodoc


class CreatePostEvent implements PostEvent {
  const CreatePostEvent({required this.userId, required this.content, final  List<String> mediaUrls = const [], final  List<String> tags = const [], final  List<String> mentionIds = const [], final  Map<String, dynamic>? location, this.allowComments = true, this.allowShare = true, this.campaignTitle}): _mediaUrls = mediaUrls,_tags = tags,_mentionIds = mentionIds,_location = location;
  

 final  String userId;
 final  String content;
 final  List<String> _mediaUrls;
@JsonKey() List<String> get mediaUrls {
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaUrls);
}

 final  List<String> _tags;
@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _mentionIds;
@JsonKey() List<String> get mentionIds {
  if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionIds);
}

 final  Map<String, dynamic>? _location;
 Map<String, dynamic>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableMapView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@JsonKey() final  bool allowComments;
@JsonKey() final  bool allowShare;
 final  String? campaignTitle;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostEventCopyWith<CreatePostEvent> get copyWith => _$CreatePostEventCopyWithImpl<CreatePostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._mentionIds, _mentionIds)&&const DeepCollectionEquality().equals(other._location, _location)&&(identical(other.allowComments, allowComments) || other.allowComments == allowComments)&&(identical(other.allowShare, allowShare) || other.allowShare == allowShare)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}


@override
int get hashCode => Object.hash(runtimeType,userId,content,const DeepCollectionEquality().hash(_mediaUrls),const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_mentionIds),const DeepCollectionEquality().hash(_location),allowComments,allowShare,campaignTitle);

@override
String toString() {
  return 'PostEvent.createPost(userId: $userId, content: $content, mediaUrls: $mediaUrls, tags: $tags, mentionIds: $mentionIds, location: $location, allowComments: $allowComments, allowShare: $allowShare, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $CreatePostEventCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(CreatePostEvent value, $Res Function(CreatePostEvent) _then) = _$CreatePostEventCopyWithImpl;
@useResult
$Res call({
 String userId, String content, List<String> mediaUrls, List<String> tags, List<String> mentionIds, Map<String, dynamic>? location, bool allowComments, bool allowShare, String? campaignTitle
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
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? content = null,Object? mediaUrls = null,Object? tags = null,Object? mentionIds = null,Object? location = freezed,Object? allowComments = null,Object? allowShare = null,Object? campaignTitle = freezed,}) {
  return _then(CreatePostEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,mediaUrls: null == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,mentionIds: null == mentionIds ? _self._mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,allowComments: null == allowComments ? _self.allowComments : allowComments // ignore: cast_nullable_to_non_nullable
as bool,allowShare: null == allowShare ? _self.allowShare : allowShare // ignore: cast_nullable_to_non_nullable
as bool,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
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

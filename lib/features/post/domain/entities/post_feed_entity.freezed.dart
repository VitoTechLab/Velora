// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostFeedEntity {

 String get userId; String get content; List<String> get mediaUrls; List<String> get tags; List<String> get mentionIds; Map<String, dynamic>? get location; bool get allowComments; bool get allowShare; String? get campaignTitle;
/// Create a copy of PostFeedEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFeedEntityCopyWith<PostFeedEntity> get copyWith => _$PostFeedEntityCopyWithImpl<PostFeedEntity>(this as PostFeedEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFeedEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.mentionIds, mentionIds)&&const DeepCollectionEquality().equals(other.location, location)&&(identical(other.allowComments, allowComments) || other.allowComments == allowComments)&&(identical(other.allowShare, allowShare) || other.allowShare == allowShare)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}


@override
int get hashCode => Object.hash(runtimeType,userId,content,const DeepCollectionEquality().hash(mediaUrls),const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(mentionIds),const DeepCollectionEquality().hash(location),allowComments,allowShare,campaignTitle);

@override
String toString() {
  return 'PostFeedEntity(userId: $userId, content: $content, mediaUrls: $mediaUrls, tags: $tags, mentionIds: $mentionIds, location: $location, allowComments: $allowComments, allowShare: $allowShare, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $PostFeedEntityCopyWith<$Res>  {
  factory $PostFeedEntityCopyWith(PostFeedEntity value, $Res Function(PostFeedEntity) _then) = _$PostFeedEntityCopyWithImpl;
@useResult
$Res call({
 String userId, String content, List<String> mediaUrls, List<String> tags, List<String> mentionIds, Map<String, dynamic>? location, bool allowComments, bool allowShare, String? campaignTitle
});




}
/// @nodoc
class _$PostFeedEntityCopyWithImpl<$Res>
    implements $PostFeedEntityCopyWith<$Res> {
  _$PostFeedEntityCopyWithImpl(this._self, this._then);

  final PostFeedEntity _self;
  final $Res Function(PostFeedEntity) _then;

/// Create a copy of PostFeedEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? content = null,Object? mediaUrls = null,Object? tags = null,Object? mentionIds = null,Object? location = freezed,Object? allowComments = null,Object? allowShare = null,Object? campaignTitle = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,mediaUrls: null == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,mentionIds: null == mentionIds ? _self.mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,allowComments: null == allowComments ? _self.allowComments : allowComments // ignore: cast_nullable_to_non_nullable
as bool,allowShare: null == allowShare ? _self.allowShare : allowShare // ignore: cast_nullable_to_non_nullable
as bool,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostFeedEntity].
extension PostFeedEntityPatterns on PostFeedEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostFeedEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostFeedEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostFeedEntity value)  $default,){
final _that = this;
switch (_that) {
case _PostFeedEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostFeedEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PostFeedEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String content,  List<String> mediaUrls,  List<String> tags,  List<String> mentionIds,  Map<String, dynamic>? location,  bool allowComments,  bool allowShare,  String? campaignTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostFeedEntity() when $default != null:
return $default(_that.userId,_that.content,_that.mediaUrls,_that.tags,_that.mentionIds,_that.location,_that.allowComments,_that.allowShare,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String content,  List<String> mediaUrls,  List<String> tags,  List<String> mentionIds,  Map<String, dynamic>? location,  bool allowComments,  bool allowShare,  String? campaignTitle)  $default,) {final _that = this;
switch (_that) {
case _PostFeedEntity():
return $default(_that.userId,_that.content,_that.mediaUrls,_that.tags,_that.mentionIds,_that.location,_that.allowComments,_that.allowShare,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String content,  List<String> mediaUrls,  List<String> tags,  List<String> mentionIds,  Map<String, dynamic>? location,  bool allowComments,  bool allowShare,  String? campaignTitle)?  $default,) {final _that = this;
switch (_that) {
case _PostFeedEntity() when $default != null:
return $default(_that.userId,_that.content,_that.mediaUrls,_that.tags,_that.mentionIds,_that.location,_that.allowComments,_that.allowShare,_that.campaignTitle);case _:
  return null;

}
}

}

/// @nodoc


class _PostFeedEntity implements PostFeedEntity {
  const _PostFeedEntity({required this.userId, required this.content, final  List<String> mediaUrls = const [], final  List<String> tags = const [], final  List<String> mentionIds = const [], final  Map<String, dynamic>? location, this.allowComments = true, this.allowShare = true, this.campaignTitle}): _mediaUrls = mediaUrls,_tags = tags,_mentionIds = mentionIds,_location = location;
  

@override final  String userId;
@override final  String content;
 final  List<String> _mediaUrls;
@override@JsonKey() List<String> get mediaUrls {
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaUrls);
}

 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _mentionIds;
@override@JsonKey() List<String> get mentionIds {
  if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionIds);
}

 final  Map<String, dynamic>? _location;
@override Map<String, dynamic>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableMapView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  bool allowComments;
@override@JsonKey() final  bool allowShare;
@override final  String? campaignTitle;

/// Create a copy of PostFeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostFeedEntityCopyWith<_PostFeedEntity> get copyWith => __$PostFeedEntityCopyWithImpl<_PostFeedEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostFeedEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._mentionIds, _mentionIds)&&const DeepCollectionEquality().equals(other._location, _location)&&(identical(other.allowComments, allowComments) || other.allowComments == allowComments)&&(identical(other.allowShare, allowShare) || other.allowShare == allowShare)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}


@override
int get hashCode => Object.hash(runtimeType,userId,content,const DeepCollectionEquality().hash(_mediaUrls),const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_mentionIds),const DeepCollectionEquality().hash(_location),allowComments,allowShare,campaignTitle);

@override
String toString() {
  return 'PostFeedEntity(userId: $userId, content: $content, mediaUrls: $mediaUrls, tags: $tags, mentionIds: $mentionIds, location: $location, allowComments: $allowComments, allowShare: $allowShare, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class _$PostFeedEntityCopyWith<$Res> implements $PostFeedEntityCopyWith<$Res> {
  factory _$PostFeedEntityCopyWith(_PostFeedEntity value, $Res Function(_PostFeedEntity) _then) = __$PostFeedEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, String content, List<String> mediaUrls, List<String> tags, List<String> mentionIds, Map<String, dynamic>? location, bool allowComments, bool allowShare, String? campaignTitle
});




}
/// @nodoc
class __$PostFeedEntityCopyWithImpl<$Res>
    implements _$PostFeedEntityCopyWith<$Res> {
  __$PostFeedEntityCopyWithImpl(this._self, this._then);

  final _PostFeedEntity _self;
  final $Res Function(_PostFeedEntity) _then;

/// Create a copy of PostFeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? content = null,Object? mediaUrls = null,Object? tags = null,Object? mentionIds = null,Object? location = freezed,Object? allowComments = null,Object? allowShare = null,Object? campaignTitle = freezed,}) {
  return _then(_PostFeedEntity(
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

// dart format on

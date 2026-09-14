// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateFeedModel {

@JsonKey(name: 'caption') String? get content;@StringListConverter()@JsonKey(name: 'media_urls') List<String>? get mediaUrls;@JsonKey(name: 'location') Map<String, dynamic>? get location;@StringListConverter()@JsonKey(name: 'tags') List<String>? get tags;@StringListConverter()@JsonKey(name: 'mention_ids') List<String>? get mentionIds;@JsonKey(name: 'allow_comments') bool? get allowComments;@JsonKey(name: 'allow_share') bool? get allowShare;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'campaign_id') String? get campaignId;@JsonKey(name: 'campaign_title') String? get campaignTitle;
/// Create a copy of UpdateFeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFeedModelCopyWith<UpdateFeedModel> get copyWith => _$UpdateFeedModelCopyWithImpl<UpdateFeedModel>(this as UpdateFeedModel, _$identity);

  /// Serializes this UpdateFeedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFeedModel&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&const DeepCollectionEquality().equals(other.location, location)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.mentionIds, mentionIds)&&(identical(other.allowComments, allowComments) || other.allowComments == allowComments)&&(identical(other.allowShare, allowShare) || other.allowShare == allowShare)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(mediaUrls),const DeepCollectionEquality().hash(location),const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(mentionIds),allowComments,allowShare,isActive,campaignId,campaignTitle);

@override
String toString() {
  return 'UpdateFeedModel(content: $content, mediaUrls: $mediaUrls, location: $location, tags: $tags, mentionIds: $mentionIds, allowComments: $allowComments, allowShare: $allowShare, isActive: $isActive, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $UpdateFeedModelCopyWith<$Res>  {
  factory $UpdateFeedModelCopyWith(UpdateFeedModel value, $Res Function(UpdateFeedModel) _then) = _$UpdateFeedModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'caption') String? content,@StringListConverter()@JsonKey(name: 'media_urls') List<String>? mediaUrls,@JsonKey(name: 'location') Map<String, dynamic>? location,@StringListConverter()@JsonKey(name: 'tags') List<String>? tags,@StringListConverter()@JsonKey(name: 'mention_ids') List<String>? mentionIds,@JsonKey(name: 'allow_comments') bool? allowComments,@JsonKey(name: 'allow_share') bool? allowShare,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
});




}
/// @nodoc
class _$UpdateFeedModelCopyWithImpl<$Res>
    implements $UpdateFeedModelCopyWith<$Res> {
  _$UpdateFeedModelCopyWithImpl(this._self, this._then);

  final UpdateFeedModel _self;
  final $Res Function(UpdateFeedModel) _then;

/// Create a copy of UpdateFeedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? mediaUrls = freezed,Object? location = freezed,Object? tags = freezed,Object? mentionIds = freezed,Object? allowComments = freezed,Object? allowShare = freezed,Object? isActive = freezed,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,mentionIds: freezed == mentionIds ? _self.mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,allowComments: freezed == allowComments ? _self.allowComments : allowComments // ignore: cast_nullable_to_non_nullable
as bool?,allowShare: freezed == allowShare ? _self.allowShare : allowShare // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFeedModel].
extension UpdateFeedModelPatterns on UpdateFeedModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFeedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFeedModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFeedModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFeedModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFeedModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFeedModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'caption')  String? content, @StringListConverter()@JsonKey(name: 'media_urls')  List<String>? mediaUrls, @JsonKey(name: 'location')  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags')  List<String>? tags, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String>? mentionIds, @JsonKey(name: 'allow_comments')  bool? allowComments, @JsonKey(name: 'allow_share')  bool? allowShare, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFeedModel() when $default != null:
return $default(_that.content,_that.mediaUrls,_that.location,_that.tags,_that.mentionIds,_that.allowComments,_that.allowShare,_that.isActive,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'caption')  String? content, @StringListConverter()@JsonKey(name: 'media_urls')  List<String>? mediaUrls, @JsonKey(name: 'location')  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags')  List<String>? tags, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String>? mentionIds, @JsonKey(name: 'allow_comments')  bool? allowComments, @JsonKey(name: 'allow_share')  bool? allowShare, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)  $default,) {final _that = this;
switch (_that) {
case _UpdateFeedModel():
return $default(_that.content,_that.mediaUrls,_that.location,_that.tags,_that.mentionIds,_that.allowComments,_that.allowShare,_that.isActive,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'caption')  String? content, @StringListConverter()@JsonKey(name: 'media_urls')  List<String>? mediaUrls, @JsonKey(name: 'location')  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags')  List<String>? tags, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String>? mentionIds, @JsonKey(name: 'allow_comments')  bool? allowComments, @JsonKey(name: 'allow_share')  bool? allowShare, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFeedModel() when $default != null:
return $default(_that.content,_that.mediaUrls,_that.location,_that.tags,_that.mentionIds,_that.allowComments,_that.allowShare,_that.isActive,_that.campaignId,_that.campaignTitle);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdateFeedModel implements UpdateFeedModel {
  const _UpdateFeedModel({@JsonKey(name: 'caption') this.content, @StringListConverter()@JsonKey(name: 'media_urls') final  List<String>? mediaUrls, @JsonKey(name: 'location') final  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags') final  List<String>? tags, @StringListConverter()@JsonKey(name: 'mention_ids') final  List<String>? mentionIds, @JsonKey(name: 'allow_comments') this.allowComments, @JsonKey(name: 'allow_share') this.allowShare, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'campaign_id') this.campaignId, @JsonKey(name: 'campaign_title') this.campaignTitle}): _mediaUrls = mediaUrls,_location = location,_tags = tags,_mentionIds = mentionIds;
  factory _UpdateFeedModel.fromJson(Map<String, dynamic> json) => _$UpdateFeedModelFromJson(json);

@override@JsonKey(name: 'caption') final  String? content;
 final  List<String>? _mediaUrls;
@override@StringListConverter()@JsonKey(name: 'media_urls') List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _location;
@override@JsonKey(name: 'location') Map<String, dynamic>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableMapView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String>? _tags;
@override@StringListConverter()@JsonKey(name: 'tags') List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _mentionIds;
@override@StringListConverter()@JsonKey(name: 'mention_ids') List<String>? get mentionIds {
  final value = _mentionIds;
  if (value == null) return null;
  if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'allow_comments') final  bool? allowComments;
@override@JsonKey(name: 'allow_share') final  bool? allowShare;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'campaign_id') final  String? campaignId;
@override@JsonKey(name: 'campaign_title') final  String? campaignTitle;

/// Create a copy of UpdateFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFeedModelCopyWith<_UpdateFeedModel> get copyWith => __$UpdateFeedModelCopyWithImpl<_UpdateFeedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFeedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFeedModel&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&const DeepCollectionEquality().equals(other._location, _location)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._mentionIds, _mentionIds)&&(identical(other.allowComments, allowComments) || other.allowComments == allowComments)&&(identical(other.allowShare, allowShare) || other.allowShare == allowShare)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(_mediaUrls),const DeepCollectionEquality().hash(_location),const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_mentionIds),allowComments,allowShare,isActive,campaignId,campaignTitle);

@override
String toString() {
  return 'UpdateFeedModel(content: $content, mediaUrls: $mediaUrls, location: $location, tags: $tags, mentionIds: $mentionIds, allowComments: $allowComments, allowShare: $allowShare, isActive: $isActive, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class _$UpdateFeedModelCopyWith<$Res> implements $UpdateFeedModelCopyWith<$Res> {
  factory _$UpdateFeedModelCopyWith(_UpdateFeedModel value, $Res Function(_UpdateFeedModel) _then) = __$UpdateFeedModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'caption') String? content,@StringListConverter()@JsonKey(name: 'media_urls') List<String>? mediaUrls,@JsonKey(name: 'location') Map<String, dynamic>? location,@StringListConverter()@JsonKey(name: 'tags') List<String>? tags,@StringListConverter()@JsonKey(name: 'mention_ids') List<String>? mentionIds,@JsonKey(name: 'allow_comments') bool? allowComments,@JsonKey(name: 'allow_share') bool? allowShare,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
});




}
/// @nodoc
class __$UpdateFeedModelCopyWithImpl<$Res>
    implements _$UpdateFeedModelCopyWith<$Res> {
  __$UpdateFeedModelCopyWithImpl(this._self, this._then);

  final _UpdateFeedModel _self;
  final $Res Function(_UpdateFeedModel) _then;

/// Create a copy of UpdateFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? mediaUrls = freezed,Object? location = freezed,Object? tags = freezed,Object? mentionIds = freezed,Object? allowComments = freezed,Object? allowShare = freezed,Object? isActive = freezed,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_UpdateFeedModel(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,mentionIds: freezed == mentionIds ? _self._mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,allowComments: freezed == allowComments ? _self.allowComments : allowComments // ignore: cast_nullable_to_non_nullable
as bool?,allowShare: freezed == allowShare ? _self.allowShare : allowShare // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

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

@JsonKey(name: 'content') String? get content;@StringListConverter()@JsonKey(name: 'image_urls') List<String>? get imageUrls;@StringListConverter()@JsonKey(name: 'video_urls') List<String>? get videoUrls;// Post privacy settings
@JsonKey(name: 'comments_enabled') bool? get commentsEnabled;@JsonKey(name: 'hide_like_count') bool? get hideLikeCount;@JsonKey(name: 'hide_comment_count') bool? get hideCommentCount;@JsonKey(name: 'hide_share_count') bool? get hideShareCount;@JsonKey(name: 'hide_likes_list') bool? get hideLikesList;// Campaign association
@JsonKey(name: 'campaign_id') String? get campaignId;@JsonKey(name: 'campaign_title') String? get campaignTitle;
/// Create a copy of UpdateFeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFeedModelCopyWith<UpdateFeedModel> get copyWith => _$UpdateFeedModelCopyWithImpl<UpdateFeedModel>(this as UpdateFeedModel, _$identity);

  /// Serializes this UpdateFeedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFeedModel&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&const DeepCollectionEquality().equals(other.videoUrls, videoUrls)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(imageUrls),const DeepCollectionEquality().hash(videoUrls),commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle);

@override
String toString() {
  return 'UpdateFeedModel(content: $content, imageUrls: $imageUrls, videoUrls: $videoUrls, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $UpdateFeedModelCopyWith<$Res>  {
  factory $UpdateFeedModelCopyWith(UpdateFeedModel value, $Res Function(UpdateFeedModel) _then) = _$UpdateFeedModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'content') String? content,@StringListConverter()@JsonKey(name: 'image_urls') List<String>? imageUrls,@StringListConverter()@JsonKey(name: 'video_urls') List<String>? videoUrls,@JsonKey(name: 'comments_enabled') bool? commentsEnabled,@JsonKey(name: 'hide_like_count') bool? hideLikeCount,@JsonKey(name: 'hide_comment_count') bool? hideCommentCount,@JsonKey(name: 'hide_share_count') bool? hideShareCount,@JsonKey(name: 'hide_likes_list') bool? hideLikesList,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
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
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? imageUrls = freezed,Object? videoUrls = freezed,Object? commentsEnabled = freezed,Object? hideLikeCount = freezed,Object? hideCommentCount = freezed,Object? hideShareCount = freezed,Object? hideLikesList = freezed,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: freezed == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,videoUrls: freezed == videoUrls ? _self.videoUrls : videoUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,commentsEnabled: freezed == commentsEnabled ? _self.commentsEnabled : commentsEnabled // ignore: cast_nullable_to_non_nullable
as bool?,hideLikeCount: freezed == hideLikeCount ? _self.hideLikeCount : hideLikeCount // ignore: cast_nullable_to_non_nullable
as bool?,hideCommentCount: freezed == hideCommentCount ? _self.hideCommentCount : hideCommentCount // ignore: cast_nullable_to_non_nullable
as bool?,hideShareCount: freezed == hideShareCount ? _self.hideShareCount : hideShareCount // ignore: cast_nullable_to_non_nullable
as bool?,hideLikesList: freezed == hideLikesList ? _self.hideLikesList : hideLikesList // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'content')  String? content, @StringListConverter()@JsonKey(name: 'image_urls')  List<String>? imageUrls, @StringListConverter()@JsonKey(name: 'video_urls')  List<String>? videoUrls, @JsonKey(name: 'comments_enabled')  bool? commentsEnabled, @JsonKey(name: 'hide_like_count')  bool? hideLikeCount, @JsonKey(name: 'hide_comment_count')  bool? hideCommentCount, @JsonKey(name: 'hide_share_count')  bool? hideShareCount, @JsonKey(name: 'hide_likes_list')  bool? hideLikesList, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFeedModel() when $default != null:
return $default(_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'content')  String? content, @StringListConverter()@JsonKey(name: 'image_urls')  List<String>? imageUrls, @StringListConverter()@JsonKey(name: 'video_urls')  List<String>? videoUrls, @JsonKey(name: 'comments_enabled')  bool? commentsEnabled, @JsonKey(name: 'hide_like_count')  bool? hideLikeCount, @JsonKey(name: 'hide_comment_count')  bool? hideCommentCount, @JsonKey(name: 'hide_share_count')  bool? hideShareCount, @JsonKey(name: 'hide_likes_list')  bool? hideLikesList, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)  $default,) {final _that = this;
switch (_that) {
case _UpdateFeedModel():
return $default(_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'content')  String? content, @StringListConverter()@JsonKey(name: 'image_urls')  List<String>? imageUrls, @StringListConverter()@JsonKey(name: 'video_urls')  List<String>? videoUrls, @JsonKey(name: 'comments_enabled')  bool? commentsEnabled, @JsonKey(name: 'hide_like_count')  bool? hideLikeCount, @JsonKey(name: 'hide_comment_count')  bool? hideCommentCount, @JsonKey(name: 'hide_share_count')  bool? hideShareCount, @JsonKey(name: 'hide_likes_list')  bool? hideLikesList, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFeedModel() when $default != null:
return $default(_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdateFeedModel implements UpdateFeedModel {
  const _UpdateFeedModel({@JsonKey(name: 'content') this.content, @StringListConverter()@JsonKey(name: 'image_urls') final  List<String>? imageUrls, @StringListConverter()@JsonKey(name: 'video_urls') final  List<String>? videoUrls, @JsonKey(name: 'comments_enabled') this.commentsEnabled, @JsonKey(name: 'hide_like_count') this.hideLikeCount, @JsonKey(name: 'hide_comment_count') this.hideCommentCount, @JsonKey(name: 'hide_share_count') this.hideShareCount, @JsonKey(name: 'hide_likes_list') this.hideLikesList, @JsonKey(name: 'campaign_id') this.campaignId, @JsonKey(name: 'campaign_title') this.campaignTitle}): _imageUrls = imageUrls,_videoUrls = videoUrls;
  factory _UpdateFeedModel.fromJson(Map<String, dynamic> json) => _$UpdateFeedModelFromJson(json);

@override@JsonKey(name: 'content') final  String? content;
 final  List<String>? _imageUrls;
@override@StringListConverter()@JsonKey(name: 'image_urls') List<String>? get imageUrls {
  final value = _imageUrls;
  if (value == null) return null;
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _videoUrls;
@override@StringListConverter()@JsonKey(name: 'video_urls') List<String>? get videoUrls {
  final value = _videoUrls;
  if (value == null) return null;
  if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Post privacy settings
@override@JsonKey(name: 'comments_enabled') final  bool? commentsEnabled;
@override@JsonKey(name: 'hide_like_count') final  bool? hideLikeCount;
@override@JsonKey(name: 'hide_comment_count') final  bool? hideCommentCount;
@override@JsonKey(name: 'hide_share_count') final  bool? hideShareCount;
@override@JsonKey(name: 'hide_likes_list') final  bool? hideLikesList;
// Campaign association
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFeedModel&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._videoUrls, _videoUrls)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_videoUrls),commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle);

@override
String toString() {
  return 'UpdateFeedModel(content: $content, imageUrls: $imageUrls, videoUrls: $videoUrls, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class _$UpdateFeedModelCopyWith<$Res> implements $UpdateFeedModelCopyWith<$Res> {
  factory _$UpdateFeedModelCopyWith(_UpdateFeedModel value, $Res Function(_UpdateFeedModel) _then) = __$UpdateFeedModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'content') String? content,@StringListConverter()@JsonKey(name: 'image_urls') List<String>? imageUrls,@StringListConverter()@JsonKey(name: 'video_urls') List<String>? videoUrls,@JsonKey(name: 'comments_enabled') bool? commentsEnabled,@JsonKey(name: 'hide_like_count') bool? hideLikeCount,@JsonKey(name: 'hide_comment_count') bool? hideCommentCount,@JsonKey(name: 'hide_share_count') bool? hideShareCount,@JsonKey(name: 'hide_likes_list') bool? hideLikesList,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
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
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? imageUrls = freezed,Object? videoUrls = freezed,Object? commentsEnabled = freezed,Object? hideLikeCount = freezed,Object? hideCommentCount = freezed,Object? hideShareCount = freezed,Object? hideLikesList = freezed,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_UpdateFeedModel(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: freezed == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,videoUrls: freezed == videoUrls ? _self._videoUrls : videoUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,commentsEnabled: freezed == commentsEnabled ? _self.commentsEnabled : commentsEnabled // ignore: cast_nullable_to_non_nullable
as bool?,hideLikeCount: freezed == hideLikeCount ? _self.hideLikeCount : hideLikeCount // ignore: cast_nullable_to_non_nullable
as bool?,hideCommentCount: freezed == hideCommentCount ? _self.hideCommentCount : hideCommentCount // ignore: cast_nullable_to_non_nullable
as bool?,hideShareCount: freezed == hideShareCount ? _self.hideShareCount : hideShareCount // ignore: cast_nullable_to_non_nullable
as bool?,hideLikesList: freezed == hideLikesList ? _self.hideLikesList : hideLikesList // ignore: cast_nullable_to_non_nullable
as bool?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

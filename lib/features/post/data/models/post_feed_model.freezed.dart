// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostFeedModel {

 String get userId; String get content; List<String> get imageUrls; List<String> get videoUrls; bool get commentsEnabled; bool get hideLikeCount; bool get hideCommentCount; bool get hideShareCount; bool get hideLikesList; String? get campaignId; String? get campaignTitle;
/// Create a copy of PostFeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFeedModelCopyWith<PostFeedModel> get copyWith => _$PostFeedModelCopyWithImpl<PostFeedModel>(this as PostFeedModel, _$identity);

  /// Serializes this PostFeedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFeedModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&const DeepCollectionEquality().equals(other.videoUrls, videoUrls)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,content,const DeepCollectionEquality().hash(imageUrls),const DeepCollectionEquality().hash(videoUrls),commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle);

@override
String toString() {
  return 'PostFeedModel(userId: $userId, content: $content, imageUrls: $imageUrls, videoUrls: $videoUrls, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $PostFeedModelCopyWith<$Res>  {
  factory $PostFeedModelCopyWith(PostFeedModel value, $Res Function(PostFeedModel) _then) = _$PostFeedModelCopyWithImpl;
@useResult
$Res call({
 String userId, String content, List<String> imageUrls, List<String> videoUrls, bool commentsEnabled, bool hideLikeCount, bool hideCommentCount, bool hideShareCount, bool hideLikesList, String? campaignId, String? campaignTitle
});




}
/// @nodoc
class _$PostFeedModelCopyWithImpl<$Res>
    implements $PostFeedModelCopyWith<$Res> {
  _$PostFeedModelCopyWithImpl(this._self, this._then);

  final PostFeedModel _self;
  final $Res Function(PostFeedModel) _then;

/// Create a copy of PostFeedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? content = null,Object? imageUrls = null,Object? videoUrls = null,Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideCommentCount = null,Object? hideShareCount = null,Object? hideLikesList = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrls: null == videoUrls ? _self.videoUrls : videoUrls // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [PostFeedModel].
extension PostFeedModelPatterns on PostFeedModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostFeedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostFeedModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostFeedModel value)  $default,){
final _that = this;
switch (_that) {
case _PostFeedModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostFeedModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostFeedModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String content,  List<String> imageUrls,  List<String> videoUrls,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostFeedModel() when $default != null:
return $default(_that.userId,_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String content,  List<String> imageUrls,  List<String> videoUrls,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)  $default,) {final _that = this;
switch (_that) {
case _PostFeedModel():
return $default(_that.userId,_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String content,  List<String> imageUrls,  List<String> videoUrls,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)?  $default,) {final _that = this;
switch (_that) {
case _PostFeedModel() when $default != null:
return $default(_that.userId,_that.content,_that.imageUrls,_that.videoUrls,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostFeedModel extends PostFeedModel {
  const _PostFeedModel({required this.userId, required this.content, final  List<String> imageUrls = const [], final  List<String> videoUrls = const [], this.commentsEnabled = true, this.hideLikeCount = false, this.hideCommentCount = false, this.hideShareCount = false, this.hideLikesList = false, this.campaignId, this.campaignTitle}): _imageUrls = imageUrls,_videoUrls = videoUrls,super._();
  factory _PostFeedModel.fromJson(Map<String, dynamic> json) => _$PostFeedModelFromJson(json);

@override final  String userId;
@override final  String content;
 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

 final  List<String> _videoUrls;
@override@JsonKey() List<String> get videoUrls {
  if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoUrls);
}

@override@JsonKey() final  bool commentsEnabled;
@override@JsonKey() final  bool hideLikeCount;
@override@JsonKey() final  bool hideCommentCount;
@override@JsonKey() final  bool hideShareCount;
@override@JsonKey() final  bool hideLikesList;
@override final  String? campaignId;
@override final  String? campaignTitle;

/// Create a copy of PostFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostFeedModelCopyWith<_PostFeedModel> get copyWith => __$PostFeedModelCopyWithImpl<_PostFeedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostFeedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostFeedModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._videoUrls, _videoUrls)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,content,const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_videoUrls),commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle);

@override
String toString() {
  return 'PostFeedModel(userId: $userId, content: $content, imageUrls: $imageUrls, videoUrls: $videoUrls, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class _$PostFeedModelCopyWith<$Res> implements $PostFeedModelCopyWith<$Res> {
  factory _$PostFeedModelCopyWith(_PostFeedModel value, $Res Function(_PostFeedModel) _then) = __$PostFeedModelCopyWithImpl;
@override @useResult
$Res call({
 String userId, String content, List<String> imageUrls, List<String> videoUrls, bool commentsEnabled, bool hideLikeCount, bool hideCommentCount, bool hideShareCount, bool hideLikesList, String? campaignId, String? campaignTitle
});




}
/// @nodoc
class __$PostFeedModelCopyWithImpl<$Res>
    implements _$PostFeedModelCopyWith<$Res> {
  __$PostFeedModelCopyWithImpl(this._self, this._then);

  final _PostFeedModel _self;
  final $Res Function(_PostFeedModel) _then;

/// Create a copy of PostFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? content = null,Object? imageUrls = null,Object? videoUrls = null,Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideCommentCount = null,Object? hideShareCount = null,Object? hideLikesList = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_PostFeedModel(
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

// dart format on

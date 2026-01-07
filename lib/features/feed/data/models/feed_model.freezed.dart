// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'content') String get content;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;// joined from profiles (read-only)
@JsonKey(name: 'username') String? get username;@JsonKey(name: 'photo_url') String? get photoUrl;@StringListConverter()@JsonKey(name: 'image_urls') List<String> get imageUrls;@StringListConverter()@JsonKey(name: 'video_urls') List<String> get videoUrls;// counts can be masked => nullable
@JsonKey(name: 'likes_count') int? get likesCount;@JsonKey(name: 'comments_count') int? get commentsCount;@JsonKey(name: 'shares_count') int? get sharesCount;// computed per viewer (read-only)
@JsonKey(name: 'is_liked') bool get isLiked;@JsonKey(name: 'is_bookmarked') bool get isBookmarked;@JsonKey(name: 'is_following') bool get isFollowing;@JsonKey(name: 'is_follow_request_pending') bool get isFollowRequestPending;@JsonKey(name: 'is_me') bool get isMe;// per-post settings
@JsonKey(name: 'comments_enabled') bool get commentsEnabled;@JsonKey(name: 'hide_like_count') bool get hideLikeCount;@JsonKey(name: 'hide_comment_count') bool get hideCommentCount;@JsonKey(name: 'hide_share_count') bool get hideShareCount;@JsonKey(name: 'hide_likes_list') bool get hideLikesList;@JsonKey(name: 'campaign_id') String? get campaignId;@JsonKey(name: 'campaign_title') String? get campaignTitle;
/// Create a copy of FeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedModelCopyWith<FeedModel> get copyWith => _$FeedModelCopyWithImpl<FeedModel>(this as FeedModel, _$identity);

  /// Serializes this FeedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&const DeepCollectionEquality().equals(other.videoUrls, videoUrls)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,createdAt,username,photoUrl,const DeepCollectionEquality().hash(imageUrls),const DeepCollectionEquality().hash(videoUrls),likesCount,commentsCount,sharesCount,isLiked,isBookmarked,isFollowing,isFollowRequestPending,isMe,commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle]);

@override
String toString() {
  return 'FeedModel(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, imageUrls: $imageUrls, videoUrls: $videoUrls, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $FeedModelCopyWith<$Res>  {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) _then) = _$FeedModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'content') String content,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'photo_url') String? photoUrl,@StringListConverter()@JsonKey(name: 'image_urls') List<String> imageUrls,@StringListConverter()@JsonKey(name: 'video_urls') List<String> videoUrls,@JsonKey(name: 'likes_count') int? likesCount,@JsonKey(name: 'comments_count') int? commentsCount,@JsonKey(name: 'shares_count') int? sharesCount,@JsonKey(name: 'is_liked') bool isLiked,@JsonKey(name: 'is_bookmarked') bool isBookmarked,@JsonKey(name: 'is_following') bool isFollowing,@JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'comments_enabled') bool commentsEnabled,@JsonKey(name: 'hide_like_count') bool hideLikeCount,@JsonKey(name: 'hide_comment_count') bool hideCommentCount,@JsonKey(name: 'hide_share_count') bool hideShareCount,@JsonKey(name: 'hide_likes_list') bool hideLikesList,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
});




}
/// @nodoc
class _$FeedModelCopyWithImpl<$Res>
    implements $FeedModelCopyWith<$Res> {
  _$FeedModelCopyWithImpl(this._self, this._then);

  final FeedModel _self;
  final $Res Function(FeedModel) _then;

/// Create a copy of FeedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? username = freezed,Object? photoUrl = freezed,Object? imageUrls = null,Object? videoUrls = null,Object? likesCount = freezed,Object? commentsCount = freezed,Object? sharesCount = freezed,Object? isLiked = null,Object? isBookmarked = null,Object? isFollowing = null,Object? isFollowRequestPending = null,Object? isMe = null,Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideCommentCount = null,Object? hideShareCount = null,Object? hideLikesList = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrls: null == videoUrls ? _self.videoUrls : videoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,commentsCount: freezed == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isFollowRequestPending: null == isFollowRequestPending ? _self.isFollowRequestPending : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,commentsEnabled: null == commentsEnabled ? _self.commentsEnabled : commentsEnabled // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [FeedModel].
extension FeedModelPatterns on FeedModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'content')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @StringListConverter()@JsonKey(name: 'image_urls')  List<String> imageUrls, @StringListConverter()@JsonKey(name: 'video_urls')  List<String> videoUrls, @JsonKey(name: 'likes_count')  int? likesCount, @JsonKey(name: 'comments_count')  int? commentsCount, @JsonKey(name: 'shares_count')  int? sharesCount, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'is_bookmarked')  bool isBookmarked, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'comments_enabled')  bool commentsEnabled, @JsonKey(name: 'hide_like_count')  bool hideLikeCount, @JsonKey(name: 'hide_comment_count')  bool hideCommentCount, @JsonKey(name: 'hide_share_count')  bool hideShareCount, @JsonKey(name: 'hide_likes_list')  bool hideLikesList, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedModel() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.imageUrls,_that.videoUrls,_that.likesCount,_that.commentsCount,_that.sharesCount,_that.isLiked,_that.isBookmarked,_that.isFollowing,_that.isFollowRequestPending,_that.isMe,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'content')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @StringListConverter()@JsonKey(name: 'image_urls')  List<String> imageUrls, @StringListConverter()@JsonKey(name: 'video_urls')  List<String> videoUrls, @JsonKey(name: 'likes_count')  int? likesCount, @JsonKey(name: 'comments_count')  int? commentsCount, @JsonKey(name: 'shares_count')  int? sharesCount, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'is_bookmarked')  bool isBookmarked, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'comments_enabled')  bool commentsEnabled, @JsonKey(name: 'hide_like_count')  bool hideLikeCount, @JsonKey(name: 'hide_comment_count')  bool hideCommentCount, @JsonKey(name: 'hide_share_count')  bool hideShareCount, @JsonKey(name: 'hide_likes_list')  bool hideLikesList, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)  $default,) {final _that = this;
switch (_that) {
case _FeedModel():
return $default(_that.id,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.imageUrls,_that.videoUrls,_that.likesCount,_that.commentsCount,_that.sharesCount,_that.isLiked,_that.isBookmarked,_that.isFollowing,_that.isFollowRequestPending,_that.isMe,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'content')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @StringListConverter()@JsonKey(name: 'image_urls')  List<String> imageUrls, @StringListConverter()@JsonKey(name: 'video_urls')  List<String> videoUrls, @JsonKey(name: 'likes_count')  int? likesCount, @JsonKey(name: 'comments_count')  int? commentsCount, @JsonKey(name: 'shares_count')  int? sharesCount, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'is_bookmarked')  bool isBookmarked, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'comments_enabled')  bool commentsEnabled, @JsonKey(name: 'hide_like_count')  bool hideLikeCount, @JsonKey(name: 'hide_comment_count')  bool hideCommentCount, @JsonKey(name: 'hide_share_count')  bool hideShareCount, @JsonKey(name: 'hide_likes_list')  bool hideLikesList, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,) {final _that = this;
switch (_that) {
case _FeedModel() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.imageUrls,_that.videoUrls,_that.likesCount,_that.commentsCount,_that.sharesCount,_that.isLiked,_that.isBookmarked,_that.isFollowing,_that.isFollowRequestPending,_that.isMe,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedModel extends FeedModel {
  const _FeedModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'content') required this.content, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'username') this.username, @JsonKey(name: 'photo_url') this.photoUrl, @StringListConverter()@JsonKey(name: 'image_urls') final  List<String> imageUrls = const [], @StringListConverter()@JsonKey(name: 'video_urls') final  List<String> videoUrls = const [], @JsonKey(name: 'likes_count') this.likesCount, @JsonKey(name: 'comments_count') this.commentsCount, @JsonKey(name: 'shares_count') this.sharesCount, @JsonKey(name: 'is_liked') this.isLiked = false, @JsonKey(name: 'is_bookmarked') this.isBookmarked = false, @JsonKey(name: 'is_following') this.isFollowing = false, @JsonKey(name: 'is_follow_request_pending') this.isFollowRequestPending = false, @JsonKey(name: 'is_me') this.isMe = false, @JsonKey(name: 'comments_enabled') this.commentsEnabled = true, @JsonKey(name: 'hide_like_count') this.hideLikeCount = false, @JsonKey(name: 'hide_comment_count') this.hideCommentCount = false, @JsonKey(name: 'hide_share_count') this.hideShareCount = false, @JsonKey(name: 'hide_likes_list') this.hideLikesList = false, @JsonKey(name: 'campaign_id') this.campaignId, @JsonKey(name: 'campaign_title') this.campaignTitle}): _imageUrls = imageUrls,_videoUrls = videoUrls,super._();
  factory _FeedModel.fromJson(Map<String, dynamic> json) => _$FeedModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'content') final  String content;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
// joined from profiles (read-only)
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
 final  List<String> _imageUrls;
@override@StringListConverter()@JsonKey(name: 'image_urls') List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

 final  List<String> _videoUrls;
@override@StringListConverter()@JsonKey(name: 'video_urls') List<String> get videoUrls {
  if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoUrls);
}

// counts can be masked => nullable
@override@JsonKey(name: 'likes_count') final  int? likesCount;
@override@JsonKey(name: 'comments_count') final  int? commentsCount;
@override@JsonKey(name: 'shares_count') final  int? sharesCount;
// computed per viewer (read-only)
@override@JsonKey(name: 'is_liked') final  bool isLiked;
@override@JsonKey(name: 'is_bookmarked') final  bool isBookmarked;
@override@JsonKey(name: 'is_following') final  bool isFollowing;
@override@JsonKey(name: 'is_follow_request_pending') final  bool isFollowRequestPending;
@override@JsonKey(name: 'is_me') final  bool isMe;
// per-post settings
@override@JsonKey(name: 'comments_enabled') final  bool commentsEnabled;
@override@JsonKey(name: 'hide_like_count') final  bool hideLikeCount;
@override@JsonKey(name: 'hide_comment_count') final  bool hideCommentCount;
@override@JsonKey(name: 'hide_share_count') final  bool hideShareCount;
@override@JsonKey(name: 'hide_likes_list') final  bool hideLikesList;
@override@JsonKey(name: 'campaign_id') final  String? campaignId;
@override@JsonKey(name: 'campaign_title') final  String? campaignTitle;

/// Create a copy of FeedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedModelCopyWith<_FeedModel> get copyWith => __$FeedModelCopyWithImpl<_FeedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._videoUrls, _videoUrls)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,createdAt,username,photoUrl,const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_videoUrls),likesCount,commentsCount,sharesCount,isLiked,isBookmarked,isFollowing,isFollowRequestPending,isMe,commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle]);

@override
String toString() {
  return 'FeedModel(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, imageUrls: $imageUrls, videoUrls: $videoUrls, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class _$FeedModelCopyWith<$Res> implements $FeedModelCopyWith<$Res> {
  factory _$FeedModelCopyWith(_FeedModel value, $Res Function(_FeedModel) _then) = __$FeedModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'content') String content,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'photo_url') String? photoUrl,@StringListConverter()@JsonKey(name: 'image_urls') List<String> imageUrls,@StringListConverter()@JsonKey(name: 'video_urls') List<String> videoUrls,@JsonKey(name: 'likes_count') int? likesCount,@JsonKey(name: 'comments_count') int? commentsCount,@JsonKey(name: 'shares_count') int? sharesCount,@JsonKey(name: 'is_liked') bool isLiked,@JsonKey(name: 'is_bookmarked') bool isBookmarked,@JsonKey(name: 'is_following') bool isFollowing,@JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'comments_enabled') bool commentsEnabled,@JsonKey(name: 'hide_like_count') bool hideLikeCount,@JsonKey(name: 'hide_comment_count') bool hideCommentCount,@JsonKey(name: 'hide_share_count') bool hideShareCount,@JsonKey(name: 'hide_likes_list') bool hideLikesList,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
});




}
/// @nodoc
class __$FeedModelCopyWithImpl<$Res>
    implements _$FeedModelCopyWith<$Res> {
  __$FeedModelCopyWithImpl(this._self, this._then);

  final _FeedModel _self;
  final $Res Function(_FeedModel) _then;

/// Create a copy of FeedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? username = freezed,Object? photoUrl = freezed,Object? imageUrls = null,Object? videoUrls = null,Object? likesCount = freezed,Object? commentsCount = freezed,Object? sharesCount = freezed,Object? isLiked = null,Object? isBookmarked = null,Object? isFollowing = null,Object? isFollowRequestPending = null,Object? isMe = null,Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideCommentCount = null,Object? hideShareCount = null,Object? hideLikesList = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_FeedModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrls: null == videoUrls ? _self._videoUrls : videoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,commentsCount: freezed == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isFollowRequestPending: null == isFollowRequestPending ? _self.isFollowRequestPending : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,commentsEnabled: null == commentsEnabled ? _self.commentsEnabled : commentsEnabled // ignore: cast_nullable_to_non_nullable
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

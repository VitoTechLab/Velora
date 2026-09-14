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

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'caption') String get content;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'photo_url') String? get photoUrl;@StringListConverter()@JsonKey(name: 'media_urls') List<String> get mediaUrls;@JsonKey(name: 'location') Map<String, dynamic>? get location;@StringListConverter()@JsonKey(name: 'tags') List<String> get tags;@StringListConverter()@JsonKey(name: 'mention_ids') List<String> get mentionIds;@JsonKey(name: 'likes_count') int get likesCount;@JsonKey(name: 'comments_count') int get commentsCount;@JsonKey(name: 'shares_count') int get sharesCount;@JsonKey(name: 'is_liked') bool get isLiked;@JsonKey(name: 'is_bookmarked') bool get isBookmarked;@JsonKey(name: 'is_following') bool get isFollowing;@JsonKey(name: 'is_follow_request_pending') bool get isFollowRequestPending;@JsonKey(name: 'is_me') bool get isMe;@JsonKey(name: 'allow_comments') bool get allowComments;@JsonKey(name: 'allow_share') bool get allowShare;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'campaign_id') String? get campaignId;@JsonKey(name: 'campaign_title') String? get campaignTitle;
/// Create a copy of FeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedModelCopyWith<FeedModel> get copyWith => _$FeedModelCopyWithImpl<FeedModel>(this as FeedModel, _$identity);

  /// Serializes this FeedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&const DeepCollectionEquality().equals(other.location, location)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.mentionIds, mentionIds)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.allowComments, allowComments) || other.allowComments == allowComments)&&(identical(other.allowShare, allowShare) || other.allowShare == allowShare)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,createdAt,username,photoUrl,const DeepCollectionEquality().hash(mediaUrls),const DeepCollectionEquality().hash(location),const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(mentionIds),likesCount,commentsCount,sharesCount,isLiked,isBookmarked,isFollowing,isFollowRequestPending,isMe,allowComments,allowShare,isActive,campaignId,campaignTitle]);

@override
String toString() {
  return 'FeedModel(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, mediaUrls: $mediaUrls, location: $location, tags: $tags, mentionIds: $mentionIds, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, allowComments: $allowComments, allowShare: $allowShare, isActive: $isActive, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $FeedModelCopyWith<$Res>  {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) _then) = _$FeedModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'caption') String content,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'photo_url') String? photoUrl,@StringListConverter()@JsonKey(name: 'media_urls') List<String> mediaUrls,@JsonKey(name: 'location') Map<String, dynamic>? location,@StringListConverter()@JsonKey(name: 'tags') List<String> tags,@StringListConverter()@JsonKey(name: 'mention_ids') List<String> mentionIds,@JsonKey(name: 'likes_count') int likesCount,@JsonKey(name: 'comments_count') int commentsCount,@JsonKey(name: 'shares_count') int sharesCount,@JsonKey(name: 'is_liked') bool isLiked,@JsonKey(name: 'is_bookmarked') bool isBookmarked,@JsonKey(name: 'is_following') bool isFollowing,@JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'allow_comments') bool allowComments,@JsonKey(name: 'allow_share') bool allowShare,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? username = freezed,Object? photoUrl = freezed,Object? mediaUrls = null,Object? location = freezed,Object? tags = null,Object? mentionIds = null,Object? likesCount = null,Object? commentsCount = null,Object? sharesCount = null,Object? isLiked = null,Object? isBookmarked = null,Object? isFollowing = null,Object? isFollowRequestPending = null,Object? isMe = null,Object? allowComments = null,Object? allowShare = null,Object? isActive = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: null == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,mentionIds: null == mentionIds ? _self.mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,sharesCount: null == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isFollowRequestPending: null == isFollowRequestPending ? _self.isFollowRequestPending : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,allowComments: null == allowComments ? _self.allowComments : allowComments // ignore: cast_nullable_to_non_nullable
as bool,allowShare: null == allowShare ? _self.allowShare : allowShare // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'caption')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @StringListConverter()@JsonKey(name: 'media_urls')  List<String> mediaUrls, @JsonKey(name: 'location')  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags')  List<String> tags, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String> mentionIds, @JsonKey(name: 'likes_count')  int likesCount, @JsonKey(name: 'comments_count')  int commentsCount, @JsonKey(name: 'shares_count')  int sharesCount, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'is_bookmarked')  bool isBookmarked, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'allow_comments')  bool allowComments, @JsonKey(name: 'allow_share')  bool allowShare, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedModel() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.mediaUrls,_that.location,_that.tags,_that.mentionIds,_that.likesCount,_that.commentsCount,_that.sharesCount,_that.isLiked,_that.isBookmarked,_that.isFollowing,_that.isFollowRequestPending,_that.isMe,_that.allowComments,_that.allowShare,_that.isActive,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'caption')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @StringListConverter()@JsonKey(name: 'media_urls')  List<String> mediaUrls, @JsonKey(name: 'location')  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags')  List<String> tags, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String> mentionIds, @JsonKey(name: 'likes_count')  int likesCount, @JsonKey(name: 'comments_count')  int commentsCount, @JsonKey(name: 'shares_count')  int sharesCount, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'is_bookmarked')  bool isBookmarked, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'allow_comments')  bool allowComments, @JsonKey(name: 'allow_share')  bool allowShare, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)  $default,) {final _that = this;
switch (_that) {
case _FeedModel():
return $default(_that.id,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.mediaUrls,_that.location,_that.tags,_that.mentionIds,_that.likesCount,_that.commentsCount,_that.sharesCount,_that.isLiked,_that.isBookmarked,_that.isFollowing,_that.isFollowRequestPending,_that.isMe,_that.allowComments,_that.allowShare,_that.isActive,_that.campaignId,_that.campaignTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'caption')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @StringListConverter()@JsonKey(name: 'media_urls')  List<String> mediaUrls, @JsonKey(name: 'location')  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags')  List<String> tags, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String> mentionIds, @JsonKey(name: 'likes_count')  int likesCount, @JsonKey(name: 'comments_count')  int commentsCount, @JsonKey(name: 'shares_count')  int sharesCount, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'is_bookmarked')  bool isBookmarked, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'allow_comments')  bool allowComments, @JsonKey(name: 'allow_share')  bool allowShare, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'campaign_title')  String? campaignTitle)?  $default,) {final _that = this;
switch (_that) {
case _FeedModel() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.mediaUrls,_that.location,_that.tags,_that.mentionIds,_that.likesCount,_that.commentsCount,_that.sharesCount,_that.isLiked,_that.isBookmarked,_that.isFollowing,_that.isFollowRequestPending,_that.isMe,_that.allowComments,_that.allowShare,_that.isActive,_that.campaignId,_that.campaignTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedModel extends FeedModel {
  const _FeedModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'caption') required this.content, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'username') this.username, @JsonKey(name: 'photo_url') this.photoUrl, @StringListConverter()@JsonKey(name: 'media_urls') final  List<String> mediaUrls = const [], @JsonKey(name: 'location') final  Map<String, dynamic>? location, @StringListConverter()@JsonKey(name: 'tags') final  List<String> tags = const [], @StringListConverter()@JsonKey(name: 'mention_ids') final  List<String> mentionIds = const [], @JsonKey(name: 'likes_count') this.likesCount = 0, @JsonKey(name: 'comments_count') this.commentsCount = 0, @JsonKey(name: 'shares_count') this.sharesCount = 0, @JsonKey(name: 'is_liked') this.isLiked = false, @JsonKey(name: 'is_bookmarked') this.isBookmarked = false, @JsonKey(name: 'is_following') this.isFollowing = false, @JsonKey(name: 'is_follow_request_pending') this.isFollowRequestPending = false, @JsonKey(name: 'is_me') this.isMe = false, @JsonKey(name: 'allow_comments') this.allowComments = true, @JsonKey(name: 'allow_share') this.allowShare = true, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'campaign_id') this.campaignId, @JsonKey(name: 'campaign_title') this.campaignTitle}): _mediaUrls = mediaUrls,_location = location,_tags = tags,_mentionIds = mentionIds,super._();
  factory _FeedModel.fromJson(Map<String, dynamic> json) => _$FeedModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'caption') final  String content;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
 final  List<String> _mediaUrls;
@override@StringListConverter()@JsonKey(name: 'media_urls') List<String> get mediaUrls {
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaUrls);
}

 final  Map<String, dynamic>? _location;
@override@JsonKey(name: 'location') Map<String, dynamic>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableMapView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String> _tags;
@override@StringListConverter()@JsonKey(name: 'tags') List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _mentionIds;
@override@StringListConverter()@JsonKey(name: 'mention_ids') List<String> get mentionIds {
  if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionIds);
}

@override@JsonKey(name: 'likes_count') final  int likesCount;
@override@JsonKey(name: 'comments_count') final  int commentsCount;
@override@JsonKey(name: 'shares_count') final  int sharesCount;
@override@JsonKey(name: 'is_liked') final  bool isLiked;
@override@JsonKey(name: 'is_bookmarked') final  bool isBookmarked;
@override@JsonKey(name: 'is_following') final  bool isFollowing;
@override@JsonKey(name: 'is_follow_request_pending') final  bool isFollowRequestPending;
@override@JsonKey(name: 'is_me') final  bool isMe;
@override@JsonKey(name: 'allow_comments') final  bool allowComments;
@override@JsonKey(name: 'allow_share') final  bool allowShare;
@override@JsonKey(name: 'is_active') final  bool isActive;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&const DeepCollectionEquality().equals(other._location, _location)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._mentionIds, _mentionIds)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.allowComments, allowComments) || other.allowComments == allowComments)&&(identical(other.allowShare, allowShare) || other.allowShare == allowShare)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,createdAt,username,photoUrl,const DeepCollectionEquality().hash(_mediaUrls),const DeepCollectionEquality().hash(_location),const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_mentionIds),likesCount,commentsCount,sharesCount,isLiked,isBookmarked,isFollowing,isFollowRequestPending,isMe,allowComments,allowShare,isActive,campaignId,campaignTitle]);

@override
String toString() {
  return 'FeedModel(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, mediaUrls: $mediaUrls, location: $location, tags: $tags, mentionIds: $mentionIds, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, allowComments: $allowComments, allowShare: $allowShare, isActive: $isActive, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class _$FeedModelCopyWith<$Res> implements $FeedModelCopyWith<$Res> {
  factory _$FeedModelCopyWith(_FeedModel value, $Res Function(_FeedModel) _then) = __$FeedModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'caption') String content,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'photo_url') String? photoUrl,@StringListConverter()@JsonKey(name: 'media_urls') List<String> mediaUrls,@JsonKey(name: 'location') Map<String, dynamic>? location,@StringListConverter()@JsonKey(name: 'tags') List<String> tags,@StringListConverter()@JsonKey(name: 'mention_ids') List<String> mentionIds,@JsonKey(name: 'likes_count') int likesCount,@JsonKey(name: 'comments_count') int commentsCount,@JsonKey(name: 'shares_count') int sharesCount,@JsonKey(name: 'is_liked') bool isLiked,@JsonKey(name: 'is_bookmarked') bool isBookmarked,@JsonKey(name: 'is_following') bool isFollowing,@JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'allow_comments') bool allowComments,@JsonKey(name: 'allow_share') bool allowShare,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'campaign_title') String? campaignTitle
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? username = freezed,Object? photoUrl = freezed,Object? mediaUrls = null,Object? location = freezed,Object? tags = null,Object? mentionIds = null,Object? likesCount = null,Object? commentsCount = null,Object? sharesCount = null,Object? isLiked = null,Object? isBookmarked = null,Object? isFollowing = null,Object? isFollowRequestPending = null,Object? isMe = null,Object? allowComments = null,Object? allowShare = null,Object? isActive = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_FeedModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: null == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,mentionIds: null == mentionIds ? _self._mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,sharesCount: null == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isFollowRequestPending: null == isFollowRequestPending ? _self.isFollowRequestPending : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,allowComments: null == allowComments ? _self.allowComments : allowComments // ignore: cast_nullable_to_non_nullable
as bool,allowShare: null == allowShare ? _self.allowShare : allowShare // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

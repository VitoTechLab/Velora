// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedEntity {

 String get id; String get userId; String get content; DateTime get createdAt;// User info (from profiles join)
 String? get username; String? get photoUrl; List<String> get imageUrls; List<String> get videoUrls;// Counts (nullable as they might be hidden)
 int? get likesCount; int? get commentsCount; int? get sharesCount;// Interaction Status (computed by View)
 bool get isLiked; bool get isBookmarked; bool get isFollowing; bool get isFollowRequestPending; bool get isMe; bool get commentsEnabled; bool get hideLikeCount; bool get hideCommentCount; bool get hideShareCount; bool get hideLikesList; String? get campaignId; String? get campaignTitle;
/// Create a copy of FeedEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<FeedEntity> get copyWith => _$FeedEntityCopyWithImpl<FeedEntity>(this as FeedEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&const DeepCollectionEquality().equals(other.videoUrls, videoUrls)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,createdAt,username,photoUrl,const DeepCollectionEquality().hash(imageUrls),const DeepCollectionEquality().hash(videoUrls),likesCount,commentsCount,sharesCount,isLiked,isBookmarked,isFollowing,isFollowRequestPending,isMe,commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle]);

@override
String toString() {
  return 'FeedEntity(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, imageUrls: $imageUrls, videoUrls: $videoUrls, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class $FeedEntityCopyWith<$Res>  {
  factory $FeedEntityCopyWith(FeedEntity value, $Res Function(FeedEntity) _then) = _$FeedEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String content, DateTime createdAt, String? username, String? photoUrl, List<String> imageUrls, List<String> videoUrls, int? likesCount, int? commentsCount, int? sharesCount, bool isLiked, bool isBookmarked, bool isFollowing, bool isFollowRequestPending, bool isMe, bool commentsEnabled, bool hideLikeCount, bool hideCommentCount, bool hideShareCount, bool hideLikesList, String? campaignId, String? campaignTitle
});




}
/// @nodoc
class _$FeedEntityCopyWithImpl<$Res>
    implements $FeedEntityCopyWith<$Res> {
  _$FeedEntityCopyWithImpl(this._self, this._then);

  final FeedEntity _self;
  final $Res Function(FeedEntity) _then;

/// Create a copy of FeedEntity
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


/// Adds pattern-matching-related methods to [FeedEntity].
extension FeedEntityPatterns on FeedEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedEntity value)  $default,){
final _that = this;
switch (_that) {
case _FeedEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FeedEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String content,  DateTime createdAt,  String? username,  String? photoUrl,  List<String> imageUrls,  List<String> videoUrls,  int? likesCount,  int? commentsCount,  int? sharesCount,  bool isLiked,  bool isBookmarked,  bool isFollowing,  bool isFollowRequestPending,  bool isMe,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String content,  DateTime createdAt,  String? username,  String? photoUrl,  List<String> imageUrls,  List<String> videoUrls,  int? likesCount,  int? commentsCount,  int? sharesCount,  bool isLiked,  bool isBookmarked,  bool isFollowing,  bool isFollowRequestPending,  bool isMe,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)  $default,) {final _that = this;
switch (_that) {
case _FeedEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String content,  DateTime createdAt,  String? username,  String? photoUrl,  List<String> imageUrls,  List<String> videoUrls,  int? likesCount,  int? commentsCount,  int? sharesCount,  bool isLiked,  bool isBookmarked,  bool isFollowing,  bool isFollowRequestPending,  bool isMe,  bool commentsEnabled,  bool hideLikeCount,  bool hideCommentCount,  bool hideShareCount,  bool hideLikesList,  String? campaignId,  String? campaignTitle)?  $default,) {final _that = this;
switch (_that) {
case _FeedEntity() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.imageUrls,_that.videoUrls,_that.likesCount,_that.commentsCount,_that.sharesCount,_that.isLiked,_that.isBookmarked,_that.isFollowing,_that.isFollowRequestPending,_that.isMe,_that.commentsEnabled,_that.hideLikeCount,_that.hideCommentCount,_that.hideShareCount,_that.hideLikesList,_that.campaignId,_that.campaignTitle);case _:
  return null;

}
}

}

/// @nodoc


class _FeedEntity extends FeedEntity {
  const _FeedEntity({required this.id, required this.userId, required this.content, required this.createdAt, this.username, this.photoUrl, final  List<String> imageUrls = const <String>[], final  List<String> videoUrls = const <String>[], this.likesCount, this.commentsCount, this.sharesCount, this.isLiked = false, this.isBookmarked = false, this.isFollowing = false, this.isFollowRequestPending = false, this.isMe = false, this.commentsEnabled = true, this.hideLikeCount = false, this.hideCommentCount = false, this.hideShareCount = false, this.hideLikesList = false, this.campaignId, this.campaignTitle}): _imageUrls = imageUrls,_videoUrls = videoUrls,super._();
  

@override final  String id;
@override final  String userId;
@override final  String content;
@override final  DateTime createdAt;
// User info (from profiles join)
@override final  String? username;
@override final  String? photoUrl;
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

// Counts (nullable as they might be hidden)
@override final  int? likesCount;
@override final  int? commentsCount;
@override final  int? sharesCount;
// Interaction Status (computed by View)
@override@JsonKey() final  bool isLiked;
@override@JsonKey() final  bool isBookmarked;
@override@JsonKey() final  bool isFollowing;
@override@JsonKey() final  bool isFollowRequestPending;
@override@JsonKey() final  bool isMe;
@override@JsonKey() final  bool commentsEnabled;
@override@JsonKey() final  bool hideLikeCount;
@override@JsonKey() final  bool hideCommentCount;
@override@JsonKey() final  bool hideShareCount;
@override@JsonKey() final  bool hideLikesList;
@override final  String? campaignId;
@override final  String? campaignTitle;

/// Create a copy of FeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedEntityCopyWith<_FeedEntity> get copyWith => __$FeedEntityCopyWithImpl<_FeedEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._videoUrls, _videoUrls)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,createdAt,username,photoUrl,const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_videoUrls),likesCount,commentsCount,sharesCount,isLiked,isBookmarked,isFollowing,isFollowRequestPending,isMe,commentsEnabled,hideLikeCount,hideCommentCount,hideShareCount,hideLikesList,campaignId,campaignTitle]);

@override
String toString() {
  return 'FeedEntity(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, imageUrls: $imageUrls, videoUrls: $videoUrls, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
}


}

/// @nodoc
abstract mixin class _$FeedEntityCopyWith<$Res> implements $FeedEntityCopyWith<$Res> {
  factory _$FeedEntityCopyWith(_FeedEntity value, $Res Function(_FeedEntity) _then) = __$FeedEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String content, DateTime createdAt, String? username, String? photoUrl, List<String> imageUrls, List<String> videoUrls, int? likesCount, int? commentsCount, int? sharesCount, bool isLiked, bool isBookmarked, bool isFollowing, bool isFollowRequestPending, bool isMe, bool commentsEnabled, bool hideLikeCount, bool hideCommentCount, bool hideShareCount, bool hideLikesList, String? campaignId, String? campaignTitle
});




}
/// @nodoc
class __$FeedEntityCopyWithImpl<$Res>
    implements _$FeedEntityCopyWith<$Res> {
  __$FeedEntityCopyWithImpl(this._self, this._then);

  final _FeedEntity _self;
  final $Res Function(_FeedEntity) _then;

/// Create a copy of FeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? username = freezed,Object? photoUrl = freezed,Object? imageUrls = null,Object? videoUrls = null,Object? likesCount = freezed,Object? commentsCount = freezed,Object? sharesCount = freezed,Object? isLiked = null,Object? isBookmarked = null,Object? isFollowing = null,Object? isFollowRequestPending = null,Object? isMe = null,Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideCommentCount = null,Object? hideShareCount = null,Object? hideLikesList = null,Object? campaignId = freezed,Object? campaignTitle = freezed,}) {
  return _then(_FeedEntity(
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

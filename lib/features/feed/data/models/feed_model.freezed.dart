// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) {
  return _FeedModel.fromJson(json);
}

/// @nodoc
mixin _$FeedModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from profiles (read-only)
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'video_urls')
  List<String> get videoUrls =>
      throw _privateConstructorUsedError; // Counts can be masked (nullable)
  @JsonKey(name: 'likes_count')
  int? get likesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_count')
  int? get commentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares_count')
  int? get sharesCount =>
      throw _privateConstructorUsedError; // Computed per viewer (read-only)
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_bookmarked')
  bool get isBookmarked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_following')
  bool get isFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_follow_request_pending')
  bool get isFollowRequestPending => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_me')
  bool get isMe => throw _privateConstructorUsedError; // Post privacy settings
  @JsonKey(name: 'comments_enabled')
  bool get commentsEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_like_count')
  bool get hideLikeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_comment_count')
  bool get hideCommentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_share_count')
  bool get hideShareCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_likes_list')
  bool get hideLikesList =>
      throw _privateConstructorUsedError; // Campaign association
  @JsonKey(name: 'campaign_id')
  String? get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_title')
  String? get campaignTitle => throw _privateConstructorUsedError;

  /// Serializes this FeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedModelCopyWith<FeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedModelCopyWith<$Res> {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) then) =
      _$FeedModelCopyWithImpl<$Res, FeedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'content') String content,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @StringListConverter()
      @JsonKey(name: 'image_urls')
      List<String> imageUrls,
      @StringListConverter()
      @JsonKey(name: 'video_urls')
      List<String> videoUrls,
      @JsonKey(name: 'likes_count') int? likesCount,
      @JsonKey(name: 'comments_count') int? commentsCount,
      @JsonKey(name: 'shares_count') int? sharesCount,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_bookmarked') bool isBookmarked,
      @JsonKey(name: 'is_following') bool isFollowing,
      @JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,
      @JsonKey(name: 'is_me') bool isMe,
      @JsonKey(name: 'comments_enabled') bool commentsEnabled,
      @JsonKey(name: 'hide_like_count') bool hideLikeCount,
      @JsonKey(name: 'hide_comment_count') bool hideCommentCount,
      @JsonKey(name: 'hide_share_count') bool hideShareCount,
      @JsonKey(name: 'hide_likes_list') bool hideLikesList,
      @JsonKey(name: 'campaign_id') String? campaignId,
      @JsonKey(name: 'campaign_title') String? campaignTitle});
}

/// @nodoc
class _$FeedModelCopyWithImpl<$Res, $Val extends FeedModel>
    implements $FeedModelCopyWith<$Res> {
  _$FeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? imageUrls = null,
    Object? videoUrls = null,
    Object? likesCount = freezed,
    Object? commentsCount = freezed,
    Object? sharesCount = freezed,
    Object? isLiked = null,
    Object? isBookmarked = null,
    Object? isFollowing = null,
    Object? isFollowRequestPending = null,
    Object? isMe = null,
    Object? commentsEnabled = null,
    Object? hideLikeCount = null,
    Object? hideCommentCount = null,
    Object? hideShareCount = null,
    Object? hideLikesList = null,
    Object? campaignId = freezed,
    Object? campaignTitle = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrls: null == videoUrls
          ? _value.videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentsCount: freezed == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesCount: freezed == sharesCount
          ? _value.sharesCount
          : sharesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowRequestPending: null == isFollowRequestPending
          ? _value.isFollowRequestPending
          : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
              as bool,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsEnabled: null == commentsEnabled
          ? _value.commentsEnabled
          : commentsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLikeCount: null == hideLikeCount
          ? _value.hideLikeCount
          : hideLikeCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideCommentCount: null == hideCommentCount
          ? _value.hideCommentCount
          : hideCommentCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideShareCount: null == hideShareCount
          ? _value.hideShareCount
          : hideShareCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLikesList: null == hideLikesList
          ? _value.hideLikesList
          : hideLikesList // ignore: cast_nullable_to_non_nullable
              as bool,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedModelImplCopyWith<$Res>
    implements $FeedModelCopyWith<$Res> {
  factory _$$FeedModelImplCopyWith(
          _$FeedModelImpl value, $Res Function(_$FeedModelImpl) then) =
      __$$FeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'content') String content,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @StringListConverter()
      @JsonKey(name: 'image_urls')
      List<String> imageUrls,
      @StringListConverter()
      @JsonKey(name: 'video_urls')
      List<String> videoUrls,
      @JsonKey(name: 'likes_count') int? likesCount,
      @JsonKey(name: 'comments_count') int? commentsCount,
      @JsonKey(name: 'shares_count') int? sharesCount,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_bookmarked') bool isBookmarked,
      @JsonKey(name: 'is_following') bool isFollowing,
      @JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,
      @JsonKey(name: 'is_me') bool isMe,
      @JsonKey(name: 'comments_enabled') bool commentsEnabled,
      @JsonKey(name: 'hide_like_count') bool hideLikeCount,
      @JsonKey(name: 'hide_comment_count') bool hideCommentCount,
      @JsonKey(name: 'hide_share_count') bool hideShareCount,
      @JsonKey(name: 'hide_likes_list') bool hideLikesList,
      @JsonKey(name: 'campaign_id') String? campaignId,
      @JsonKey(name: 'campaign_title') String? campaignTitle});
}

/// @nodoc
class __$$FeedModelImplCopyWithImpl<$Res>
    extends _$FeedModelCopyWithImpl<$Res, _$FeedModelImpl>
    implements _$$FeedModelImplCopyWith<$Res> {
  __$$FeedModelImplCopyWithImpl(
      _$FeedModelImpl _value, $Res Function(_$FeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? imageUrls = null,
    Object? videoUrls = null,
    Object? likesCount = freezed,
    Object? commentsCount = freezed,
    Object? sharesCount = freezed,
    Object? isLiked = null,
    Object? isBookmarked = null,
    Object? isFollowing = null,
    Object? isFollowRequestPending = null,
    Object? isMe = null,
    Object? commentsEnabled = null,
    Object? hideLikeCount = null,
    Object? hideCommentCount = null,
    Object? hideShareCount = null,
    Object? hideLikesList = null,
    Object? campaignId = freezed,
    Object? campaignTitle = freezed,
  }) {
    return _then(_$FeedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrls: null == videoUrls
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentsCount: freezed == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesCount: freezed == sharesCount
          ? _value.sharesCount
          : sharesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowRequestPending: null == isFollowRequestPending
          ? _value.isFollowRequestPending
          : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
              as bool,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsEnabled: null == commentsEnabled
          ? _value.commentsEnabled
          : commentsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLikeCount: null == hideLikeCount
          ? _value.hideLikeCount
          : hideLikeCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideCommentCount: null == hideCommentCount
          ? _value.hideCommentCount
          : hideCommentCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideShareCount: null == hideShareCount
          ? _value.hideShareCount
          : hideShareCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLikesList: null == hideLikesList
          ? _value.hideLikesList
          : hideLikesList // ignore: cast_nullable_to_non_nullable
              as bool,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedModelImpl extends _FeedModel {
  const _$FeedModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'content') required this.content,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @StringListConverter()
      @JsonKey(name: 'image_urls')
      final List<String> imageUrls = const [],
      @StringListConverter()
      @JsonKey(name: 'video_urls')
      final List<String> videoUrls = const [],
      @JsonKey(name: 'likes_count') this.likesCount,
      @JsonKey(name: 'comments_count') this.commentsCount,
      @JsonKey(name: 'shares_count') this.sharesCount,
      @JsonKey(name: 'is_liked') this.isLiked = false,
      @JsonKey(name: 'is_bookmarked') this.isBookmarked = false,
      @JsonKey(name: 'is_following') this.isFollowing = false,
      @JsonKey(name: 'is_follow_request_pending')
      this.isFollowRequestPending = false,
      @JsonKey(name: 'is_me') this.isMe = false,
      @JsonKey(name: 'comments_enabled') this.commentsEnabled = true,
      @JsonKey(name: 'hide_like_count') this.hideLikeCount = false,
      @JsonKey(name: 'hide_comment_count') this.hideCommentCount = false,
      @JsonKey(name: 'hide_share_count') this.hideShareCount = false,
      @JsonKey(name: 'hide_likes_list') this.hideLikesList = false,
      @JsonKey(name: 'campaign_id') this.campaignId,
      @JsonKey(name: 'campaign_title') this.campaignTitle})
      : _imageUrls = imageUrls,
        _videoUrls = videoUrls,
        super._();

  factory _$FeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// Joined from profiles (read-only)
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  final List<String> _imageUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  final List<String> _videoUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'video_urls')
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

// Counts can be masked (nullable)
  @override
  @JsonKey(name: 'likes_count')
  final int? likesCount;
  @override
  @JsonKey(name: 'comments_count')
  final int? commentsCount;
  @override
  @JsonKey(name: 'shares_count')
  final int? sharesCount;
// Computed per viewer (read-only)
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  @override
  @JsonKey(name: 'is_bookmarked')
  final bool isBookmarked;
  @override
  @JsonKey(name: 'is_following')
  final bool isFollowing;
  @override
  @JsonKey(name: 'is_follow_request_pending')
  final bool isFollowRequestPending;
  @override
  @JsonKey(name: 'is_me')
  final bool isMe;
// Post privacy settings
  @override
  @JsonKey(name: 'comments_enabled')
  final bool commentsEnabled;
  @override
  @JsonKey(name: 'hide_like_count')
  final bool hideLikeCount;
  @override
  @JsonKey(name: 'hide_comment_count')
  final bool hideCommentCount;
  @override
  @JsonKey(name: 'hide_share_count')
  final bool hideShareCount;
  @override
  @JsonKey(name: 'hide_likes_list')
  final bool hideLikesList;
// Campaign association
  @override
  @JsonKey(name: 'campaign_id')
  final String? campaignId;
  @override
  @JsonKey(name: 'campaign_title')
  final String? campaignTitle;

  @override
  String toString() {
    return 'FeedModel(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, imageUrls: $imageUrls, videoUrls: $videoUrls, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality()
                .equals(other._videoUrls, _videoUrls) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.sharesCount, sharesCount) ||
                other.sharesCount == sharesCount) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.isFollowRequestPending, isFollowRequestPending) ||
                other.isFollowRequestPending == isFollowRequestPending) &&
            (identical(other.isMe, isMe) || other.isMe == isMe) &&
            (identical(other.commentsEnabled, commentsEnabled) ||
                other.commentsEnabled == commentsEnabled) &&
            (identical(other.hideLikeCount, hideLikeCount) ||
                other.hideLikeCount == hideLikeCount) &&
            (identical(other.hideCommentCount, hideCommentCount) ||
                other.hideCommentCount == hideCommentCount) &&
            (identical(other.hideShareCount, hideShareCount) ||
                other.hideShareCount == hideShareCount) &&
            (identical(other.hideLikesList, hideLikesList) ||
                other.hideLikesList == hideLikesList) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignTitle, campaignTitle) ||
                other.campaignTitle == campaignTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        content,
        createdAt,
        username,
        photoUrl,
        const DeepCollectionEquality().hash(_imageUrls),
        const DeepCollectionEquality().hash(_videoUrls),
        likesCount,
        commentsCount,
        sharesCount,
        isLiked,
        isBookmarked,
        isFollowing,
        isFollowRequestPending,
        isMe,
        commentsEnabled,
        hideLikeCount,
        hideCommentCount,
        hideShareCount,
        hideLikesList,
        campaignId,
        campaignTitle
      ]);

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      __$$FeedModelImplCopyWithImpl<_$FeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedModelImplToJson(
      this,
    );
  }
}

abstract class _FeedModel extends FeedModel {
  const factory _FeedModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'content') required final String content,
          @UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'photo_url') final String? photoUrl,
          @StringListConverter()
          @JsonKey(name: 'image_urls')
          final List<String> imageUrls,
          @StringListConverter()
          @JsonKey(name: 'video_urls')
          final List<String> videoUrls,
          @JsonKey(name: 'likes_count') final int? likesCount,
          @JsonKey(name: 'comments_count') final int? commentsCount,
          @JsonKey(name: 'shares_count') final int? sharesCount,
          @JsonKey(name: 'is_liked') final bool isLiked,
          @JsonKey(name: 'is_bookmarked') final bool isBookmarked,
          @JsonKey(name: 'is_following') final bool isFollowing,
          @JsonKey(name: 'is_follow_request_pending')
          final bool isFollowRequestPending,
          @JsonKey(name: 'is_me') final bool isMe,
          @JsonKey(name: 'comments_enabled') final bool commentsEnabled,
          @JsonKey(name: 'hide_like_count') final bool hideLikeCount,
          @JsonKey(name: 'hide_comment_count') final bool hideCommentCount,
          @JsonKey(name: 'hide_share_count') final bool hideShareCount,
          @JsonKey(name: 'hide_likes_list') final bool hideLikesList,
          @JsonKey(name: 'campaign_id') final String? campaignId,
          @JsonKey(name: 'campaign_title') final String? campaignTitle}) =
      _$FeedModelImpl;
  const _FeedModel._() : super._();

  factory _FeedModel.fromJson(Map<String, dynamic> json) =
      _$FeedModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // Joined from profiles (read-only)
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @StringListConverter()
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'video_urls')
  List<String> get videoUrls; // Counts can be masked (nullable)
  @override
  @JsonKey(name: 'likes_count')
  int? get likesCount;
  @override
  @JsonKey(name: 'comments_count')
  int? get commentsCount;
  @override
  @JsonKey(name: 'shares_count')
  int? get sharesCount; // Computed per viewer (read-only)
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  @JsonKey(name: 'is_bookmarked')
  bool get isBookmarked;
  @override
  @JsonKey(name: 'is_following')
  bool get isFollowing;
  @override
  @JsonKey(name: 'is_follow_request_pending')
  bool get isFollowRequestPending;
  @override
  @JsonKey(name: 'is_me')
  bool get isMe; // Post privacy settings
  @override
  @JsonKey(name: 'comments_enabled')
  bool get commentsEnabled;
  @override
  @JsonKey(name: 'hide_like_count')
  bool get hideLikeCount;
  @override
  @JsonKey(name: 'hide_comment_count')
  bool get hideCommentCount;
  @override
  @JsonKey(name: 'hide_share_count')
  bool get hideShareCount;
  @override
  @JsonKey(name: 'hide_likes_list')
  bool get hideLikesList; // Campaign association
  @override
  @JsonKey(name: 'campaign_id')
  String? get campaignId;
  @override
  @JsonKey(name: 'campaign_title')
  String? get campaignTitle;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

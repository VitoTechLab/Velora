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
  @JsonKey(name: 'caption')
  String get content => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'media_urls')
  List<String> get mediaUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Map<String, dynamic>? get location => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'tags')
  List<String> get tags => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'mention_ids')
  List<String> get mentionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes_count')
  int get likesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_count')
  int get commentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares_count')
  int get sharesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_bookmarked')
  bool get isBookmarked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_following')
  bool get isFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_follow_request_pending')
  bool get isFollowRequestPending => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_me')
  bool get isMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_comments')
  bool get allowComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_share')
  bool get allowShare => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'caption') String content,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @StringListConverter()
      @JsonKey(name: 'media_urls')
      List<String> mediaUrls,
      @JsonKey(name: 'location') Map<String, dynamic>? location,
      @StringListConverter() @JsonKey(name: 'tags') List<String> tags,
      @StringListConverter()
      @JsonKey(name: 'mention_ids')
      List<String> mentionIds,
      @JsonKey(name: 'likes_count') int likesCount,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'shares_count') int sharesCount,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_bookmarked') bool isBookmarked,
      @JsonKey(name: 'is_following') bool isFollowing,
      @JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,
      @JsonKey(name: 'is_me') bool isMe,
      @JsonKey(name: 'allow_comments') bool allowComments,
      @JsonKey(name: 'allow_share') bool allowShare,
      @JsonKey(name: 'is_active') bool isActive,
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
    Object? mediaUrls = null,
    Object? location = freezed,
    Object? tags = null,
    Object? mentionIds = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? sharesCount = null,
    Object? isLiked = null,
    Object? isBookmarked = null,
    Object? isFollowing = null,
    Object? isFollowRequestPending = null,
    Object? isMe = null,
    Object? allowComments = null,
    Object? allowShare = null,
    Object? isActive = null,
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
      mediaUrls: null == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionIds: null == mentionIds
          ? _value.mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sharesCount: null == sharesCount
          ? _value.sharesCount
          : sharesCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      allowShare: null == allowShare
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'caption') String content,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @StringListConverter()
      @JsonKey(name: 'media_urls')
      List<String> mediaUrls,
      @JsonKey(name: 'location') Map<String, dynamic>? location,
      @StringListConverter() @JsonKey(name: 'tags') List<String> tags,
      @StringListConverter()
      @JsonKey(name: 'mention_ids')
      List<String> mentionIds,
      @JsonKey(name: 'likes_count') int likesCount,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'shares_count') int sharesCount,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_bookmarked') bool isBookmarked,
      @JsonKey(name: 'is_following') bool isFollowing,
      @JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,
      @JsonKey(name: 'is_me') bool isMe,
      @JsonKey(name: 'allow_comments') bool allowComments,
      @JsonKey(name: 'allow_share') bool allowShare,
      @JsonKey(name: 'is_active') bool isActive,
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
    Object? mediaUrls = null,
    Object? location = freezed,
    Object? tags = null,
    Object? mentionIds = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? sharesCount = null,
    Object? isLiked = null,
    Object? isBookmarked = null,
    Object? isFollowing = null,
    Object? isFollowRequestPending = null,
    Object? isMe = null,
    Object? allowComments = null,
    Object? allowShare = null,
    Object? isActive = null,
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
      mediaUrls: null == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionIds: null == mentionIds
          ? _value._mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sharesCount: null == sharesCount
          ? _value.sharesCount
          : sharesCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      allowShare: null == allowShare
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'caption') required this.content,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @StringListConverter()
      @JsonKey(name: 'media_urls')
      final List<String> mediaUrls = const [],
      @JsonKey(name: 'location') final Map<String, dynamic>? location,
      @StringListConverter()
      @JsonKey(name: 'tags')
      final List<String> tags = const [],
      @StringListConverter()
      @JsonKey(name: 'mention_ids')
      final List<String> mentionIds = const [],
      @JsonKey(name: 'likes_count') this.likesCount = 0,
      @JsonKey(name: 'comments_count') this.commentsCount = 0,
      @JsonKey(name: 'shares_count') this.sharesCount = 0,
      @JsonKey(name: 'is_liked') this.isLiked = false,
      @JsonKey(name: 'is_bookmarked') this.isBookmarked = false,
      @JsonKey(name: 'is_following') this.isFollowing = false,
      @JsonKey(name: 'is_follow_request_pending')
      this.isFollowRequestPending = false,
      @JsonKey(name: 'is_me') this.isMe = false,
      @JsonKey(name: 'allow_comments') this.allowComments = true,
      @JsonKey(name: 'allow_share') this.allowShare = true,
      @JsonKey(name: 'is_active') this.isActive = true,
      @JsonKey(name: 'campaign_id') this.campaignId,
      @JsonKey(name: 'campaign_title') this.campaignTitle})
      : _mediaUrls = mediaUrls,
        _location = location,
        _tags = tags,
        _mentionIds = mentionIds,
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
  @JsonKey(name: 'caption')
  final String content;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  final List<String> _mediaUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'media_urls')
  List<String> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaUrls);
  }

  final Map<String, dynamic>? _location;
  @override
  @JsonKey(name: 'location')
  Map<String, dynamic>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String> _tags;
  @override
  @StringListConverter()
  @JsonKey(name: 'tags')
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _mentionIds;
  @override
  @StringListConverter()
  @JsonKey(name: 'mention_ids')
  List<String> get mentionIds {
    if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentionIds);
  }

  @override
  @JsonKey(name: 'likes_count')
  final int likesCount;
  @override
  @JsonKey(name: 'comments_count')
  final int commentsCount;
  @override
  @JsonKey(name: 'shares_count')
  final int sharesCount;
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
  @override
  @JsonKey(name: 'allow_comments')
  final bool allowComments;
  @override
  @JsonKey(name: 'allow_share')
  final bool allowShare;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'campaign_id')
  final String? campaignId;
  @override
  @JsonKey(name: 'campaign_title')
  final String? campaignTitle;

  @override
  String toString() {
    return 'FeedModel(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, mediaUrls: $mediaUrls, location: $location, tags: $tags, mentionIds: $mentionIds, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, allowComments: $allowComments, allowShare: $allowShare, isActive: $isActive, campaignId: $campaignId, campaignTitle: $campaignTitle)';
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
                .equals(other._mediaUrls, _mediaUrls) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._mentionIds, _mentionIds) &&
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
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.allowShare, allowShare) ||
                other.allowShare == allowShare) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
        const DeepCollectionEquality().hash(_mediaUrls),
        const DeepCollectionEquality().hash(_location),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_mentionIds),
        likesCount,
        commentsCount,
        sharesCount,
        isLiked,
        isBookmarked,
        isFollowing,
        isFollowRequestPending,
        isMe,
        allowComments,
        allowShare,
        isActive,
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
          @JsonKey(name: 'caption') required final String content,
          @UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'photo_url') final String? photoUrl,
          @StringListConverter()
          @JsonKey(name: 'media_urls')
          final List<String> mediaUrls,
          @JsonKey(name: 'location') final Map<String, dynamic>? location,
          @StringListConverter() @JsonKey(name: 'tags') final List<String> tags,
          @StringListConverter()
          @JsonKey(name: 'mention_ids')
          final List<String> mentionIds,
          @JsonKey(name: 'likes_count') final int likesCount,
          @JsonKey(name: 'comments_count') final int commentsCount,
          @JsonKey(name: 'shares_count') final int sharesCount,
          @JsonKey(name: 'is_liked') final bool isLiked,
          @JsonKey(name: 'is_bookmarked') final bool isBookmarked,
          @JsonKey(name: 'is_following') final bool isFollowing,
          @JsonKey(name: 'is_follow_request_pending')
          final bool isFollowRequestPending,
          @JsonKey(name: 'is_me') final bool isMe,
          @JsonKey(name: 'allow_comments') final bool allowComments,
          @JsonKey(name: 'allow_share') final bool allowShare,
          @JsonKey(name: 'is_active') final bool isActive,
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
  @JsonKey(name: 'caption')
  String get content;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @StringListConverter()
  @JsonKey(name: 'media_urls')
  List<String> get mediaUrls;
  @override
  @JsonKey(name: 'location')
  Map<String, dynamic>? get location;
  @override
  @StringListConverter()
  @JsonKey(name: 'tags')
  List<String> get tags;
  @override
  @StringListConverter()
  @JsonKey(name: 'mention_ids')
  List<String> get mentionIds;
  @override
  @JsonKey(name: 'likes_count')
  int get likesCount;
  @override
  @JsonKey(name: 'comments_count')
  int get commentsCount;
  @override
  @JsonKey(name: 'shares_count')
  int get sharesCount;
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
  bool get isMe;
  @override
  @JsonKey(name: 'allow_comments')
  bool get allowComments;
  @override
  @JsonKey(name: 'allow_share')
  bool get allowShare;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
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

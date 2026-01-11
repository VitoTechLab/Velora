// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // User info (from profiles join)
  String? get username => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  List<String> get videoUrls =>
      throw _privateConstructorUsedError; // Counts (nullable as they might be hidden)
  int? get likesCount => throw _privateConstructorUsedError;
  int? get commentsCount => throw _privateConstructorUsedError;
  int? get sharesCount =>
      throw _privateConstructorUsedError; // Interaction Status (computed by View)
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  bool get isFollowRequestPending => throw _privateConstructorUsedError;
  bool get isMe => throw _privateConstructorUsedError;
  bool get commentsEnabled => throw _privateConstructorUsedError;
  bool get hideLikeCount => throw _privateConstructorUsedError;
  bool get hideCommentCount => throw _privateConstructorUsedError;
  bool get hideShareCount => throw _privateConstructorUsedError;
  bool get hideLikesList => throw _privateConstructorUsedError;
  String? get campaignId => throw _privateConstructorUsedError;
  String? get campaignTitle => throw _privateConstructorUsedError;

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedEntityCopyWith<FeedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEntityCopyWith<$Res> {
  factory $FeedEntityCopyWith(
          FeedEntity value, $Res Function(FeedEntity) then) =
      _$FeedEntityCopyWithImpl<$Res, FeedEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String content,
      DateTime createdAt,
      String? username,
      String? photoUrl,
      List<String> imageUrls,
      List<String> videoUrls,
      int? likesCount,
      int? commentsCount,
      int? sharesCount,
      bool isLiked,
      bool isBookmarked,
      bool isFollowing,
      bool isFollowRequestPending,
      bool isMe,
      bool commentsEnabled,
      bool hideLikeCount,
      bool hideCommentCount,
      bool hideShareCount,
      bool hideLikesList,
      String? campaignId,
      String? campaignTitle});
}

/// @nodoc
class _$FeedEntityCopyWithImpl<$Res, $Val extends FeedEntity>
    implements $FeedEntityCopyWith<$Res> {
  _$FeedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedEntity
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
abstract class _$$FeedEntityImplCopyWith<$Res>
    implements $FeedEntityCopyWith<$Res> {
  factory _$$FeedEntityImplCopyWith(
          _$FeedEntityImpl value, $Res Function(_$FeedEntityImpl) then) =
      __$$FeedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String content,
      DateTime createdAt,
      String? username,
      String? photoUrl,
      List<String> imageUrls,
      List<String> videoUrls,
      int? likesCount,
      int? commentsCount,
      int? sharesCount,
      bool isLiked,
      bool isBookmarked,
      bool isFollowing,
      bool isFollowRequestPending,
      bool isMe,
      bool commentsEnabled,
      bool hideLikeCount,
      bool hideCommentCount,
      bool hideShareCount,
      bool hideLikesList,
      String? campaignId,
      String? campaignTitle});
}

/// @nodoc
class __$$FeedEntityImplCopyWithImpl<$Res>
    extends _$FeedEntityCopyWithImpl<$Res, _$FeedEntityImpl>
    implements _$$FeedEntityImplCopyWith<$Res> {
  __$$FeedEntityImplCopyWithImpl(
      _$FeedEntityImpl _value, $Res Function(_$FeedEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEntity
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
    return _then(_$FeedEntityImpl(
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

class _$FeedEntityImpl extends _FeedEntity {
  const _$FeedEntityImpl(
      {required this.id,
      required this.userId,
      required this.content,
      required this.createdAt,
      this.username,
      this.photoUrl,
      final List<String> imageUrls = const <String>[],
      final List<String> videoUrls = const <String>[],
      this.likesCount,
      this.commentsCount,
      this.sharesCount,
      this.isLiked = false,
      this.isBookmarked = false,
      this.isFollowing = false,
      this.isFollowRequestPending = false,
      this.isMe = false,
      this.commentsEnabled = true,
      this.hideLikeCount = false,
      this.hideCommentCount = false,
      this.hideShareCount = false,
      this.hideLikesList = false,
      this.campaignId,
      this.campaignTitle})
      : _imageUrls = imageUrls,
        _videoUrls = videoUrls,
        super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final String content;
  @override
  final DateTime createdAt;
// User info (from profiles join)
  @override
  final String? username;
  @override
  final String? photoUrl;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  final List<String> _videoUrls;
  @override
  @JsonKey()
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

// Counts (nullable as they might be hidden)
  @override
  final int? likesCount;
  @override
  final int? commentsCount;
  @override
  final int? sharesCount;
// Interaction Status (computed by View)
  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final bool isBookmarked;
  @override
  @JsonKey()
  final bool isFollowing;
  @override
  @JsonKey()
  final bool isFollowRequestPending;
  @override
  @JsonKey()
  final bool isMe;
  @override
  @JsonKey()
  final bool commentsEnabled;
  @override
  @JsonKey()
  final bool hideLikeCount;
  @override
  @JsonKey()
  final bool hideCommentCount;
  @override
  @JsonKey()
  final bool hideShareCount;
  @override
  @JsonKey()
  final bool hideLikesList;
  @override
  final String? campaignId;
  @override
  final String? campaignTitle;

  @override
  String toString() {
    return 'FeedEntity(id: $id, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, imageUrls: $imageUrls, videoUrls: $videoUrls, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, isMe: $isMe, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedEntityImpl &&
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

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedEntityImplCopyWith<_$FeedEntityImpl> get copyWith =>
      __$$FeedEntityImplCopyWithImpl<_$FeedEntityImpl>(this, _$identity);
}

abstract class _FeedEntity extends FeedEntity {
  const factory _FeedEntity(
      {required final String id,
      required final String userId,
      required final String content,
      required final DateTime createdAt,
      final String? username,
      final String? photoUrl,
      final List<String> imageUrls,
      final List<String> videoUrls,
      final int? likesCount,
      final int? commentsCount,
      final int? sharesCount,
      final bool isLiked,
      final bool isBookmarked,
      final bool isFollowing,
      final bool isFollowRequestPending,
      final bool isMe,
      final bool commentsEnabled,
      final bool hideLikeCount,
      final bool hideCommentCount,
      final bool hideShareCount,
      final bool hideLikesList,
      final String? campaignId,
      final String? campaignTitle}) = _$FeedEntityImpl;
  const _FeedEntity._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  String get content;
  @override
  DateTime get createdAt; // User info (from profiles join)
  @override
  String? get username;
  @override
  String? get photoUrl;
  @override
  List<String> get imageUrls;
  @override
  List<String> get videoUrls; // Counts (nullable as they might be hidden)
  @override
  int? get likesCount;
  @override
  int? get commentsCount;
  @override
  int? get sharesCount; // Interaction Status (computed by View)
  @override
  bool get isLiked;
  @override
  bool get isBookmarked;
  @override
  bool get isFollowing;
  @override
  bool get isFollowRequestPending;
  @override
  bool get isMe;
  @override
  bool get commentsEnabled;
  @override
  bool get hideLikeCount;
  @override
  bool get hideCommentCount;
  @override
  bool get hideShareCount;
  @override
  bool get hideLikesList;
  @override
  String? get campaignId;
  @override
  String? get campaignTitle;

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedEntityImplCopyWith<_$FeedEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

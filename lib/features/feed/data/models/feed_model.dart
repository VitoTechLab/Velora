import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

part 'feed_model.freezed.dart';
part 'feed_model.g.dart';

/// Feed post data model for API responses.
@freezed
abstract class FeedModel with _$FeedModel {
  const FeedModel._();

  const factory FeedModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'content') required String content,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,

    // Joined from profiles (read-only)
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'photo_url') String? photoUrl,

    @StringListConverter()
    @JsonKey(name: 'image_urls')
    @Default([])
    List<String> imageUrls,

    @StringListConverter()
    @JsonKey(name: 'video_urls')
    @Default([])
    List<String> videoUrls,

    // Counts can be masked (nullable)
    @JsonKey(name: 'likes_count') int? likesCount,
    @JsonKey(name: 'comments_count') int? commentsCount,
    @JsonKey(name: 'shares_count') int? sharesCount,

    // Computed per viewer (read-only)
    @JsonKey(name: 'is_liked') @Default(false) bool isLiked,
    @JsonKey(name: 'is_bookmarked') @Default(false) bool isBookmarked,
    @JsonKey(name: 'is_following') @Default(false) bool isFollowing,
    @JsonKey(name: 'is_follow_request_pending')
    @Default(false)
    bool isFollowRequestPending,
    @JsonKey(name: 'is_me') @Default(false) bool isMe,

    // Post privacy settings
    @JsonKey(name: 'comments_enabled') @Default(true) bool commentsEnabled,
    @JsonKey(name: 'hide_like_count') @Default(false) bool hideLikeCount,
    @JsonKey(name: 'hide_comment_count') @Default(false) bool hideCommentCount,
    @JsonKey(name: 'hide_share_count') @Default(false) bool hideShareCount,
    @JsonKey(name: 'hide_likes_list') @Default(false) bool hideLikesList,

    // Campaign association
    @JsonKey(name: 'campaign_id') String? campaignId,
    @JsonKey(name: 'campaign_title') String? campaignTitle,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);

  /// Converts to domain entity.
  FeedEntity toEntity() {
    return FeedEntity(
      id: id,
      userId: userId,
      content: content,
      createdAt: createdAt,
      username: username,
      photoUrl: photoUrl,
      imageUrls: imageUrls,
      videoUrls: videoUrls,
      likesCount: likesCount,
      commentsCount: commentsCount,
      sharesCount: sharesCount,
      isLiked: isLiked,
      isBookmarked: isBookmarked,
      isFollowing: isFollowing,
      isFollowRequestPending: isFollowRequestPending,
      isMe: isMe,
      commentsEnabled: commentsEnabled,
      hideLikeCount: hideLikeCount,
      hideCommentCount: hideCommentCount,
      hideShareCount: hideShareCount,
      hideLikesList: hideLikesList,
      campaignId: campaignId,
      campaignTitle: campaignTitle,
    );
  }

  /// Creates from domain entity.
  factory FeedModel.fromEntity(FeedEntity entity) {
    return FeedModel(
      id: entity.id,
      userId: entity.userId,
      content: entity.content,
      createdAt: entity.createdAt,
      username: entity.username,
      photoUrl: entity.photoUrl,
      imageUrls: entity.imageUrls,
      videoUrls: entity.videoUrls,
      likesCount: entity.likesCount,
      commentsCount: entity.commentsCount,
      sharesCount: entity.sharesCount,
      isLiked: entity.isLiked,
      isBookmarked: entity.isBookmarked,
      isFollowing: entity.isFollowing,
      isFollowRequestPending: entity.isFollowRequestPending,
      isMe: entity.isMe,
      commentsEnabled: entity.commentsEnabled,
      hideLikeCount: entity.hideLikeCount,
      hideCommentCount: entity.hideCommentCount,
      hideShareCount: entity.hideShareCount,
      hideLikesList: entity.hideLikesList,
      campaignId: entity.campaignId,
      campaignTitle: entity.campaignTitle,
    );
  }
}

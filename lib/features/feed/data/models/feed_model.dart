import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

part 'feed_model.freezed.dart';
part 'feed_model.g.dart';

@freezed
class FeedModel with _$FeedModel {
  const FeedModel._();

  const factory FeedModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'caption') required String content,
    @UtcDateTimeConverter() @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @StringListConverter() @JsonKey(name: 'media_urls') @Default([]) List<String> mediaUrls,
    @JsonKey(name: 'location') Map<String, dynamic>? location,
    @StringListConverter() @JsonKey(name: 'tags') @Default([]) List<String> tags,
    @StringListConverter() @JsonKey(name: 'mention_ids') @Default([]) List<String> mentionIds,
    @JsonKey(name: 'likes_count') @Default(0) int likesCount,
    @JsonKey(name: 'comments_count') @Default(0) int commentsCount,
    @JsonKey(name: 'shares_count') @Default(0) int sharesCount,
    @JsonKey(name: 'is_liked') @Default(false) bool isLiked,
    @JsonKey(name: 'is_bookmarked') @Default(false) bool isBookmarked,
    @JsonKey(name: 'is_following') @Default(false) bool isFollowing,
    @JsonKey(name: 'is_follow_request_pending') @Default(false) bool isFollowRequestPending,
    @JsonKey(name: 'is_me') @Default(false) bool isMe,
    @JsonKey(name: 'allow_comments') @Default(true) bool allowComments,
    @JsonKey(name: 'allow_share') @Default(true) bool allowShare,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'campaign_id') String? campaignId,
    @JsonKey(name: 'campaign_title') String? campaignTitle,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, dynamic> json) => _$FeedModelFromJson(json);

  FeedEntity toEntity() {
    return FeedEntity(
      id: id,
      userId: userId,
      content: content,
      createdAt: createdAt,
      username: username,
      photoUrl: photoUrl,
      mediaUrls: mediaUrls,
      location: location,
      tags: tags,
      mentionIds: mentionIds,
      likesCount: likesCount,
      commentsCount: commentsCount,
      sharesCount: sharesCount,
      isLiked: isLiked,
      isBookmarked: isBookmarked,
      isFollowing: isFollowing,
      isFollowRequestPending: isFollowRequestPending,
      isMe: isMe,
      allowComments: allowComments,
      allowShare: allowShare,
      isActive: isActive,
      campaignId: campaignId,
      campaignTitle: campaignTitle,
    );
  }

  factory FeedModel.fromEntity(FeedEntity entity) {
    return FeedModel(
      id: entity.id,
      userId: entity.userId,
      content: entity.content,
      createdAt: entity.createdAt,
      username: entity.username,
      photoUrl: entity.photoUrl,
      mediaUrls: entity.mediaUrls,
      location: entity.location,
      tags: entity.tags,
      mentionIds: entity.mentionIds,
      likesCount: entity.likesCount,
      commentsCount: entity.commentsCount,
      sharesCount: entity.sharesCount,
      isLiked: entity.isLiked,
      isBookmarked: entity.isBookmarked,
      isFollowing: entity.isFollowing,
      isFollowRequestPending: entity.isFollowRequestPending,
      isMe: entity.isMe,
      allowComments: entity.allowComments,
      allowShare: entity.allowShare,
      isActive: entity.isActive,
      campaignId: entity.campaignId,
      campaignTitle: entity.campaignTitle,
    );
  }
}

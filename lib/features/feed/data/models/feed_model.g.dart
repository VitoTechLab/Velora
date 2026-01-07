// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedModel _$FeedModelFromJson(Map<String, dynamic> json) => _FeedModel(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  content: json['content'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
  username: json['username'] as String?,
  photoUrl: json['photo_url'] as String?,
  imageUrls: json['image_urls'] == null
      ? const []
      : const StringListConverter().fromJson(json['image_urls']),
  videoUrls: json['video_urls'] == null
      ? const []
      : const StringListConverter().fromJson(json['video_urls']),
  likesCount: (json['likes_count'] as num?)?.toInt(),
  commentsCount: (json['comments_count'] as num?)?.toInt(),
  sharesCount: (json['shares_count'] as num?)?.toInt(),
  isLiked: json['is_liked'] as bool? ?? false,
  isBookmarked: json['is_bookmarked'] as bool? ?? false,
  isFollowing: json['is_following'] as bool? ?? false,
  isFollowRequestPending: json['is_follow_request_pending'] as bool? ?? false,
  isMe: json['is_me'] as bool? ?? false,
  commentsEnabled: json['comments_enabled'] as bool? ?? true,
  hideLikeCount: json['hide_like_count'] as bool? ?? false,
  hideCommentCount: json['hide_comment_count'] as bool? ?? false,
  hideShareCount: json['hide_share_count'] as bool? ?? false,
  hideLikesList: json['hide_likes_list'] as bool? ?? false,
  campaignId: json['campaign_id'] as String?,
  campaignTitle: json['campaign_title'] as String?,
);

Map<String, dynamic> _$FeedModelToJson(_FeedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'content': instance.content,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'username': instance.username,
      'photo_url': instance.photoUrl,
      'image_urls': const StringListConverter().toJson(instance.imageUrls),
      'video_urls': const StringListConverter().toJson(instance.videoUrls),
      'likes_count': instance.likesCount,
      'comments_count': instance.commentsCount,
      'shares_count': instance.sharesCount,
      'is_liked': instance.isLiked,
      'is_bookmarked': instance.isBookmarked,
      'is_following': instance.isFollowing,
      'is_follow_request_pending': instance.isFollowRequestPending,
      'is_me': instance.isMe,
      'comments_enabled': instance.commentsEnabled,
      'hide_like_count': instance.hideLikeCount,
      'hide_comment_count': instance.hideCommentCount,
      'hide_share_count': instance.hideShareCount,
      'hide_likes_list': instance.hideLikesList,
      'campaign_id': instance.campaignId,
      'campaign_title': instance.campaignTitle,
    };

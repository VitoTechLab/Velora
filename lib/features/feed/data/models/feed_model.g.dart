// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedModel _$FeedModelFromJson(Map<String, dynamic> json) => _FeedModel(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  content: json['caption'] as String,
  createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
  username: json['username'] as String?,
  photoUrl: json['photo_url'] as String?,
  mediaUrls: json['media_urls'] == null
      ? const []
      : const StringListConverter().fromJson(json['media_urls']),
  location: json['location'] as Map<String, dynamic>?,
  tags: json['tags'] == null
      ? const []
      : const StringListConverter().fromJson(json['tags']),
  mentionIds: json['mention_ids'] == null
      ? const []
      : const StringListConverter().fromJson(json['mention_ids']),
  likesCount: (json['likes_count'] as num?)?.toInt() ?? 0,
  commentsCount: (json['comments_count'] as num?)?.toInt() ?? 0,
  sharesCount: (json['shares_count'] as num?)?.toInt() ?? 0,
  isLiked: json['is_liked'] as bool? ?? false,
  isBookmarked: json['is_bookmarked'] as bool? ?? false,
  isFollowing: json['is_following'] as bool? ?? false,
  isFollowRequestPending: json['is_follow_request_pending'] as bool? ?? false,
  isMe: json['is_me'] as bool? ?? false,
  allowComments: json['allow_comments'] as bool? ?? true,
  allowShare: json['allow_share'] as bool? ?? true,
  isActive: json['is_active'] as bool? ?? true,
  campaignId: json['campaign_id'] as String?,
  campaignTitle: json['campaign_title'] as String?,
);

Map<String, dynamic> _$FeedModelToJson(_FeedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'caption': instance.content,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'username': instance.username,
      'photo_url': instance.photoUrl,
      'media_urls': const StringListConverter().toJson(instance.mediaUrls),
      'location': instance.location,
      'tags': const StringListConverter().toJson(instance.tags),
      'mention_ids': const StringListConverter().toJson(instance.mentionIds),
      'likes_count': instance.likesCount,
      'comments_count': instance.commentsCount,
      'shares_count': instance.sharesCount,
      'is_liked': instance.isLiked,
      'is_bookmarked': instance.isBookmarked,
      'is_following': instance.isFollowing,
      'is_follow_request_pending': instance.isFollowRequestPending,
      'is_me': instance.isMe,
      'allow_comments': instance.allowComments,
      'allow_share': instance.allowShare,
      'is_active': instance.isActive,
      'campaign_id': instance.campaignId,
      'campaign_title': instance.campaignTitle,
    };

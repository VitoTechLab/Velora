// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateFeedModel _$UpdateFeedModelFromJson(Map<String, dynamic> json) =>
    _UpdateFeedModel(
      content: json['content'] as String?,
      imageUrls: const StringListConverter().fromJson(json['image_urls']),
      videoUrls: const StringListConverter().fromJson(json['video_urls']),
      commentsEnabled: json['comments_enabled'] as bool?,
      hideLikeCount: json['hide_like_count'] as bool?,
      hideCommentCount: json['hide_comment_count'] as bool?,
      hideShareCount: json['hide_share_count'] as bool?,
      hideLikesList: json['hide_likes_list'] as bool?,
      campaignId: json['campaign_id'] as String?,
      campaignTitle: json['campaign_title'] as String?,
    );

Map<String, dynamic> _$UpdateFeedModelToJson(_UpdateFeedModel instance) =>
    <String, dynamic>{
      'content': ?instance.content,
      'image_urls': ?_$JsonConverterToJson<Object?, List<String>>(
        instance.imageUrls,
        const StringListConverter().toJson,
      ),
      'video_urls': ?_$JsonConverterToJson<Object?, List<String>>(
        instance.videoUrls,
        const StringListConverter().toJson,
      ),
      'comments_enabled': ?instance.commentsEnabled,
      'hide_like_count': ?instance.hideLikeCount,
      'hide_comment_count': ?instance.hideCommentCount,
      'hide_share_count': ?instance.hideShareCount,
      'hide_likes_list': ?instance.hideLikesList,
      'campaign_id': ?instance.campaignId,
      'campaign_title': ?instance.campaignTitle,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

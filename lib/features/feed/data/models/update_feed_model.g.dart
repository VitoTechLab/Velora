// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateFeedModelImpl _$$UpdateFeedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFeedModelImpl(
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

Map<String, dynamic> _$$UpdateFeedModelImplToJson(
        _$UpdateFeedModelImpl instance) =>
    <String, dynamic>{
      if (instance.content case final value?) 'content': value,
      if (_$JsonConverterToJson<Object?, List<String>>(
              instance.imageUrls, const StringListConverter().toJson)
          case final value?)
        'image_urls': value,
      if (_$JsonConverterToJson<Object?, List<String>>(
              instance.videoUrls, const StringListConverter().toJson)
          case final value?)
        'video_urls': value,
      if (instance.commentsEnabled case final value?) 'comments_enabled': value,
      if (instance.hideLikeCount case final value?) 'hide_like_count': value,
      if (instance.hideCommentCount case final value?)
        'hide_comment_count': value,
      if (instance.hideShareCount case final value?) 'hide_share_count': value,
      if (instance.hideLikesList case final value?) 'hide_likes_list': value,
      if (instance.campaignId case final value?) 'campaign_id': value,
      if (instance.campaignTitle case final value?) 'campaign_title': value,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateFeedModel _$UpdateFeedModelFromJson(Map<String, dynamic> json) =>
    _UpdateFeedModel(
      content: json['caption'] as String?,
      mediaUrls: const StringListConverter().fromJson(json['media_urls']),
      location: json['location'] as Map<String, dynamic>?,
      tags: const StringListConverter().fromJson(json['tags']),
      mentionIds: const StringListConverter().fromJson(json['mention_ids']),
      allowComments: json['allow_comments'] as bool?,
      allowShare: json['allow_share'] as bool?,
      isActive: json['is_active'] as bool?,
      campaignId: json['campaign_id'] as String?,
      campaignTitle: json['campaign_title'] as String?,
    );

Map<String, dynamic> _$UpdateFeedModelToJson(_UpdateFeedModel instance) =>
    <String, dynamic>{
      'caption': ?instance.content,
      'media_urls': ?_$JsonConverterToJson<Object?, List<String>>(
        instance.mediaUrls,
        const StringListConverter().toJson,
      ),
      'location': ?instance.location,
      'tags': ?_$JsonConverterToJson<Object?, List<String>>(
        instance.tags,
        const StringListConverter().toJson,
      ),
      'mention_ids': ?_$JsonConverterToJson<Object?, List<String>>(
        instance.mentionIds,
        const StringListConverter().toJson,
      ),
      'allow_comments': ?instance.allowComments,
      'allow_share': ?instance.allowShare,
      'is_active': ?instance.isActive,
      'campaign_id': ?instance.campaignId,
      'campaign_title': ?instance.campaignTitle,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

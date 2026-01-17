// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateFeedModelImpl _$$UpdateFeedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFeedModelImpl(
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

Map<String, dynamic> _$$UpdateFeedModelImplToJson(
        _$UpdateFeedModelImpl instance) =>
    <String, dynamic>{
      if (instance.content case final value?) 'caption': value,
      if (_$JsonConverterToJson<Object?, List<String>>(
              instance.mediaUrls, const StringListConverter().toJson)
          case final value?)
        'media_urls': value,
      if (instance.location case final value?) 'location': value,
      if (_$JsonConverterToJson<Object?, List<String>>(
              instance.tags, const StringListConverter().toJson)
          case final value?)
        'tags': value,
      if (_$JsonConverterToJson<Object?, List<String>>(
              instance.mentionIds, const StringListConverter().toJson)
          case final value?)
        'mention_ids': value,
      if (instance.allowComments case final value?) 'allow_comments': value,
      if (instance.allowShare case final value?) 'allow_share': value,
      if (instance.isActive case final value?) 'is_active': value,
      if (instance.campaignId case final value?) 'campaign_id': value,
      if (instance.campaignTitle case final value?) 'campaign_title': value,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

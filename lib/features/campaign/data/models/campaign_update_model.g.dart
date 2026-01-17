// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignUpdateModelImpl _$$CampaignUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignUpdateModelImpl(
      id: json['id'] as String,
      campaignId: json['campaign_id'] as String,
      title: json['title'] as String?,
      updateText: json['update_text'] as String,
      imageUrl: json['image_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CampaignUpdateModelImplToJson(
        _$CampaignUpdateModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaign_id': instance.campaignId,
      'title': instance.title,
      'update_text': instance.updateText,
      'image_url': instance.imageUrl,
      'created_at': instance.createdAt.toIso8601String(),
    };

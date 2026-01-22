// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_proof_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignProofItemModel _$CampaignProofItemModelFromJson(
        Map<String, dynamic> json) =>
    CampaignProofItemModel(
      id: json['id'] as String,
      campaignId: json['campaign_id'] as String,
      mediaUrl: json['media_url'] as String,
      caption: json['caption'] as String?,
      mediaType: json['media_type'] as String? ?? 'image',
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$CampaignProofItemModelToJson(
        CampaignProofItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaign_id': instance.campaignId,
      'media_url': instance.mediaUrl,
      'caption': instance.caption,
      'media_type': instance.mediaType,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt.toIso8601String(),
    };

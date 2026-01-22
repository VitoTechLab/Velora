// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignDocumentModel _$CampaignDocumentModelFromJson(
        Map<String, dynamic> json) =>
    CampaignDocumentModel(
      id: json['id'] as String,
      campaignId: json['campaign_id'] as String,
      title: json['title'] as String,
      typeLabel: json['type_label'] as String? ?? 'Document',
      fileUrl: json['file_url'] as String?,
      status: json['status'] as String? ?? 'pending',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CampaignDocumentModelToJson(
        CampaignDocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaign_id': instance.campaignId,
      'title': instance.title,
      'type_label': instance.typeLabel,
      'file_url': instance.fileUrl,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

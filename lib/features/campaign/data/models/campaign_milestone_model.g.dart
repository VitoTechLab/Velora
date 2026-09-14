// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_milestone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignMilestoneModel _$CampaignMilestoneModelFromJson(
  Map<String, dynamic> json,
) => CampaignMilestoneModel(
  id: json['id'] as String,
  campaignId: json['campaign_id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  targetAmount: (json['target_amount'] as num).toDouble(),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  status: json['status'] as String? ?? 'pending',
  sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
  createdAt: DateTime.parse(json['created_at'] as String),
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
);

Map<String, dynamic> _$CampaignMilestoneModelToJson(
  CampaignMilestoneModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'campaign_id': instance.campaignId,
  'title': instance.title,
  'description': instance.description,
  'target_amount': instance.targetAmount,
  'due_date': instance.dueDate?.toIso8601String(),
  'status': instance.status,
  'sort_order': instance.sortOrder,
  'created_at': instance.createdAt.toIso8601String(),
  'completed_at': instance.completedAt?.toIso8601String(),
};

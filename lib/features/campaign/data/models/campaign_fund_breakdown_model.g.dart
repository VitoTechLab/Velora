// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_fund_breakdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignFundBreakdownModel _$CampaignFundBreakdownModelFromJson(
        Map<String, dynamic> json) =>
    CampaignFundBreakdownModel(
      id: json['id'] as String,
      campaignId: json['campaign_id'] as String,
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      percentage: (json['percentage'] as num).toDouble(),
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$CampaignFundBreakdownModelToJson(
        CampaignFundBreakdownModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaign_id': instance.campaignId,
      'label': instance.label,
      'amount': instance.amount,
      'percentage': instance.percentage,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt.toIso8601String(),
    };

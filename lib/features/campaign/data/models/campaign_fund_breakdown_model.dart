import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/campaign_fund_breakdown_entity.dart';

part 'campaign_fund_breakdown_model.g.dart';

@JsonSerializable()
class CampaignFundBreakdownModel {
  final String id;
  @JsonKey(name: 'campaign_id')
  final String campaignId;
  final String label;
  final double amount;
  final double percentage;
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  CampaignFundBreakdownModel({
    required this.id,
    required this.campaignId,
    required this.label,
    required this.amount,
    required this.percentage,
    this.sortOrder = 0,
    required this.createdAt,
  });

  factory CampaignFundBreakdownModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignFundBreakdownModelFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignFundBreakdownModelToJson(this);

  CampaignFundBreakdownEntity toEntity() => CampaignFundBreakdownEntity(
        id: id,
        campaignId: campaignId,
        label: label,
        amount: amount,
        percentage: percentage,
        sortOrder: sortOrder,
        createdAt: createdAt,
      );

  Map<String, dynamic> toInsertMap() => {
        'campaign_id': campaignId,
        'label': label,
        'amount': amount,
        'percentage': percentage,
        'sort_order': sortOrder,
      };
}

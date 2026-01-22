import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_fund_breakdown_entity.freezed.dart';

/// Represents a fund usage breakdown item for a campaign.
@freezed
abstract class CampaignFundBreakdownEntity with _$CampaignFundBreakdownEntity {
  const factory CampaignFundBreakdownEntity({
    required String id,
    required String campaignId,
    required String label,
    required double amount,
    required double percentage,
    @Default(0) int sortOrder,
    required DateTime createdAt,
  }) = _CampaignFundBreakdownEntity;
}

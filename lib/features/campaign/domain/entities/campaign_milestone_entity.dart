import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_milestone_entity.freezed.dart';

/// Represents a milestone for a campaign.
@freezed
abstract class CampaignMilestoneEntity with _$CampaignMilestoneEntity {
  const factory CampaignMilestoneEntity({
    required String id,
    required String campaignId,
    required String title,
    String? description,
    required double targetAmount,
    DateTime? dueDate,
    @Default('pending') String status, // pending, in_progress, completed, missed
    @Default(0) int sortOrder,
    required DateTime createdAt,
    DateTime? completedAt,
  }) = _CampaignMilestoneEntity;
}

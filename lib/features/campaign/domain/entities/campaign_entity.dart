import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_entity.freezed.dart';

enum CampaignStatus { active, completed, cancelled }

@freezed
abstract class CampaignEntity with _$CampaignEntity {
  const factory CampaignEntity({
    required String id,
    required String postId,
    required String userId,
    required String title,
    required String description,
    required double targetAmount,
    required double amountRaised,
    required CampaignStatus status,
    required DateTime createdAt,
    DateTime? completedAt,
    @Default(<String>[]) List<String> donorIds,
  }) = _CampaignEntity;
}

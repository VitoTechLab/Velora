import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_update_entity.freezed.dart';

@freezed
abstract class CampaignUpdateEntity with _$CampaignUpdateEntity {
  const factory CampaignUpdateEntity({
    required String id,
    required String campaignId,
    required String updateText,
    String? imageUrl,
    required DateTime createdAt,
  }) = _CampaignUpdateEntity;
}

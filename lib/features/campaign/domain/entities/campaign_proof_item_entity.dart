import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_proof_item_entity.freezed.dart';

/// Represents a proof item (photo/video) for a campaign.
@freezed
abstract class CampaignProofItemEntity with _$CampaignProofItemEntity {
  const factory CampaignProofItemEntity({
    required String id,
    required String campaignId,
    required String mediaUrl,
    String? caption,
    @Default('image') String mediaType, // image, video
    @Default(0) int sortOrder,
    required DateTime createdAt,
  }) = _CampaignProofItemEntity;
}

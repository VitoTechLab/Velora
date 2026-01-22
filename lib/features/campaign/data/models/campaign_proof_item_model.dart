import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/campaign_proof_item_entity.dart';

part 'campaign_proof_item_model.g.dart';

@JsonSerializable()
class CampaignProofItemModel {
  final String id;
  @JsonKey(name: 'campaign_id')
  final String campaignId;
  @JsonKey(name: 'media_url')
  final String mediaUrl;
  final String? caption;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  CampaignProofItemModel({
    required this.id,
    required this.campaignId,
    required this.mediaUrl,
    this.caption,
    this.mediaType = 'image',
    this.sortOrder = 0,
    required this.createdAt,
  });

  factory CampaignProofItemModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignProofItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignProofItemModelToJson(this);

  CampaignProofItemEntity toEntity() => CampaignProofItemEntity(
        id: id,
        campaignId: campaignId,
        mediaUrl: mediaUrl,
        caption: caption,
        mediaType: mediaType,
        sortOrder: sortOrder,
        createdAt: createdAt,
      );

  Map<String, dynamic> toInsertMap() => {
        'campaign_id': campaignId,
        'media_url': mediaUrl,
        'caption': caption,
        'media_type': mediaType,
        'sort_order': sortOrder,
      };
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';

part 'campaign_update_model.freezed.dart';
part 'campaign_update_model.g.dart';

@freezed
abstract class CampaignUpdateModel with _$CampaignUpdateModel {
  const CampaignUpdateModel._();

  const factory CampaignUpdateModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'campaign_id') required String campaignId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'update_text') required String updateText,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _CampaignUpdateModel;

  factory CampaignUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignUpdateModelFromJson(json);

  CampaignUpdateEntity toEntity() {
    return CampaignUpdateEntity(
      id: id,
      campaignId: campaignId,
      title: title,
      updateText: updateText,
      imageUrl: imageUrl,
      createdAt: createdAt,
    );
  }

  factory CampaignUpdateModel.fromEntity(CampaignUpdateEntity entity) {
    return CampaignUpdateModel(
      id: entity.id,
      campaignId: entity.campaignId,
      title: entity.title,
      updateText: entity.updateText,
      imageUrl: entity.imageUrl,
      createdAt: entity.createdAt,
    );
  }

  /// Convert for INSERT
  Map<String, dynamic> toInsertMap() {
    return {
      'campaign_id': campaignId,
      'title': title,
      'update_text': updateText,
      'image_url': imageUrl,
    };
  }
}

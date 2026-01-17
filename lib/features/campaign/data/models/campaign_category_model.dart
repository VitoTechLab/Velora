import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/campaign_category_entity.dart';

part 'campaign_category_model.freezed.dart';
part 'campaign_category_model.g.dart';

@freezed
abstract class CampaignCategoryModel with _$CampaignCategoryModel {
  const CampaignCategoryModel._();

  const factory CampaignCategoryModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'icon_name') String? iconName,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _CampaignCategoryModel;

  factory CampaignCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignCategoryModelFromJson(json);

  CampaignCategoryEntity toEntity() {
    return CampaignCategoryEntity(
      id: id,
      name: name,
      slug: slug,
      iconName: iconName,
      isActive: isActive,
      createdAt: createdAt,
    );
  }
}

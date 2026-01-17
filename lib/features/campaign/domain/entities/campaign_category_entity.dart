import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_category_entity.freezed.dart';

@freezed
abstract class CampaignCategoryEntity with _$CampaignCategoryEntity {
  const factory CampaignCategoryEntity({
    required String id,
    required String name,
    required String slug,
    String? iconName,
    @Default(true) bool isActive,
    DateTime? createdAt,
  }) = _CampaignCategoryEntity;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignCategoryModel _$CampaignCategoryModelFromJson(
  Map<String, dynamic> json,
) => _CampaignCategoryModel(
  id: json['id'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  iconName: json['icon_name'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$CampaignCategoryModelToJson(
  _CampaignCategoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'icon_name': instance.iconName,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
};

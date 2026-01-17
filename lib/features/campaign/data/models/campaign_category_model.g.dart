// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignCategoryModelImpl _$$CampaignCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignCategoryModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      iconName: json['icon_name'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CampaignCategoryModelImplToJson(
        _$CampaignCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'icon_name': instance.iconName,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };

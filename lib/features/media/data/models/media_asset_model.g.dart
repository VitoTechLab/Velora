// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaAssetModelImpl _$$MediaAssetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaAssetModelImpl(
      publicId: json['public_id'] as String,
      secureUrl: json['secure_url'] as String,
      resourceType: json['resource_type'] as String,
      format: json['format'] as String,
      bytes: (json['bytes'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$$MediaAssetModelImplToJson(
        _$MediaAssetModelImpl instance) =>
    <String, dynamic>{
      'public_id': instance.publicId,
      'secure_url': instance.secureUrl,
      'resource_type': instance.resourceType,
      'format': instance.format,
      'bytes': instance.bytes,
      'width': instance.width,
      'height': instance.height,
    };

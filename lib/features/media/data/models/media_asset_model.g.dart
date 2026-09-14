// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaAssetModel _$MediaAssetModelFromJson(Map<String, dynamic> json) =>
    _MediaAssetModel(
      publicId: json['public_id'] as String,
      secureUrl: json['secure_url'] as String,
      resourceType: json['resource_type'] as String,
      format: json['format'] as String,
      bytes: (json['bytes'] as num).toInt(),
      width: (json['width'] as num?)?.toInt() ?? 0,
      height: (json['height'] as num?)?.toInt() ?? 0,
      duration: (json['duration'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MediaAssetModelToJson(_MediaAssetModel instance) =>
    <String, dynamic>{
      'public_id': instance.publicId,
      'secure_url': instance.secureUrl,
      'resource_type': instance.resourceType,
      'format': instance.format,
      'bytes': instance.bytes,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration,
    };

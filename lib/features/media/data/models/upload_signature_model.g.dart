// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_signature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadSignatureModel _$UploadSignatureModelFromJson(
  Map<String, dynamic> json,
) => _UploadSignatureModel(
  apiKey: json['api_key'] as String,
  timestamp: (json['timestamp'] as num).toInt(),
  signature: json['signature'] as String,
  publicId: json['public_id'] as String,
  folder: json['folder'] as String,
);

Map<String, dynamic> _$UploadSignatureModelToJson(
  _UploadSignatureModel instance,
) => <String, dynamic>{
  'api_key': instance.apiKey,
  'timestamp': instance.timestamp,
  'signature': instance.signature,
  'public_id': instance.publicId,
  'folder': instance.folder,
};

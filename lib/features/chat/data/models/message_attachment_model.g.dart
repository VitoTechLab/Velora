// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageAttachmentModelImpl _$$MessageAttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageAttachmentModelImpl(
      id: json['id'] as String,
      messageId: json['message_id'] as String,
      kind: json['kind'] as String,
      bucket: json['bucket'] as String?,
      path: json['path'] as String?,
      url: json['url'] as String?,
      filename: json['filename'] as String?,
      mimeType: json['mime_type'] as String?,
      sizeBytes: (json['size_bytes'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      durationSeconds: (json['duration_seconds'] as num?)?.toDouble(),
      blurhash: json['blurhash'] as String?,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
    );

Map<String, dynamic> _$$MessageAttachmentModelImplToJson(
        _$MessageAttachmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message_id': instance.messageId,
      'kind': instance.kind,
      'bucket': instance.bucket,
      'path': instance.path,
      'url': instance.url,
      'filename': instance.filename,
      'mime_type': instance.mimeType,
      'size_bytes': instance.sizeBytes,
      'width': instance.width,
      'height': instance.height,
      'duration_seconds': instance.durationSeconds,
      'blurhash': instance.blurhash,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
    };

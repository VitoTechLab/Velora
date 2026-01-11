// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      actorId: json['actor_id'] as String?,
      type: json['type'] as String,
      targetId: json['target_id'] as String?,
      targetType: json['target_type'] as String?,
      groupKey: json['group_key'] as String?,
      groupCount: (json['group_count'] as num?)?.toInt() ?? 1,
      isRead: json['is_read'] as bool? ?? false,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      updatedAt: const UtcDateTimeConverter().fromJson(json['updated_at']),
      actorUsername: json['actor_username'] as String?,
      actorPhotoUrl: json['actor_photo_url'] as String?,
      targetPreviewUrl: json['target_preview_url'] as String?,
      isFollowingActor: json['is_following_actor'] as bool? ?? false,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'actor_id': instance.actorId,
      'type': instance.type,
      'target_id': instance.targetId,
      'target_type': instance.targetType,
      'group_key': instance.groupKey,
      'group_count': instance.groupCount,
      'is_read': instance.isRead,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updated_at': _$JsonConverterToJson<Object?, DateTime>(
          instance.updatedAt, const UtcDateTimeConverter().toJson),
      'actor_username': instance.actorUsername,
      'actor_photo_url': instance.actorPhotoUrl,
      'target_preview_url': instance.targetPreviewUrl,
      'is_following_actor': instance.isFollowingActor,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

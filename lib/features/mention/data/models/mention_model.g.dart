// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mention_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentionModelImpl _$$MentionModelImplFromJson(Map<String, dynamic> json) =>
    _$MentionModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      createdBy: json['created_by'] as String,
      entityType: json['entity_type'] as String,
      entityId: json['entity_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      creatorProfile: json['creator_profile'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MentionModelImplToJson(_$MentionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_by': instance.createdBy,
      'entity_type': instance.entityType,
      'entity_id': instance.entityId,
      'created_at': instance.createdAt.toIso8601String(),
      'creator_profile': instance.creatorProfile,
    };

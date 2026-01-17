// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_presence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPresenceModelImpl _$$UserPresenceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPresenceModelImpl(
      userId: json['user_id'] as String,
      lastSeenAt: DateTime.parse(json['last_seen_at'] as String),
      isOnline: json['is_online'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserPresenceModelImplToJson(
        _$UserPresenceModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'last_seen_at': instance.lastSeenAt.toIso8601String(),
      'is_online': instance.isOnline,
    };

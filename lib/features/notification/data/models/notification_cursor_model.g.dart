// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationCursorModelImpl _$$NotificationCursorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationCursorModelImpl(
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$NotificationCursorModelImplToJson(
        _$NotificationCursorModelImpl instance) =>
    <String, dynamic>{
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'id': instance.id,
    };

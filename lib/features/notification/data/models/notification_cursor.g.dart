// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationCursor _$NotificationCursorFromJson(Map<String, dynamic> json) =>
    _NotificationCursor(
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$NotificationCursorToJson(_NotificationCursor instance) =>
    <String, dynamic>{
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'id': instance.id,
    };

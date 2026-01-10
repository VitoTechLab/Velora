// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationCursorModel _$NotificationCursorModelFromJson(
  Map<String, dynamic> json,
) => _NotificationCursorModel(
  createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
  id: json['id'] as String,
);

Map<String, dynamic> _$NotificationCursorModelToJson(
  _NotificationCursorModel instance,
) => <String, dynamic>{
  'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
  'id': instance.id,
};

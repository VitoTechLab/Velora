// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageCursorModel _$MessageCursorModelFromJson(Map<String, dynamic> json) =>
    _MessageCursorModel(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$MessageCursorModelToJson(_MessageCursorModel instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageCursorModelImpl _$$MessageCursorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageCursorModelImpl(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$$MessageCursorModelImplToJson(
        _$MessageCursorModelImpl instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

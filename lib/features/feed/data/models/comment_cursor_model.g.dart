// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentCursorModel _$CommentCursorModelFromJson(Map<String, dynamic> json) =>
    _CommentCursorModel(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$CommentCursorModelToJson(_CommentCursorModel instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

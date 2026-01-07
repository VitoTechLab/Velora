// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentCursor _$CommentCursorFromJson(Map<String, dynamic> json) =>
    _CommentCursor(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$CommentCursorToJson(_CommentCursor instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

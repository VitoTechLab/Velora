// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentCursorImpl _$$CommentCursorImplFromJson(Map<String, dynamic> json) =>
    _$CommentCursorImpl(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$$CommentCursorImplToJson(_$CommentCursorImpl instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

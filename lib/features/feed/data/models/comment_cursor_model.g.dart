// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentCursorModelImpl _$$CommentCursorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentCursorModelImpl(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$$CommentCursorModelImplToJson(
        _$CommentCursorModelImpl instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

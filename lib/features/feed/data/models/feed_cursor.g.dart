// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedCursor _$FeedCursorFromJson(Map<String, dynamic> json) => _FeedCursor(
  createdAt: DateTime.parse(json['cursor_created_at'] as String),
  id: json['cursor_id'] as String,
);

Map<String, dynamic> _$FeedCursorToJson(_FeedCursor instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

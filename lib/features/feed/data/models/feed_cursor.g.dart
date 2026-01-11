// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedCursorImpl _$$FeedCursorImplFromJson(Map<String, dynamic> json) =>
    _$FeedCursorImpl(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$$FeedCursorImplToJson(_$FeedCursorImpl instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

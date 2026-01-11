// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedCursorModelImpl _$$FeedCursorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedCursorModelImpl(
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

Map<String, dynamic> _$$FeedCursorModelImplToJson(
        _$FeedCursorModelImpl instance) =>
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

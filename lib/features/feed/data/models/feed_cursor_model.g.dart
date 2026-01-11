// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.g.dart
_FeedCursorModel _$FeedCursorModelFromJson(Map<String, dynamic> json) =>
    _FeedCursorModel(
=======
_$CommentCursorImpl _$$CommentCursorImplFromJson(Map<String, dynamic> json) =>
    _$CommentCursorImpl(
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.g.dart
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.g.dart
Map<String, dynamic> _$FeedCursorModelToJson(_FeedCursorModel instance) =>
=======
Map<String, dynamic> _$$CommentCursorImplToJson(_$CommentCursorImpl instance) =>
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.g.dart
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

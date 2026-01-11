// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

<<<<<<< HEAD:lib/features/feed/data/models/comment_cursor_model.g.dart
_CommentCursorModel _$CommentCursorModelFromJson(Map<String, dynamic> json) =>
    _CommentCursorModel(
=======
_$FeedCursorImpl _$$FeedCursorImplFromJson(Map<String, dynamic> json) =>
    _$FeedCursorImpl(
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/feed_cursor.g.dart
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

<<<<<<< HEAD:lib/features/feed/data/models/comment_cursor_model.g.dart
Map<String, dynamic> _$CommentCursorModelToJson(_CommentCursorModel instance) =>
=======
Map<String, dynamic> _$$FeedCursorImplToJson(_$FeedCursorImpl instance) =>
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/feed_cursor.g.dart
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentModel _$CommentModelFromJson(Map<String, dynamic> json) =>
    _CommentModel(
      id: json['id'] as String,
      postId: json['post_id'] as String,
      userId: json['user_id'] as String,
      content: json['content'] as String,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      username: json['username'] as String?,
      photoUrl: json['photo_url'] as String?,
      parentCommentId: json['parent_comment_id'] as String?,
      likesCount: (json['likes_count'] as num?)?.toInt() ?? 0,
      isLiked: json['isLiked'] as bool? ?? false,
      replyCount: (json['reply_count'] as num?)?.toInt() ?? 0,
      mentionIds: json['mention_ids'] == null
          ? const []
          : const StringListConverter().fromJson(json['mention_ids']),
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$CommentModelToJson(_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'user_id': instance.userId,
      'content': instance.content,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'username': instance.username,
      'photo_url': instance.photoUrl,
      'parent_comment_id': instance.parentCommentId,
      'likes_count': instance.likesCount,
      'reply_count': instance.replyCount,
      'mention_ids': const StringListConverter().toJson(instance.mentionIds),
      'is_active': instance.isActive,
    };

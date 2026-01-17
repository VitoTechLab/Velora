import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const CommentModel._();

  const factory CommentModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'post_id') required String postId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'content') required String content,
    @UtcDateTimeConverter() @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'parent_comment_id') String? parentCommentId,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default([]) List<CommentModel> replies,
    @JsonKey(name: 'likes_count') @Default(0) int likesCount,
    @JsonKey(includeToJson: false) @Default(false) bool isLiked,
    @JsonKey(name: 'reply_count') @Default(0) int replyCount,
    @StringListConverter() @JsonKey(name: 'mention_ids') @Default([]) List<String> mentionIds,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

  CommentEntity toEntity() {
    return CommentEntity(
      id: id,
      postId: postId,
      userId: userId,
      content: content,
      createdAt: createdAt,
      username: username,
      photoUrl: photoUrl,
      parentCommentId: parentCommentId,
      replies: replies.map((r) => r.toEntity()).toList(),
      likesCount: likesCount,
      isLiked: isLiked,
      replyCount: replyCount,
      repliesLoaded: replies.isNotEmpty,
      mentionIds: mentionIds,
      isActive: isActive,
    );
  }

  Map<String, dynamic> toInsertJson() {
    final payload = <String, dynamic>{
      'post_id': postId,
      'user_id': userId,
      'content': content,
      'parent_comment_id': parentCommentId,
      'mention_ids': mentionIds.isEmpty ? null : mentionIds,
    };
    payload.removeWhere((key, value) => value == null);
    return payload;
  }

  factory CommentModel.fromEntity(CommentEntity entity) {
    return CommentModel(
      id: entity.id,
      postId: entity.postId,
      userId: entity.userId,
      content: entity.content,
      createdAt: entity.createdAt,
      username: entity.username,
      photoUrl: entity.photoUrl,
      parentCommentId: entity.parentCommentId,
      replies: entity.replies.map((r) => CommentModel.fromEntity(r)).toList(),
      likesCount: entity.likesCount,
      isLiked: entity.isLiked,
      replyCount: entity.replyCount,
      mentionIds: entity.mentionIds,
      isActive: entity.isActive,
    );
  }
}

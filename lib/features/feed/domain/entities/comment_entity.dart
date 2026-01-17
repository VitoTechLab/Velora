import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';

@freezed
class CommentEntity with _$CommentEntity {
  const factory CommentEntity({
    required String id,
    required String postId,
    required String userId,
    required String content,
    required DateTime createdAt,
    String? username,
    String? photoUrl,
    @Default(0) int likesCount,
    @Default(false) bool isLiked,
    String? parentCommentId,
    @Default([]) List<CommentEntity> replies,
    @Default(0) int replyCount,
    @Default(false) bool repliesLoaded,
    @Default(false) bool isLoadingReplies,
    @Default([]) List<String> mentionIds,
    @Default(true) bool isActive,
  }) = _CommentEntity;
}

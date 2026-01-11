import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';

/// Comment entity for feed posts.
@freezed
abstract class CommentEntity with _$CommentEntity {
  const factory CommentEntity({
    required String id,
    required String postId,
    required String userId,
    required String content,
    required DateTime createdAt,
    String? userFullName,
    String? userPhotoUrl,
    @Default(0) int likesCount,
    @Default(false) bool isLiked,
    String? parentCommentId,
    @Default([]) List<CommentEntity> replies,
    /// Total reply count from server.
    @Default(0) int replyCount,
    /// Whether replies have been loaded for this comment.
    @Default(false) bool repliesLoaded,
    /// Whether replies are currently being fetched.
    @Default(false) bool isLoadingReplies,
  }) = _CommentEntity;
}

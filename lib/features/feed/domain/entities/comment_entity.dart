import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';

/// Comment entity for posts
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
    String? parentCommentId, // For nested replies
    @Default([]) List<CommentEntity> replies,
  }) = _CommentEntity;
}

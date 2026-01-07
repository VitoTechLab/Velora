import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Adds a new comment to a feed post.
class AddComment {
  final FeedRepository repository;

  AddComment(this.repository);

  Future<Either<Failure, CommentEntity>> call({
    required String postId,
    required String content,
    String? parentCommentId,
  }) {
    return repository.addComment(
      postId: postId,
      content: content,
      parentCommentId: parentCommentId,
    );
  }
}

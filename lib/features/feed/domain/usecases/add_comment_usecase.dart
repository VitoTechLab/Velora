import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Adds a comment to a post.
class AddCommentUseCase {
  const AddCommentUseCase({required this.repository});

  final FeedRepository repository;

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

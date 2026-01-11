import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Deletes a comment by id.
class DeleteCommentUseCase {
  const DeleteCommentUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, void>> call(String commentId) {
    return repository.deleteComment(commentId);
  }
}

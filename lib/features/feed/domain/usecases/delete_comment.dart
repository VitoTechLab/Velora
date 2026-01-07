import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Deletes a single comment by id.
class DeleteComment {
  final FeedRepository repository;

  DeleteComment(this.repository);

  Future<Either<Failure, void>> call(String commentId) {
    return repository.deleteComment(commentId);
  }
}

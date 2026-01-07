import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Deletes a single feed post by id.
class DeletePost {
  final FeedRepository repository;

  DeletePost(this.repository);

  Future<Either<Failure, void>> call(String postId) {
    return repository.deletePost(postId);
  }
}

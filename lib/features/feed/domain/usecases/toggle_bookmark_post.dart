import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Toggles bookmark state for a feed post.
class ToggleBookmarkPost {
  final FeedRepository repository;

  ToggleBookmarkPost(this.repository);

  Future<Either<Failure, void>> call(String postId) {
    return repository.toggleBookmarkPost(postId);
  }
}

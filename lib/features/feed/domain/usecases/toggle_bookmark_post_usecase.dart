import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Toggles bookmark state for a post.
class ToggleBookmarkPostUseCase {
  const ToggleBookmarkPostUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, void>> call(String postId) {
    return repository.toggleBookmarkPost(postId);
  }
}

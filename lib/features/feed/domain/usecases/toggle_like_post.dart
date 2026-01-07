import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Toggles like state for a feed post.
class ToggleLikePost {
  final FeedRepository repository;

  ToggleLikePost(this.repository);

  Future<Either<Failure, void>> call(String postId) {
    return repository.toggleLikePost(postId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Toggles like state for a comment.
class ToggleLikeCommentUseCase {
  const ToggleLikeCommentUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, void>> call(String commentId) {
    return repository.toggleLikeComment(commentId);
  }
}

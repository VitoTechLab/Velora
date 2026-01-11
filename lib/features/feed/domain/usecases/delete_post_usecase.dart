import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Deletes a post by id.
class DeletePostUseCase {
  const DeletePostUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, void>> call(String postId) {
    return repository.deletePost(postId);
  }
}

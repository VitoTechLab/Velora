import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Updates an existing post.
class UpdatePostUseCase {
  const UpdatePostUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, FeedEntity>> call(FeedEntity post) {
    return repository.updatePost(post: post);
  }
}

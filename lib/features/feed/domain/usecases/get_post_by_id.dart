import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Loads a single feed post by id.
class GetPostById {
  final FeedRepository repository;

  GetPostById(this.repository);

  Future<Either<Failure, FeedEntity>> call(String postId) {
    return repository.getPostById(postId);
  }
}

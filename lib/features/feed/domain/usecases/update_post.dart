import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Updates an existing feed post entity.
class UpdatePost {
  final FeedRepository repository;

  UpdatePost(this.repository);

  Future<Either<Failure, FeedEntity>> call(FeedEntity post) {
    return repository.updatePost(post: post);
  }
}

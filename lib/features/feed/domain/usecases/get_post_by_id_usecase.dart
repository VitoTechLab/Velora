import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Fetches a single post by id.
class GetPostByIdUseCase {
  const GetPostByIdUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, FeedEntity>> call(String postId) {
    return repository.getPostById(postId);
  }
}

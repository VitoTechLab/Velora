import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/entities/create_post_entity.dart';

abstract class PostRepository {
  Future<Either<Failure, FeedEntity>> createPost({
    required CreatePostEntity post,
  });
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';

/// Repository interface for post operations
abstract class PostRepository {
  /// Create new feed post with media and visibility settings
  Future<Either<Failure, FeedEntity>> createFeedPost({
    required PostFeedEntity post,
  });
}

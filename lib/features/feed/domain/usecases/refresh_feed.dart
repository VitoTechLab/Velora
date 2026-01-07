import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Refreshes the feed by reloading the first page of posts.
class RefreshFeed {
  final FeedRepository repository;

  RefreshFeed(this.repository);

  Future<Either<Failure, List<FeedEntity>>> call({int limit = 20}) async {
    final result = await repository.getFeed(limit: limit, cursor: null);
    return result.map((r) => r.posts);
  }
}

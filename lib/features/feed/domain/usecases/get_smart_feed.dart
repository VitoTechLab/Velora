import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Loads the first page of the feed using cursor-based pagination.
class LoadInitialFeed {
  final FeedRepository repository;

  LoadInitialFeed(this.repository);

  Future<Either<Failure, FeedPaginationResult>> call({
    int limit = 20,
    String? userId,
  }) {
    return repository.getFeed(limit: limit, cursor: null, userId: userId);
  }
}

/// Loads the next page of the feed using the last cursor.
class LoadMoreFeed {
  final FeedRepository repository;

  LoadMoreFeed(this.repository);

  Future<Either<Failure, FeedPaginationResult>> call({
    required FeedCursorEntity cursor,
    int limit = 20,
    String? userId,
  }) {
    return repository.getFeed(limit: limit, cursor: cursor, userId: userId);
  }
}

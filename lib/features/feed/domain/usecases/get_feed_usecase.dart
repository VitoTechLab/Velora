import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Loads the initial page of feed.
class LoadInitialFeedUseCase {
  const LoadInitialFeedUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, FeedPaginationResult>> call({
    int limit = 20,
    String? userId,
  }) {
    return repository.getFeed(limit: limit, cursor: null, userId: userId);
  }
}

/// Loads next page of feed using cursor.
class LoadMoreFeedUseCase {
  const LoadMoreFeedUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, FeedPaginationResult>> call({
    required FeedCursorEntity cursor,
    int limit = 20,
    String? userId,
  }) {
    return repository.getFeed(limit: limit, cursor: cursor, userId: userId);
  }
}

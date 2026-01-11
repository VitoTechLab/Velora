import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Refreshes feed by reloading first page.
class RefreshFeedUseCase {
  const RefreshFeedUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, List<FeedEntity>>> call({int limit = 20}) async {
    final result = await repository.getFeed(limit: limit, cursor: null);
    return result.map((r) => r.posts);
  }
}

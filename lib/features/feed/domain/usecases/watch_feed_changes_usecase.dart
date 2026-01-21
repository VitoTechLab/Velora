import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Watches realtime feed changes (new posts, updates).
class WatchFeedChangesUseCase {
  WatchFeedChangesUseCase({required FeedRepository repository})
      : _repository = repository;

  final FeedRepository _repository;

  Stream<Either<Failure, FeedEntity>> call() {
    return _repository.watchFeedChanges();
  }
}

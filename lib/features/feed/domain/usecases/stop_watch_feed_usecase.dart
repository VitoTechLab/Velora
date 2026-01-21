import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Stops watching realtime feed changes.
class StopWatchFeedUseCase {
  StopWatchFeedUseCase({required FeedRepository repository})
      : _repository = repository;

  final FeedRepository _repository;

  Future<void> call() => _repository.stopWatchFeed();
}

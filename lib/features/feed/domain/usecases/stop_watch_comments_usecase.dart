import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Stops watching realtime comments.
class StopWatchCommentsUseCase {
  const StopWatchCommentsUseCase({required this.repository});

  final FeedRepository repository;

  Future<void> call() => repository.stopWatchComments();
}

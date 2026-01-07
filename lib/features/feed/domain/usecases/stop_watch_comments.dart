import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

class StopWatchComments {
  StopWatchComments(this.repository);

  final FeedRepository repository;

  Future<void> call() => repository.stopWatchComments();
}

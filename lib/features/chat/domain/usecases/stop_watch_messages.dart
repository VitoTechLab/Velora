import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Stops any active realtime message watch subscription.
class StopWatchMessages {
  StopWatchMessages(this.repository);

  final ChatRepository repository;

  Future<void> call() => repository.stopWatchMessages();
}

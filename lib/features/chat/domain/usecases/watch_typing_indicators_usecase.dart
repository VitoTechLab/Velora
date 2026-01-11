import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Watch typing indicators in realtime using Supabase Realtime Broadcast
/// Returns Stream<String> containing userId who is typing
class WatchTypingIndicatorsUseCase {
  const WatchTypingIndicatorsUseCase({required this.repository});

  final ChatRepository repository;

  Stream<String> call({required String conversationId}) {
    return repository.watchTypingIndicators(conversationId: conversationId);
  }
}

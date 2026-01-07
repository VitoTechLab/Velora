import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case untuk menonton typing indicators secara realtime
/// Menggunakan Supabase Realtime Broadcast
/// Return Stream<String> berisi userId yang sedang mengetik
class WatchTypingIndicators {
  final ChatRepository repository;

  WatchTypingIndicators(this.repository);

  Stream<String> call({required String conversationId}) {
    return repository.watchTypingIndicators(conversationId: conversationId);
  }
}

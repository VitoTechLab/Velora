import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case untuk mengirim typing indicator
/// Menggunakan Supabase Realtime Broadcast (RAM-to-RAM, tidak disimpan ke DB)
class SendTypingIndicator {
  final ChatRepository repository;

  SendTypingIndicator(this.repository);

  Future<Either<Failure, void>> call({
    required String conversationId,
    required bool isTyping,
  }) {
    return repository.sendTypingIndicator(
      conversationId: conversationId,
      isTyping: isTyping,
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Send typing indicator using Supabase Realtime Broadcast (RAM-to-RAM, not stored in DB)
class SendTypingIndicatorUseCase {
  const SendTypingIndicatorUseCase({required this.repository});

  final ChatRepository repository;

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

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case for sending a poll message with SQL v2 fields
class SendPollMessageUseCase {
  const SendPollMessageUseCase({required this.repository});
  final ChatRepository repository;

  Future<Either<Failure, ChatMessageEntity>> call({
    required String conversationId,
    required String question,
    required List<String> options,
    required bool multipleChoice,
    int maxUserVotes = 1,
  }) {
    return repository.sendPollMessage(
      conversationId: conversationId,
      question: question,
      options: options,
      multipleChoice: multipleChoice,
      maxUserVotes: maxUserVotes,
    );
  }
}

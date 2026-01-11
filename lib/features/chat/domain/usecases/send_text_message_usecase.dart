import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Sends a plain text chat message.
class SendTextMessageUseCase {
  const SendTextMessageUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, ChatMessageEntity>> call({
    required String conversationId,
    required String body,
    String? replyToMessageId,
  }) {
    return repository.sendTextMessage(
      conversationId: conversationId,
      body: body,
      replyToMessageId: replyToMessageId,
    );
  }
}

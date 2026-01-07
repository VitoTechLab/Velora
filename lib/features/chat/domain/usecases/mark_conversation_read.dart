import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Marks a conversation as read up to an optional message id.
class MarkConversationRead {
  MarkConversationRead(this.repository);

  final ChatRepository repository;

  Future<Either<Failure, void>> call({
    required String conversationId,
    String? uptoMessageId,
  }) {
    return repository.markConversationRead(
      conversationId: conversationId,
      uptoMessageId: uptoMessageId,
    );
  }
}

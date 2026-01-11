import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Edit an existing chat message (update body, set edited_at).
class EditMessageUseCase {
  const EditMessageUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, ChatMessageEntity>> call({
    required String messageId,
    required String newBody,
  }) {
    return repository.editMessage(messageId: messageId, newBody: newBody);
  }
}

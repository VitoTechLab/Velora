import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Delete a chat message (soft delete: set deleted_at and deleted_by).
class DeleteMessageUseCase {
  const DeleteMessageUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, void>> call({required String messageId}) {
    return repository.deleteMessage(messageId: messageId);
  }
}

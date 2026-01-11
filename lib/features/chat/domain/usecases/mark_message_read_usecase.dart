import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Mark message as read - creates entry in message_reads table
class MarkMessageReadUseCase {
  const MarkMessageReadUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, void>> call({required String messageId}) {
    return repository.markMessageRead(messageId: messageId);
  }
}

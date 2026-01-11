import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Get list of users who have read the message (read receipts)
class GetMessageReadsUseCase {
  const GetMessageReadsUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, List<MessageReadEntity>>> call({
    required String messageId,
  }) {
    return repository.getMessageReads(messageId: messageId);
  }
}

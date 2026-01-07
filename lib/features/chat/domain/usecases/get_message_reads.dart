import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case untuk mengambil daftar siapa saja yang sudah membaca pesan
/// (read receipts)
class GetMessageReads {
  final ChatRepository repository;

  GetMessageReads(this.repository);

  Future<Either<Failure, List<MessageReadEntity>>> call({
    required String messageId,
  }) {
    return repository.getMessageReads(messageId: messageId);
  }
}

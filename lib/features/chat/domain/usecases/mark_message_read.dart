import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case untuk menandai pesan sebagai sudah dibaca
/// Membuat entry di tabel message_reads
class MarkMessageRead {
  final ChatRepository repository;

  MarkMessageRead(this.repository);

  Future<Either<Failure, void>> call({required String messageId}) {
    return repository.markMessageRead(messageId: messageId);
  }
}

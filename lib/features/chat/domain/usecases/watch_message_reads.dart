import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case untuk menonton read receipts secara realtime
/// Menggunakan Supabase Realtime PostgresChanges
class WatchMessageReads {
  final ChatRepository repository;

  WatchMessageReads(this.repository);

  Stream<Either<Failure, MessageReadEntity>> call({
    required String conversationId,
  }) {
    return repository.watchMessageReads(conversationId: conversationId);
  }
}

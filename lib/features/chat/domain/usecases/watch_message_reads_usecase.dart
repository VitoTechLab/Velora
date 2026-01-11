import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Watch read receipts in realtime using Supabase Realtime PostgresChanges
class WatchMessageReadsUseCase {
  const WatchMessageReadsUseCase({required this.repository});

  final ChatRepository repository;

  Stream<Either<Failure, MessageReadEntity>> call({
    required String conversationId,
  }) {
    return repository.watchMessageReads(conversationId: conversationId);
  }
}

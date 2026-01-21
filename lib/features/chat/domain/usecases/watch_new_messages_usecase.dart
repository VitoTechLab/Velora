import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/realtime_message_event_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Watches realtime new messages for a conversation.
/// Returns a stream of [RealtimeMessageEventEntity] containing both the message and event type (insert/update).
class WatchNewMessagesUseCase {
  const WatchNewMessagesUseCase({required this.repository});

  final ChatRepository repository;

  Stream<Either<Failure, RealtimeMessageEventEntity>> call({
    required String conversationId,
  }) {
    return repository.watchNewMessages(conversationId: conversationId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Watches realtime new messages for a conversation.
class WatchNewMessagesUseCase {
  const WatchNewMessagesUseCase({required this.repository});

  final ChatRepository repository;

  Stream<Either<Failure, ChatMessageEntity>> call({
    required String conversationId,
  }) {
    return repository.watchNewMessages(conversationId: conversationId);
  }
}

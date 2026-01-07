import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_pagination_result.dart';
import 'package:velora/features/chat/domain/entities/message_cursor.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Loads messages for a conversation using cursor-based pagination.
class GetMessages {
  GetMessages(this.repository);

  final ChatRepository repository;

  Future<Either<Failure, ChatMessagePaginationResult>> call({
    required String conversationId,
    required int limit,
    MessageCursorEntity? cursor,
  }) {
    return repository.getMessages(
      conversationId: conversationId,
      limit: limit,
      cursor: cursor,
    );
  }
}

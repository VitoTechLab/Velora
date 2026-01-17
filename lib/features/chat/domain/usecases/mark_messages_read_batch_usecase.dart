import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Batch mark multiple messages as read using mark_messages_read_batch RPC.
/// More efficient than marking messages one by one during scroll.
class MarkMessagesReadBatchUseCase {
  const MarkMessagesReadBatchUseCase({required this.repository});

  final ChatRepository repository;

  /// Returns count of messages actually marked as read
  Future<Either<Failure, int>> call({required List<String> messageIds}) {
    return repository.markMessagesReadBatch(messageIds: messageIds);
  }
}

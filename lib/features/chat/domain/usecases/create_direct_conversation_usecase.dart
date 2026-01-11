import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Create or get existing direct conversation with another user.
/// Uses create_direct_conversation RPC function (race-condition safe).
class CreateDirectConversationUseCase {
  const CreateDirectConversationUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, String>> call({required String otherUserId}) {
    return repository.createDirectConversation(otherUserId: otherUserId);
  }
}

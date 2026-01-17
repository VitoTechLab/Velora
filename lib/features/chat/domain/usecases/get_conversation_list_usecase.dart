import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Get user conversation list from get_conversation_list_optimized RPC
class GetConversationListUseCase {
  const GetConversationListUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, List<ConversationListEntity>>> call() {
    return repository.getConversationList();
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case untuk mengambil daftar percakapan pengguna
/// dari view v_conversation_list
class GetConversationList {
  final ChatRepository repository;

  GetConversationList(this.repository);

  Future<Either<Failure, List<ConversationListEntity>>> call() {
    return repository.getConversationList();
  }
}

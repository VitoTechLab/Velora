import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

class SendEventMessageUseCase {
  const SendEventMessageUseCase({required this.repository});
  final ChatRepository repository;

  Future<Either<Failure, ChatMessageEntity>> call({
    required String conversationId,
    required String title,
    String? description,
    String? location,
    required DateTime startDate,
    required DateTime endDate,
  }) {
    return repository.sendEventMessage(
      conversationId: conversationId,
      title: title,
      description: description,
      location: location,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

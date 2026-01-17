import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case for sending an event message with SQL v2 fields
class SendEventMessageUseCase {
  const SendEventMessageUseCase({required this.repository});
  final ChatRepository repository;

  Future<Either<Failure, ChatMessageEntity>> call({
    required String conversationId,
    required String title,
    String? description,
    String? locationName,
    String? address,
    bool isOnline = false,
    String? meetingUrl,
    String? coverUrl,
    required DateTime startDate,
    required DateTime endDate,
  }) {
    return repository.sendEventMessage(
      conversationId: conversationId,
      title: title,
      description: description,
      locationName: locationName,
      address: address,
      isOnline: isOnline,
      meetingUrl: meetingUrl,
      coverUrl: coverUrl,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

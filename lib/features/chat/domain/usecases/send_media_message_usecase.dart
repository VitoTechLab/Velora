import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Sends a media message (image, video, document, audio).
class SendMediaMessageUseCase {
  const SendMediaMessageUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, ChatMessageEntity>> call({
    required String conversationId,
    required String mediaUrl,
    required String mediaType,
    String? mimeType,
    String? fileName,
    int? fileSize,
    String? caption,
  }) {
    return repository.sendMediaMessage(
      conversationId: conversationId,
      mediaUrl: mediaUrl,
      mediaType: mediaType,
      mimeType: mimeType,
      fileName: fileName,
      fileSize: fileSize,
      caption: caption,
    );
  }
}

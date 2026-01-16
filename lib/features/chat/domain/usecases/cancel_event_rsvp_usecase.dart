import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Cancel RSVP response to an event
class CancelEventRsvpUseCase {
  const CancelEventRsvpUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, void>> call({required String eventMessageId}) {
    return repository.cancelEventRsvp(eventMessageId: eventMessageId);
  }
}

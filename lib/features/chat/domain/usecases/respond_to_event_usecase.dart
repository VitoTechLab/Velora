import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Respond to an event with RSVP status
class RespondToEventUseCase {
  const RespondToEventUseCase({required this.repository});

  final ChatRepository repository;

  /// [status] can be 'going', 'interested', or 'not_going'
  Future<Either<Failure, void>> call({
    required String eventMessageId,
    required String status,
  }) {
    return repository.respondToEvent(
      eventMessageId: eventMessageId,
      status: status,
    );
  }
}

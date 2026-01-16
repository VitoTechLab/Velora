import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Vote on a poll option
/// For single choice polls, previous votes will be automatically removed
class VotePollOptionUseCase {
  const VotePollOptionUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, void>> call({
    required String pollMessageId,
    required String optionId,
  }) {
    return repository.votePollOption(
      pollMessageId: pollMessageId,
      optionId: optionId,
    );
  }
}

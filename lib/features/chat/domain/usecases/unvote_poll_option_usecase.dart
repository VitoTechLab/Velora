import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Remove vote from a poll option (for toggling off in multiple choice polls)
class UnvotePollOptionUseCase {
  const UnvotePollOptionUseCase({required this.repository});

  final ChatRepository repository;

  Future<Either<Failure, void>> call({required String optionId}) {
    return repository.unvotePollOption(optionId: optionId);
  }
}

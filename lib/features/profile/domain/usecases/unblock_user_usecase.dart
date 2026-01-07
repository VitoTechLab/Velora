import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class UnblockUserUseCase {
  final ProfileRepository repository;

  UnblockUserUseCase(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.unblockUser(targetUserId);
  }
}

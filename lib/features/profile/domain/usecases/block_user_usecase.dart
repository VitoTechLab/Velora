import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class BlockUserUseCase {
  final ProfileRepository repository;

  BlockUserUseCase(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.blockUser(targetUserId);
  }
}

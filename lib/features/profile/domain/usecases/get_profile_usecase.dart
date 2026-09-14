import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class GetProfileUseCase {
  final ProfileRepository repository;

  GetProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(String userId) {
    return repository.getProfile(userId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class GetProfileUseCase {
  final ProfileRepository repository;

  GetProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileModel>> call(String userId) {
    return repository.getProfile(userId);
  }
}

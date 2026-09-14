import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/domain/entities/update_profile_params.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class UpdateProfileUseCase {
  final ProfileRepository repository;

  UpdateProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
    UpdateProfileParams updateParams,
  ) {
    return repository.updateProfile(updateParams);
  }
}

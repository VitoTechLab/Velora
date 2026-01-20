import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';
import 'package:velora/features/profile/data/models/update_profile_model.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class UpdateProfileUseCase {
  final ProfileRepository repository;

  UpdateProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileModel>> call(
    UpdateProfileModel updateModel,
  ) {
    return repository.updateProfile(updateModel);
  }
}

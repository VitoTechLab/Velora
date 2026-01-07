import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class ToggleFollowUseCase {
  final ProfileRepository repository;

  ToggleFollowUseCase(this.repository);

  Future<Either<Failure, void>> call(
    String targetUserId, {
    required bool isPrivate,
  }) {
    return repository.toggleFollow(targetUserId, isPrivate: isPrivate);
  }
}

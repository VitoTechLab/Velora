import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/domain/entities/update_profile_params.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';

abstract class ProfileRepository {
  /// Get user profile
  Future<Either<Failure, UserProfileEntity>> getProfile(String userId);

  /// Update user profile
  Future<Either<Failure, UserProfileEntity>> updateProfile(
    UpdateProfileParams updateParams,
  );

  /// Follow/Unfollow user
  Future<Either<Failure, void>> toggleFollow(
    String targetUserId, {
    required bool isPrivate,
  });

  /// Block user
  Future<Either<Failure, void>> blockUser(String targetUserId);

  /// Unblock user
  Future<Either<Failure, void>> unblockUser(String targetUserId);
}

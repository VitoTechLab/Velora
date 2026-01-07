import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';

abstract class ProfileRepository {
  /// Get user profile
  Future<Either<Failure, UserProfileModel>> getProfile(String userId);

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

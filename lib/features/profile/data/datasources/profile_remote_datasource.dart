import 'package:velora/features/profile/data/models/user_profile_model.dart';

abstract class ProfileRemoteDataSource {
  /// Get user profile by ID
  Future<UserProfileModel> getProfile(String userId);

  /// Toggle follow/unfollow a user
  Future<void> toggleFollow(String targetUserId, {required bool isPrivate});

  /// Block a user
  Future<void> blockUser(String targetUserId);

  /// Unblock a user
  Future<void> unblockUser(String targetUserId);
}

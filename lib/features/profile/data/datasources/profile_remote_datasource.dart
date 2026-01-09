import 'package:velora/features/profile/data/models/update_profile_model.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';

// Re-export for convenience
export 'package:velora/features/profile/data/models/update_profile_model.dart';

abstract class ProfileRemoteDataSource {
  /// Get user profile by ID
  Future<UserProfileModel> getProfile(String userId);

  /// Get current user's own profile
  Future<UserProfileModel> getMyProfile();

  /// Update current user's profile
  Future<UserProfileModel> updateProfile(UpdateProfileModel params);

  /// Toggle follow/unfollow a user
  Future<void> toggleFollow(String targetUserId, {required bool isPrivate});

  /// Block a user
  Future<void> blockUser(String targetUserId);

  /// Unblock a user
  Future<void> unblockUser(String targetUserId);

  /// Check if username is available
  Future<bool> isUsernameAvailable(String username);
}

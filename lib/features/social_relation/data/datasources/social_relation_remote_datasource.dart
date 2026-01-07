import 'package:velora/features/social_relation/data/models/blocked_user_model.dart';
import 'package:velora/features/social_relation/data/models/follow_request_model.dart';
import 'package:velora/features/social_relation/data/models/muted_user_model.dart';
import 'package:velora/features/social_relation/data/models/restricted_user_model.dart';

/// Remote data source for social relation operations
abstract class SocialRelationRemoteDataSource {
  // ========== FOLLOW OPERATIONS ==========

  /// Follow a user (public account)
  Future<void> followUser(String targetUserId);

  /// Unfollow a user
  Future<void> unfollowUser(String targetUserId);

  /// Check if current user is following target user
  Future<bool> checkIfFollowing(String targetUserId);

  /// Get list of user IDs that current user is following
  Future<List<String>> getFollowingUserIds();

  // ========== FOLLOW REQUEST OPERATIONS ==========

  /// Send follow request (private account)
  Future<void> sendFollowRequest(String targetUserId);

  /// Cancel follow request
  Future<void> cancelFollowRequest(String targetUserId);

  /// Accept follow request
  Future<void> acceptFollowRequest(String requesterId);

  /// Reject follow request
  Future<void> rejectFollowRequest(String requesterId);

  /// Get pending follow requests received
  Future<List<FollowRequestModel>> getPendingFollowRequests();

  /// Get pending follow requests sent
  Future<List<FollowRequestModel>> getSentFollowRequests();

  /// Check if follow request exists
  Future<bool> checkIfFollowRequestPending(String targetUserId);

  // ========== BLOCK OPERATIONS ==========

  /// Block a user
  Future<void> blockUser(String targetUserId);

  /// Unblock a user
  Future<void> unblockUser(String targetUserId);

  /// Check if user is blocked
  Future<bool> checkIfBlocked(String targetUserId);

  /// Get list of blocked users
  Future<List<BlockedUserModel>> getBlockedUsers();

  // ========== MUTE OPERATIONS ==========

  /// Mute a user
  Future<void> muteUser(String targetUserId);

  /// Unmute a user
  Future<void> unmuteUser(String targetUserId);

  /// Check if user is muted
  Future<bool> checkIfMuted(String targetUserId);

  /// Get list of muted users
  Future<List<MutedUserModel>> getMutedUsers();

  // ========== RESTRICT OPERATIONS ==========

  /// Restrict a user
  Future<void> restrictUser(String targetUserId);

  /// Unrestrict a user
  Future<void> unrestrictUser(String targetUserId);

  /// Check if user is restricted
  Future<bool> checkIfRestricted(String targetUserId);

  /// Get list of restricted users
  Future<List<RestrictedUserModel>> getRestrictedUsers();
}

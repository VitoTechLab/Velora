import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/entities/blocked_user_entity.dart';
import 'package:velora/features/social_relation/domain/entities/follow_request_entity.dart';
import 'package:velora/features/social_relation/domain/entities/muted_user_entity.dart';
import 'package:velora/features/social_relation/domain/entities/restricted_user_entity.dart';

/// Repository contract for social relation operations
abstract class SocialRelationRepository {
  // ========== FOLLOW OPERATIONS ==========

  /// Follow a user (public account)
  Future<Either<Failure, void>> followUser(String targetUserId);

  /// Unfollow a user
  Future<Either<Failure, void>> unfollowUser(String targetUserId);

  /// Check if current user is following target user
  Future<Either<Failure, bool>> checkIfFollowing(String targetUserId);

  /// Get list of user IDs that current user is following
  Future<Either<Failure, List<String>>> getFollowingUserIds();

  // ========== FOLLOW REQUEST OPERATIONS ==========

  /// Send follow request (private account)
  Future<Either<Failure, void>> sendFollowRequest(String targetUserId);

  /// Cancel follow request
  Future<Either<Failure, void>> cancelFollowRequest(String targetUserId);

  /// Accept follow request
  Future<Either<Failure, void>> acceptFollowRequest(String requesterId);

  /// Reject follow request
  Future<Either<Failure, void>> rejectFollowRequest(String requesterId);

  /// Get pending follow requests received
  Future<Either<Failure, List<FollowRequestEntity>>> getPendingFollowRequests();

  /// Get pending follow requests sent
  Future<Either<Failure, List<FollowRequestEntity>>> getSentFollowRequests();

  /// Check if follow request exists
  Future<Either<Failure, bool>> checkIfFollowRequestPending(
    String targetUserId,
  );

  // ========== BLOCK OPERATIONS ==========

  /// Block a user
  Future<Either<Failure, void>> blockUser(String targetUserId);

  /// Unblock a user
  Future<Either<Failure, void>> unblockUser(String targetUserId);

  /// Check if user is blocked
  Future<Either<Failure, bool>> checkIfBlocked(String targetUserId);

  /// Get list of blocked users
  Future<Either<Failure, List<BlockedUserEntity>>> getBlockedUsers();

  // ========== MUTE OPERATIONS ==========

  /// Mute a user
  Future<Either<Failure, void>> muteUser(String targetUserId);

  /// Unmute a user
  Future<Either<Failure, void>> unmuteUser(String targetUserId);

  /// Check if user is muted
  Future<Either<Failure, bool>> checkIfMuted(String targetUserId);

  /// Get list of muted users
  Future<Either<Failure, List<MutedUserEntity>>> getMutedUsers();

  // ========== RESTRICT OPERATIONS ==========

  /// Restrict a user
  Future<Either<Failure, void>> restrictUser(String targetUserId);

  /// Unrestrict a user
  Future<Either<Failure, void>> unrestrictUser(String targetUserId);

  /// Check if user is restricted
  Future<Either<Failure, bool>> checkIfRestricted(String targetUserId);

  /// Get list of restricted users
  Future<Either<Failure, List<RestrictedUserEntity>>> getRestrictedUsers();
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_relation_event.freezed.dart';

@freezed
abstract class SocialRelationEvent with _$SocialRelationEvent {
  // ========== FOLLOW EVENTS ==========

  const factory SocialRelationEvent.followUser(String targetUserId) =
      FollowUserEvent;

  const factory SocialRelationEvent.unfollowUser(String targetUserId) =
      UnfollowUserEvent;

  const factory SocialRelationEvent.checkIfFollowing(String targetUserId) =
      CheckIfFollowingEvent;

  // ========== FOLLOW REQUEST EVENTS ==========

  const factory SocialRelationEvent.sendFollowRequest(String targetUserId) =
      SendFollowRequestEvent;

  const factory SocialRelationEvent.cancelFollowRequest(String targetUserId) =
      CancelFollowRequestEvent;

  const factory SocialRelationEvent.acceptFollowRequest(String requesterId) =
      AcceptFollowRequestEvent;

  const factory SocialRelationEvent.rejectFollowRequest(String requesterId) =
      RejectFollowRequestEvent;

  const factory SocialRelationEvent.loadPendingFollowRequests() =
      LoadPendingFollowRequestsEvent;

  const factory SocialRelationEvent.loadSentFollowRequests() =
      LoadSentFollowRequestsEvent;

  // ========== BLOCK EVENTS ==========

  const factory SocialRelationEvent.blockUser(String targetUserId) =
      BlockUserEvent;

  const factory SocialRelationEvent.unblockUser(String targetUserId) =
      UnblockUserEvent;

  const factory SocialRelationEvent.loadBlockedUsers() = LoadBlockedUsersEvent;

  // ========== MUTE EVENTS ==========

  const factory SocialRelationEvent.muteUser(String targetUserId) =
      MuteUserEvent;

  const factory SocialRelationEvent.unmuteUser(String targetUserId) =
      UnmuteUserEvent;

  const factory SocialRelationEvent.loadMutedUsers() = LoadMutedUsersEvent;

  // ========== RESTRICT EVENTS ==========

  const factory SocialRelationEvent.restrictUser(String targetUserId) =
      RestrictUserEvent;

  const factory SocialRelationEvent.unrestrictUser(String targetUserId) =
      UnrestrictUserEvent;

  const factory SocialRelationEvent.loadRestrictedUsers() =
      LoadRestrictedUsersEvent;

  // ========== UTILITY EVENTS ==========

  const factory SocialRelationEvent.clearError() = ClearErrorEvent;

  const factory SocialRelationEvent.clearMessage() = ClearMessageEvent;
}

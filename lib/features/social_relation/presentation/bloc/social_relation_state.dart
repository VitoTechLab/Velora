import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/social_relation/domain/entities/blocked_user_entity.dart';
import 'package:velora/features/social_relation/domain/entities/follow_request_entity.dart';
import 'package:velora/features/social_relation/domain/entities/muted_user_entity.dart';
import 'package:velora/features/social_relation/domain/entities/restricted_user_entity.dart';

part 'social_relation_state.freezed.dart';

@freezed
abstract class SocialRelationState with _$SocialRelationState {
  const factory SocialRelationState({
    // ========== FOLLOW STATE ==========
    @Default(false) bool isFollowing,
    @Default(false) bool isLoadingFollow,
    String? errorFollow,

    // ========== FOLLOW REQUEST STATE ==========
    @Default(<FollowRequestEntity>[]) List<FollowRequestEntity> pendingRequests,
    @Default(<FollowRequestEntity>[]) List<FollowRequestEntity> sentRequests,
    @Default(false) bool hasFollowRequestPending,
    @Default(false) bool isLoadingRequests,
    String? errorRequests,

    // ========== BLOCK STATE ==========
    @Default(<BlockedUserEntity>[]) List<BlockedUserEntity> blockedUsers,
    @Default(false) bool isBlocked,
    @Default(false) bool isLoadingBlock,
    String? errorBlock,

    // ========== MUTE STATE ==========
    @Default(<MutedUserEntity>[]) List<MutedUserEntity> mutedUsers,
    @Default(false) bool isMuted,
    @Default(false) bool isLoadingMute,
    String? errorMute,

    // ========== RESTRICT STATE ==========
    @Default(<RestrictedUserEntity>[])
    List<RestrictedUserEntity> restrictedUsers,
    @Default(false) bool isRestricted,
    @Default(false) bool isLoadingRestrict,
    String? errorRestrict,

    // ========== GENERAL STATE ==========
    String? successMessage,
  }) = _SocialRelationState;
}

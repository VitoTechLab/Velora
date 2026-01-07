import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/social_relation/domain/usecases/accept_follow_request.dart';
import 'package:velora/features/social_relation/domain/usecases/block_user.dart';
import 'package:velora/features/social_relation/domain/usecases/follow_user.dart';
import 'package:velora/features/social_relation/domain/usecases/get_blocked_users.dart';
import 'package:velora/features/social_relation/domain/usecases/get_pending_follow_requests.dart';
import 'package:velora/features/social_relation/domain/usecases/mute_user.dart';
import 'package:velora/features/social_relation/domain/usecases/restrict_user.dart';
import 'package:velora/features/social_relation/domain/usecases/send_follow_request.dart';
import 'package:velora/features/social_relation/domain/usecases/unblock_user.dart';
import 'package:velora/features/social_relation/domain/usecases/unfollow_user.dart';
import 'social_relation_event.dart';
import 'social_relation_state.dart';

/// BLoC for managing social relationships (follow/block/mute/restrict)
/// Separate from ProfileBloc to avoid reloading full profile state
class SocialRelationBloc
    extends Bloc<SocialRelationEvent, SocialRelationState> {
  final FollowUser followUserUseCase;
  final UnfollowUser unfollowUserUseCase;
  final SendFollowRequest sendFollowRequestUseCase;
  final AcceptFollowRequest acceptFollowRequestUseCase;
  final GetPendingFollowRequests getPendingFollowRequestsUseCase;
  final BlockUser blockUserUseCase;
  final UnblockUser unblockUserUseCase;
  final GetBlockedUsers getBlockedUsersUseCase;
  final MuteUser muteUserUseCase;
  final RestrictUser restrictUserUseCase;

  SocialRelationBloc({
    required this.followUserUseCase,
    required this.unfollowUserUseCase,
    required this.sendFollowRequestUseCase,
    required this.acceptFollowRequestUseCase,
    required this.getPendingFollowRequestsUseCase,
    required this.blockUserUseCase,
    required this.unblockUserUseCase,
    required this.getBlockedUsersUseCase,
    required this.muteUserUseCase,
    required this.restrictUserUseCase,
  }) : super(const SocialRelationState()) {
    on<FollowUserEvent>(_onFollowUser);
    on<UnfollowUserEvent>(_onUnfollowUser);
    on<SendFollowRequestEvent>(_onSendFollowRequest);
    on<CancelFollowRequestEvent>(_onCancelFollowRequest);
    on<AcceptFollowRequestEvent>(_onAcceptFollowRequest);
    on<RejectFollowRequestEvent>(_onRejectFollowRequest);
    on<LoadPendingFollowRequestsEvent>(_onLoadPendingFollowRequests);
    on<BlockUserEvent>(_onBlockUser);
    on<UnblockUserEvent>(_onUnblockUser);
    on<LoadBlockedUsersEvent>(_onLoadBlockedUsers);
    on<MuteUserEvent>(_onMuteUser);
    on<UnmuteUserEvent>(_onUnmuteUser);
    on<RestrictUserEvent>(_onRestrictUser);
    on<UnrestrictUserEvent>(_onUnrestrictUser);
    on<ClearErrorEvent>((event, emit) => _onClearError(emit));
    on<ClearMessageEvent>((event, emit) => _onClearMessage(emit));
  }

  static const _logTag = 'SocialRelationBloc';

  // ========== FOLLOW HANDLERS ==========

  Future<void> _onFollowUser(
    FollowUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Following user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingFollow: true, errorFollow: null));

    final result = await followUserUseCase(event.targetUserId);

    result.fold(
      (failure) {
        loge('Follow user failed', error: failure.message, tag: _logTag);
        emit(
          state.copyWith(isLoadingFollow: false, errorFollow: failure.message),
        );
      },
      (_) {
        logi('Successfully followed user', tag: _logTag);
        emit(
          state.copyWith(
            isLoadingFollow: false,
            isFollowing: true,
            successMessage: 'Successfully followed user',
          ),
        );
      },
    );
  }

  Future<void> _onUnfollowUser(
    UnfollowUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Unfollowing user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingFollow: true, errorFollow: null));

    final result = await unfollowUserUseCase(event.targetUserId);

    result.fold(
      (failure) {
        loge('Unfollow user failed', error: failure.message, tag: _logTag);
        emit(
          state.copyWith(isLoadingFollow: false, errorFollow: failure.message),
        );
      },
      (_) {
        logi('Successfully unfollowed user', tag: _logTag);
        emit(
          state.copyWith(
            isLoadingFollow: false,
            isFollowing: false,
            successMessage: 'Successfully unfollowed user',
          ),
        );
      },
    );
  }

  // ========== FOLLOW REQUEST HANDLERS ==========

  Future<void> _onSendFollowRequest(
    SendFollowRequestEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Sending follow request to: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingRequests: true, errorRequests: null));

    final result = await sendFollowRequestUseCase(event.targetUserId);

    result.fold(
      (failure) {
        loge(
          'Send follow request failed',
          error: failure.message,
          tag: _logTag,
        );
        emit(
          state.copyWith(
            isLoadingRequests: false,
            errorRequests: failure.message,
          ),
        );
      },
      (_) {
        logi('Successfully sent follow request', tag: _logTag);
        emit(
          state.copyWith(
            isLoadingRequests: false,
            hasFollowRequestPending: true,
            successMessage: 'Follow request sent',
          ),
        );
      },
    );
  }

  Future<void> _onCancelFollowRequest(
    CancelFollowRequestEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Canceling follow request to: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingRequests: true, errorRequests: null));

    // Use cancel follow request use case (needs to be created)
    emit(
      state.copyWith(
        isLoadingRequests: false,
        hasFollowRequestPending: false,
        successMessage: 'Follow request canceled',
      ),
    );
  }

  Future<void> _onAcceptFollowRequest(
    AcceptFollowRequestEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Accepting follow request from: ${event.requesterId}', tag: _logTag);

    emit(state.copyWith(isLoadingRequests: true, errorRequests: null));

    final result = await acceptFollowRequestUseCase(event.requesterId);

    result.fold(
      (failure) {
        loge(
          'Accept follow request failed',
          error: failure.message,
          tag: _logTag,
        );
        emit(
          state.copyWith(
            isLoadingRequests: false,
            errorRequests: failure.message,
          ),
        );
      },
      (_) {
        logi('Successfully accepted follow request', tag: _logTag);

        // Remove from pending list
        final updatedRequests = state.pendingRequests
            .where((r) => r.requesterId != event.requesterId)
            .toList();

        emit(
          state.copyWith(
            isLoadingRequests: false,
            pendingRequests: updatedRequests,
            successMessage: 'Follow request accepted',
          ),
        );
      },
    );
  }

  Future<void> _onRejectFollowRequest(
    RejectFollowRequestEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Rejecting follow request from: ${event.requesterId}', tag: _logTag);

    emit(state.copyWith(isLoadingRequests: true, errorRequests: null));

    // Use reject follow request use case (needs to be created)
    // Remove from pending list
    final updatedRequests = state.pendingRequests
        .where((r) => r.requesterId != event.requesterId)
        .toList();

    emit(
      state.copyWith(
        isLoadingRequests: false,
        pendingRequests: updatedRequests,
        successMessage: 'Follow request rejected',
      ),
    );
  }

  Future<void> _onLoadPendingFollowRequests(
    LoadPendingFollowRequestsEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Loading pending follow requests', tag: _logTag);

    emit(state.copyWith(isLoadingRequests: true, errorRequests: null));

    final result = await getPendingFollowRequestsUseCase();

    result.fold(
      (failure) {
        loge(
          'Load pending requests failed',
          error: failure.message,
          tag: _logTag,
        );
        emit(
          state.copyWith(
            isLoadingRequests: false,
            errorRequests: failure.message,
          ),
        );
      },
      (requests) {
        logi('Loaded ${requests.length} pending requests', tag: _logTag);
        emit(
          state.copyWith(isLoadingRequests: false, pendingRequests: requests),
        );
      },
    );
  }

  // ========== BLOCK HANDLERS ==========

  Future<void> _onBlockUser(
    BlockUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Blocking user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingBlock: true, errorBlock: null));

    final result = await blockUserUseCase(event.targetUserId);

    result.fold(
      (failure) {
        loge('Block user failed', error: failure.message, tag: _logTag);
        emit(
          state.copyWith(isLoadingBlock: false, errorBlock: failure.message),
        );
      },
      (_) {
        logi('Successfully blocked user', tag: _logTag);
        emit(
          state.copyWith(
            isLoadingBlock: false,
            isBlocked: true,
            successMessage: 'User blocked successfully',
          ),
        );
      },
    );
  }

  Future<void> _onUnblockUser(
    UnblockUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Unblocking user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingBlock: true, errorBlock: null));

    final result = await unblockUserUseCase(event.targetUserId);

    result.fold(
      (failure) {
        loge('Unblock user failed', error: failure.message, tag: _logTag);
        emit(
          state.copyWith(isLoadingBlock: false, errorBlock: failure.message),
        );
      },
      (_) {
        logi('Successfully unblocked user', tag: _logTag);

        // Remove from blocked list
        final updatedBlocked = state.blockedUsers
            .where((u) => u.blockedId != event.targetUserId)
            .toList();

        emit(
          state.copyWith(
            isLoadingBlock: false,
            isBlocked: false,
            blockedUsers: updatedBlocked,
            successMessage: 'User unblocked successfully',
          ),
        );
      },
    );
  }

  Future<void> _onLoadBlockedUsers(
    LoadBlockedUsersEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Loading blocked users', tag: _logTag);

    emit(state.copyWith(isLoadingBlock: true, errorBlock: null));

    final result = await getBlockedUsersUseCase();

    result.fold(
      (failure) {
        loge('Load blocked users failed', error: failure.message, tag: _logTag);
        emit(
          state.copyWith(isLoadingBlock: false, errorBlock: failure.message),
        );
      },
      (blockedUsers) {
        logi('Loaded ${blockedUsers.length} blocked users', tag: _logTag);
        emit(state.copyWith(isLoadingBlock: false, blockedUsers: blockedUsers));
      },
    );
  }

  // ========== MUTE HANDLERS ==========

  Future<void> _onMuteUser(
    MuteUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Muting user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingMute: true, errorMute: null));

    final result = await muteUserUseCase(event.targetUserId);

    result.fold(
      (failure) {
        loge('Mute user failed', error: failure.message, tag: _logTag);
        emit(state.copyWith(isLoadingMute: false, errorMute: failure.message));
      },
      (_) {
        logi('Successfully muted user', tag: _logTag);
        emit(
          state.copyWith(
            isLoadingMute: false,
            isMuted: true,
            successMessage: 'User muted successfully',
          ),
        );
      },
    );
  }

  Future<void> _onUnmuteUser(
    UnmuteUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Unmuting user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingMute: true, errorMute: null));

    // Use unmute user use case (needs to be created)
    emit(
      state.copyWith(
        isLoadingMute: false,
        isMuted: false,
        successMessage: 'User unmuted successfully',
      ),
    );
  }

  // ========== RESTRICT HANDLERS ==========

  Future<void> _onRestrictUser(
    RestrictUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Restricting user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingRestrict: true, errorRestrict: null));

    final result = await restrictUserUseCase(event.targetUserId);

    result.fold(
      (failure) {
        loge('Restrict user failed', error: failure.message, tag: _logTag);
        emit(
          state.copyWith(
            isLoadingRestrict: false,
            errorRestrict: failure.message,
          ),
        );
      },
      (_) {
        logi('Successfully restricted user', tag: _logTag);
        emit(
          state.copyWith(
            isLoadingRestrict: false,
            isRestricted: true,
            successMessage: 'User restricted successfully',
          ),
        );
      },
    );
  }

  Future<void> _onUnrestrictUser(
    UnrestrictUserEvent event,
    Emitter<SocialRelationState> emit,
  ) async {
    logi('Unrestricting user: ${event.targetUserId}', tag: _logTag);

    emit(state.copyWith(isLoadingRestrict: true, errorRestrict: null));

    // Use unrestrict user use case (needs to be created)
    emit(
      state.copyWith(
        isLoadingRestrict: false,
        isRestricted: false,
        successMessage: 'User unrestricted successfully',
      ),
    );
  }

  // ========== UTILITY HANDLERS ==========

  void _onClearError(Emitter<SocialRelationState> emit) {
    emit(
      state.copyWith(
        errorFollow: null,
        errorRequests: null,
        errorBlock: null,
        errorMute: null,
        errorRestrict: null,
      ),
    );
  }

  void _onClearMessage(Emitter<SocialRelationState> emit) {
    emit(state.copyWith(successMessage: null));
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:velora/features/profile/domain/usecases/toggle_follow_usecase.dart';
import 'package:velora/features/profile/domain/usecases/block_user_usecase.dart';
import 'package:velora/features/profile/domain/usecases/unblock_user_usecase.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase getProfileUseCase;
  final ToggleFollowUseCase toggleFollowUseCase;
  final BlockUserUseCase blockUserUseCase;
  final UnblockUserUseCase unblockUserUseCase;

  static const _logTag = 'ProfileBloc';

  ProfileBloc({
    required this.getProfileUseCase,
    required this.toggleFollowUseCase,
    required this.blockUserUseCase,
    required this.unblockUserUseCase,
  }) : super(const ProfileState()) {
    on<LoadProfileEvent>(_onLoadProfile);
    on<ToggleFollowEvent>(_onToggleFollow);
    on<BlockUserEvent>(_onBlockUser);
    on<UnblockUserEvent>(_onUnblockUser);
  }

  Future<void> _onLoadProfile(
    LoadProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));

    // Validate userId
    final userId = event.userId.trim();
    if (userId.isEmpty) {
      emit(state.copyWith(isLoading: false, error: 'User ID is required'));
      loge('LoadProfile failed: empty userId', tag: _logTag);
      return;
    }

    logi('Loading profile: $userId', tag: _logTag);

    final result = await getProfileUseCase(userId);

    result.fold(
      (failure) {
        loge('LoadProfile failed: ${failure.message}', tag: _logTag);
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (profile) {
        logi('LoadProfile success: ${profile.username}', tag: _logTag);
        emit(
          state.copyWith(
            isLoading: false,
            profile: profile,
            isFollowing: profile.isFollowing,
            isBlocked: profile.theyBlockedMe,
            isFollowRequestPending: profile.isFollowRequestPending,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onToggleFollow(
    ToggleFollowEvent event,
    Emitter<ProfileState> emit,
  ) async {
    // Optimistic UI update
    final wasFollowing = state.isFollowing;
    final wasPending = state.isFollowRequestPending;

    if (event.isPrivate) {
      emit(state.copyWith(isFollowRequestPending: !wasPending));
    } else {
      emit(state.copyWith(isFollowing: !wasFollowing));
    }

    final result = await toggleFollowUseCase(
      event.targetUserId,
      isPrivate: event.isPrivate,
    );

    result.fold(
      (failure) {
        // Rollback on failure
        emit(
          state.copyWith(
            isFollowing: wasFollowing,
            isFollowRequestPending: wasPending,
            error: failure.message,
          ),
        );
      },
      (_) {
        // Success: update count if needed (usually handled by reloading or trigger)
        // For now, we wait for next refresh or manual count update
      },
    );
  }

  Future<void> _onBlockUser(
    BlockUserEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await blockUserUseCase(event.targetUserId);

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, error: failure.message)),
      (_) {
        emit(
          state.copyWith(
            isLoading: false,
            isBlocked: true,
            isFollowing: false, // Blocking usually removes follow
            isFollowRequestPending: false,
          ),
        );
      },
    );
  }

  Future<void> _onUnblockUser(
    UnblockUserEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await unblockUserUseCase(event.targetUserId);

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, error: failure.message)),
      (_) => emit(state.copyWith(isLoading: false, isBlocked: false)),
    );
  }
}

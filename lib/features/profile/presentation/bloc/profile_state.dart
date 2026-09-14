import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    UserProfileEntity? profile,
    String? error,
    @Default(false) bool isFollowing,
    @Default(false) bool isBlocked,
    @Default(false) bool isFollowRequestPending,
  }) = _ProfileState;
}

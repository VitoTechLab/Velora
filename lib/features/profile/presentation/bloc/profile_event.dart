import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfile({required String userId}) =
      LoadProfileEvent;

  const factory ProfileEvent.toggleFollow({
    required String targetUserId,
    required bool isPrivate,
  }) = ToggleFollowEvent;

  const factory ProfileEvent.blockUser({required String targetUserId}) =
      BlockUserEvent;

  const factory ProfileEvent.unblockUser({required String targetUserId}) =
      UnblockUserEvent;
}

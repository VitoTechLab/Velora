import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_presence_state.freezed.dart';

@freezed
abstract class UserPresenceState with _$UserPresenceState {
  const factory UserPresenceState({
    @Default({}) Map<String, bool> onlineUsers,
    @Default({}) Map<String, DateTime> lastSeen,
  }) = _UserPresenceState;
}

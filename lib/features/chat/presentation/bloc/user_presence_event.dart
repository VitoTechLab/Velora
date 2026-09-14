import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/user_presence_entity.dart';

part 'user_presence_event.freezed.dart';

@freezed
abstract class UserPresenceEvent with _$UserPresenceEvent {
  const factory UserPresenceEvent.started() = Started;
  const factory UserPresenceEvent.heartbeatTick() = HeartbeatTick;
  const factory UserPresenceEvent.connectivityChanged(bool isOnline) =
      ConnectivityChanged;
  const factory UserPresenceEvent.appLifecycleChanged(AppLifecycleState state) =
      AppLifecycleChanged;
  const factory UserPresenceEvent.presenceUpdated(
    List<UserPresenceEntity> onlineUsers,
  ) = PresenceUpdated;
  const factory UserPresenceEvent.fetchLastSeen(List<String> userIds) =
      FetchLastSeen;
}

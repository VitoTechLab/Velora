import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_presence_entity.freezed.dart';

@freezed
abstract class UserPresenceEntity with _$UserPresenceEntity {
  const factory UserPresenceEntity({
    required String userId,
    required bool isOnline,
    DateTime? lastSeenAt,
  }) = _UserPresenceEntity;
}

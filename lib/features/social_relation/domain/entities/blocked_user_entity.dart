import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocked_user_entity.freezed.dart';

@freezed
abstract class BlockedUserEntity with _$BlockedUserEntity {
  const factory BlockedUserEntity({
    required String blockerId,
    required String blockedId,
    required DateTime createdAt,
    String? blockedUsername,
    String? blockedPhotoUrl,
    String? blockedFullName,
  }) = _BlockedUserEntity;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/social_relation/domain/entities/blocked_user_entity.dart';

part 'blocked_user_model.freezed.dart';
part 'blocked_user_model.g.dart';

@freezed
abstract class BlockedUserModel with _$BlockedUserModel {
  const BlockedUserModel._();

  const factory BlockedUserModel({
    @JsonKey(name: 'blocker_id') required String blockerId,
    @JsonKey(name: 'blocked_id') required String blockedId,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,

    // Joined from user_profiles
    @JsonKey(name: 'blocked_username') String? blockedUsername,
    @JsonKey(name: 'blocked_photo_url') String? blockedPhotoUrl,
    @JsonKey(name: 'blocked_full_name') String? blockedFullName,
  }) = _BlockedUserModel;

  factory BlockedUserModel.fromJson(Map<String, dynamic> json) =>
      _$BlockedUserModelFromJson(json);

  BlockedUserEntity toEntity() {
    return BlockedUserEntity(
      blockerId: blockerId,
      blockedId: blockedId,
      createdAt: createdAt,
      blockedUsername: blockedUsername,
      blockedPhotoUrl: blockedPhotoUrl,
      blockedFullName: blockedFullName,
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/social_relation/domain/entities/muted_user_entity.dart';

part 'muted_user_model.freezed.dart';
part 'muted_user_model.g.dart';

@freezed
abstract class MutedUserModel with _$MutedUserModel {
  const MutedUserModel._();

  const factory MutedUserModel({
    @JsonKey(name: 'muter_id') required String muterId,
    @JsonKey(name: 'muted_id') required String mutedId,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,

    // Joined from user_profiles
    @JsonKey(name: 'muted_username') String? mutedUsername,
    @JsonKey(name: 'muted_photo_url') String? mutedPhotoUrl,
    @JsonKey(name: 'muted_full_name') String? mutedFullName,
  }) = _MutedUserModel;

  factory MutedUserModel.fromJson(Map<String, dynamic> json) =>
      _$MutedUserModelFromJson(json);

  MutedUserEntity toEntity() {
    return MutedUserEntity(
      muterId: muterId,
      mutedId: mutedId,
      createdAt: createdAt,
      mutedUsername: mutedUsername,
      mutedPhotoUrl: mutedPhotoUrl,
      mutedFullName: mutedFullName,
    );
  }
}

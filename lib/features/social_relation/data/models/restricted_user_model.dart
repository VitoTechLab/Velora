import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/social_relation/domain/entities/restricted_user_entity.dart';

part 'restricted_user_model.freezed.dart';
part 'restricted_user_model.g.dart';

@freezed
abstract class RestrictedUserModel with _$RestrictedUserModel {
  const RestrictedUserModel._();

  const factory RestrictedUserModel({
    @JsonKey(name: 'restrictor_id') required String restrictorId,
    @JsonKey(name: 'restricted_id') required String restrictedId,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,

    // Joined from user_profiles
    @JsonKey(name: 'restricted_username') String? restrictedUsername,
    @JsonKey(name: 'restricted_photo_url') String? restrictedPhotoUrl,
    @JsonKey(name: 'restricted_full_name') String? restrictedFullName,
  }) = _RestrictedUserModel;

  factory RestrictedUserModel.fromJson(Map<String, dynamic> json) =>
      _$RestrictedUserModelFromJson(json);

  RestrictedUserEntity toEntity() {
    return RestrictedUserEntity(
      restrictorId: restrictorId,
      restrictedId: restrictedId,
      createdAt: createdAt,
      restrictedUsername: restrictedUsername,
      restrictedPhotoUrl: restrictedPhotoUrl,
      restrictedFullName: restrictedFullName,
    );
  }
}

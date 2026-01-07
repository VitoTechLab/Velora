import 'package:freezed_annotation/freezed_annotation.dart';

part 'restricted_user_entity.freezed.dart';

@freezed
abstract class RestrictedUserEntity with _$RestrictedUserEntity {
  const factory RestrictedUserEntity({
    required String restrictorId,
    required String restrictedId,
    required DateTime createdAt,
    String? restrictedUsername,
    String? restrictedPhotoUrl,
    String? restrictedFullName,
  }) = _RestrictedUserEntity;
}

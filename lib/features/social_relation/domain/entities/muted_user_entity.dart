import 'package:freezed_annotation/freezed_annotation.dart';

part 'muted_user_entity.freezed.dart';

@freezed
abstract class MutedUserEntity with _$MutedUserEntity {
  const factory MutedUserEntity({
    required String muterId,
    required String mutedId,
    required DateTime createdAt,
    String? mutedUsername,
    String? mutedPhotoUrl,
    String? mutedFullName,
  }) = _MutedUserEntity;
}

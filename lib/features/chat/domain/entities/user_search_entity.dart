import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search_entity.freezed.dart';

/// Entity for user search result
@freezed
abstract class UserSearchEntity with _$UserSearchEntity {
  const factory UserSearchEntity({
    required String userId,
    required String username,
    String? avatarUrl,
    String? bio,
  }) = _UserSearchEntity;
}

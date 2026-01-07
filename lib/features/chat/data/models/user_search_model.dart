import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';

part 'user_search_model.freezed.dart';
part 'user_search_model.g.dart';

/// Model for user search result
@freezed
abstract class UserSearchModel with _$UserSearchModel {
  const UserSearchModel._();

  const factory UserSearchModel({
    @JsonKey(name: 'id') required String userId,
    required String username,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    String? bio,
  }) = _UserSearchModel;

  factory UserSearchModel.fromJson(Map<String, dynamic> json) =>
      _$UserSearchModelFromJson(json);

  UserSearchEntity toEntity() {
    return UserSearchEntity(
      userId: userId,
      username: username,
      avatarUrl: avatarUrl,
      bio: bio,
    );
  }
}

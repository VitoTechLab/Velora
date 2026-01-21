import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/profile/domain/entities/user_gender.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
abstract class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String id,
    @Default('') String email,
    @Default('') String username,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,

    // Extended profile fields
    String? bio,
    @JsonKey(name: 'date_of_birth')
    @NullableUtcDateTimeConverter()
    DateTime? dateOfBirth,
    UserGender? gender,
    @JsonKey(name: 'is_organization') @Default(false) bool isOrganization,
    @JsonKey(name: 'organization_name') String? organizationName,
    @JsonKey(name: 'website_url') String? websiteUrl,
    String? location,

    // Privacy and verification
    @JsonKey(name: 'is_private') @Default(false) bool isPrivate,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
    @JsonKey(name: 'show_activity_status')
    @Default(true)
    bool showActivityStatus,

    // Counts
    @JsonKey(name: 'followers_count') @Default(0) int followersCount,
    @JsonKey(name: 'following_count') @Default(0) int followingCount,

    // Timestamps
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @UtcDateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,

    // Computed fields from view
    @JsonKey(name: 'is_me') @Default(false) bool isMe,
    @JsonKey(name: 'is_following') @Default(false) bool isFollowing,
    @JsonKey(name: 'is_follow_request_pending')
    @Default(false)
    bool isFollowRequestPending,
    @JsonKey(name: 'i_blocked_them') @Default(false) bool iBlockedThem,
    @JsonKey(name: 'they_blocked_me') @Default(false) bool theyBlockedMe,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/profile/domain/entities/user_gender.dart';

part 'update_profile_model.freezed.dart';

/// Model for updating user profile fields
@freezed
abstract class UpdateProfileModel with _$UpdateProfileModel {
  const UpdateProfileModel._();

  const factory UpdateProfileModel({
    String? username,
    String? fullName,
    String? avatarUrl,
    String? bio,
    DateTime? dateOfBirth,
    UserGender? gender,
    bool? isOrganization,
    String? organizationName,
    String? websiteUrl,
    String? location,
    bool? isPrivate,
    bool? showActivityStatus,
  }) = _UpdateProfileModel;

  /// Convert to JSON map for Supabase update
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    
    if (username != null) map['username'] = username;
    if (fullName != null) map['full_name'] = fullName;
    if (avatarUrl != null) map['avatar_url'] = avatarUrl;
    if (bio != null) map['bio'] = bio;
    if (dateOfBirth != null) {
      map['date_of_birth'] = dateOfBirth!.toIso8601String().split('T').first;
    }
    if (gender != null) map['gender'] = gender!.toJsonValue();
    if (isOrganization != null) map['is_organization'] = isOrganization;
    if (organizationName != null) map['organization_name'] = organizationName;
    if (websiteUrl != null) map['website_url'] = websiteUrl;
    if (location != null) map['location'] = location;
    if (isPrivate != null) map['is_private'] = isPrivate;
    if (showActivityStatus != null) {
      map['show_activity_status'] = showActivityStatus;
    }
    
    return map;
  }

  /// Check if there are any fields to update
  bool get isEmpty => toJson().isEmpty;

  /// Check if has any fields to update
  bool get hasUpdates => !isEmpty;
}

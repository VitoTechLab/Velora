import 'package:velora/features/profile/domain/entities/user_gender.dart';

class UpdateProfileParams {
  const UpdateProfileParams({
    this.username,
    this.fullName,
    this.avatarUrl,
    this.bio,
    this.dateOfBirth,
    this.gender,
    this.isOrganization,
    this.organizationName,
    this.websiteUrl,
    this.location,
    this.isPrivate,
    this.showActivityStatus,
  });

  final String? username;
  final String? fullName;
  final String? avatarUrl;
  final String? bio;
  final DateTime? dateOfBirth;
  final UserGender? gender;
  final bool? isOrganization;
  final String? organizationName;
  final String? websiteUrl;
  final String? location;
  final bool? isPrivate;
  final bool? showActivityStatus;

  bool get isEmpty =>
      username == null &&
      fullName == null &&
      avatarUrl == null &&
      bio == null &&
      dateOfBirth == null &&
      gender == null &&
      isOrganization == null &&
      organizationName == null &&
      websiteUrl == null &&
      location == null &&
      isPrivate == null &&
      showActivityStatus == null;

  bool get hasUpdates => !isEmpty;
}

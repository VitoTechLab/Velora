import 'package:velora/features/profile/data/models/update_profile_model.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';
import 'package:velora/features/profile/domain/entities/update_profile_params.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';

extension UserProfileModelMapper on UserProfileModel {
  UserProfileEntity toEntity() {
    return UserProfileEntity(
      id: id,
      email: email,
      username: username,
      fullName: fullName,
      avatarUrl: avatarUrl,
      bio: bio,
      dateOfBirth: dateOfBirth,
      gender: gender,
      isOrganization: isOrganization,
      organizationName: organizationName,
      websiteUrl: websiteUrl,
      location: location,
      isPrivate: isPrivate,
      isVerified: isVerified,
      showActivityStatus: showActivityStatus,
      followersCount: followersCount,
      followingCount: followingCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isMe: isMe,
      isFollowing: isFollowing,
      isFollowRequestPending: isFollowRequestPending,
      iBlockedThem: iBlockedThem,
      theyBlockedMe: theyBlockedMe,
    );
  }
}

extension UpdateProfileParamsMapper on UpdateProfileParams {
  UpdateProfileModel toModel() {
    return UpdateProfileModel(
      username: username,
      fullName: fullName,
      avatarUrl: avatarUrl,
      bio: bio,
      dateOfBirth: dateOfBirth,
      gender: gender,
      isOrganization: isOrganization,
      organizationName: organizationName,
      websiteUrl: websiteUrl,
      location: location,
      isPrivate: isPrivate,
      showActivityStatus: showActivityStatus,
    );
  }
}

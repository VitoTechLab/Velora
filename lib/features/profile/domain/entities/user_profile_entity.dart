import 'package:velora/features/profile/domain/entities/user_gender.dart';

class UserProfileEntity {
  const UserProfileEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.email = '',
    this.username = '',
    this.fullName,
    this.avatarUrl,
    this.bio,
    this.dateOfBirth,
    this.gender,
    this.isOrganization = false,
    this.organizationName,
    this.websiteUrl,
    this.location,
    this.isPrivate = false,
    this.isVerified = false,
    this.showActivityStatus = true,
    this.followersCount = 0,
    this.followingCount = 0,
    this.isMe = false,
    this.isFollowing = false,
    this.isFollowRequestPending = false,
    this.iBlockedThem = false,
    this.theyBlockedMe = false,
  });

  final String id;
  final String email;
  final String username;
  final String? fullName;
  final String? avatarUrl;
  final String? bio;
  final DateTime? dateOfBirth;
  final UserGender? gender;
  final bool isOrganization;
  final String? organizationName;
  final String? websiteUrl;
  final String? location;
  final bool isPrivate;
  final bool isVerified;
  final bool showActivityStatus;
  final int followersCount;
  final int followingCount;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isMe;
  final bool isFollowing;
  final bool isFollowRequestPending;
  final bool iBlockedThem;
  final bool theyBlockedMe;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      id: json['id'] as String,
      email: json['email'] as String? ?? '',
      username: json['username'] as String? ?? '',
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
      dateOfBirth:
          const NullableUtcDateTimeConverter().fromJson(json['date_of_birth']),
      gender: $enumDecodeNullable(_$UserGenderEnumMap, json['gender']),
      isOrganization: json['is_organization'] as bool? ?? false,
      organizationName: json['organization_name'] as String?,
      websiteUrl: json['website_url'] as String?,
      location: json['location'] as String?,
      isPrivate: json['is_private'] as bool? ?? false,
      isVerified: json['is_verified'] as bool? ?? false,
      showActivityStatus: json['show_activity_status'] as bool? ?? true,
      followersCount: (json['followers_count'] as num?)?.toInt() ?? 0,
      followingCount: (json['following_count'] as num?)?.toInt() ?? 0,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      updatedAt: const UtcDateTimeConverter().fromJson(json['updated_at']),
      isMe: json['is_me'] as bool? ?? false,
      isFollowing: json['is_following'] as bool? ?? false,
      isFollowRequestPending:
          json['is_follow_request_pending'] as bool? ?? false,
      iBlockedThem: json['i_blocked_them'] as bool? ?? false,
      theyBlockedMe: json['they_blocked_me'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'date_of_birth':
          const NullableUtcDateTimeConverter().toJson(instance.dateOfBirth),
      'gender': _$UserGenderEnumMap[instance.gender],
      'is_organization': instance.isOrganization,
      'organization_name': instance.organizationName,
      'website_url': instance.websiteUrl,
      'location': instance.location,
      'is_private': instance.isPrivate,
      'is_verified': instance.isVerified,
      'show_activity_status': instance.showActivityStatus,
      'followers_count': instance.followersCount,
      'following_count': instance.followingCount,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updated_at': const UtcDateTimeConverter().toJson(instance.updatedAt),
      'is_me': instance.isMe,
      'is_following': instance.isFollowing,
      'is_follow_request_pending': instance.isFollowRequestPending,
      'i_blocked_them': instance.iBlockedThem,
      'they_blocked_me': instance.theyBlockedMe,
    };

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
  UserGender.other: 'other',
  UserGender.preferNotToSay: 'prefer_not_to_say',
};

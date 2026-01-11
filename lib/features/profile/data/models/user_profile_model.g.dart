// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      isPrivate: json['is_private'] as bool? ?? false,
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
      'is_private': instance.isPrivate,
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

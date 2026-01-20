// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSearchModelImpl _$$UserSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSearchModelImpl(
      userId: json['id'] as String,
      username: json['username'] as String,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$$UserSearchModelImplToJson(
        _$UserSearchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'username': instance.username,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
    };

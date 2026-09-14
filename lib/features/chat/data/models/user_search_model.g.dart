// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSearchModel _$UserSearchModelFromJson(Map<String, dynamic> json) =>
    _UserSearchModel(
      userId: json['id'] as String,
      username: json['username'] as String,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$UserSearchModelToJson(_UserSearchModel instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'username': instance.username,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
    };

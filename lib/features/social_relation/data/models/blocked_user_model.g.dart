// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockedUserModelImpl _$$BlockedUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockedUserModelImpl(
      blockerId: json['blocker_id'] as String,
      blockedId: json['blocked_id'] as String,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      blockedUsername: json['blocked_username'] as String?,
      blockedPhotoUrl: json['blocked_photo_url'] as String?,
      blockedFullName: json['blocked_full_name'] as String?,
    );

Map<String, dynamic> _$$BlockedUserModelImplToJson(
        _$BlockedUserModelImpl instance) =>
    <String, dynamic>{
      'blocker_id': instance.blockerId,
      'blocked_id': instance.blockedId,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'blocked_username': instance.blockedUsername,
      'blocked_photo_url': instance.blockedPhotoUrl,
      'blocked_full_name': instance.blockedFullName,
    };

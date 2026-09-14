// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FollowRequestModel _$FollowRequestModelFromJson(Map<String, dynamic> json) =>
    _FollowRequestModel(
      requesterId: json['requester_id'] as String,
      targetId: json['target_id'] as String,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      status: json['status'] as String? ?? 'pending',
      requesterUsername: json['requester_username'] as String?,
      requesterPhotoUrl: json['requester_photo_url'] as String?,
      requesterFullName: json['requester_full_name'] as String?,
      targetUsername: json['target_username'] as String?,
      targetPhotoUrl: json['target_photo_url'] as String?,
      targetFullName: json['target_full_name'] as String?,
    );

Map<String, dynamic> _$FollowRequestModelToJson(_FollowRequestModel instance) =>
    <String, dynamic>{
      'requester_id': instance.requesterId,
      'target_id': instance.targetId,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'status': instance.status,
      'requester_username': instance.requesterUsername,
      'requester_photo_url': instance.requesterPhotoUrl,
      'requester_full_name': instance.requesterFullName,
      'target_username': instance.targetUsername,
      'target_photo_url': instance.targetPhotoUrl,
      'target_full_name': instance.targetFullName,
    };

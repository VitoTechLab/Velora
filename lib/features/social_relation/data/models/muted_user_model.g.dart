// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MutedUserModel _$MutedUserModelFromJson(Map<String, dynamic> json) =>
    _MutedUserModel(
      muterId: json['muter_id'] as String,
      mutedId: json['muted_id'] as String,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      mutedUsername: json['muted_username'] as String?,
      mutedPhotoUrl: json['muted_photo_url'] as String?,
      mutedFullName: json['muted_full_name'] as String?,
    );

Map<String, dynamic> _$MutedUserModelToJson(_MutedUserModel instance) =>
    <String, dynamic>{
      'muter_id': instance.muterId,
      'muted_id': instance.mutedId,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'muted_username': instance.mutedUsername,
      'muted_photo_url': instance.mutedPhotoUrl,
      'muted_full_name': instance.mutedFullName,
    };

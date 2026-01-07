// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restricted_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestrictedUserModel _$RestrictedUserModelFromJson(Map<String, dynamic> json) =>
    _RestrictedUserModel(
      restrictorId: json['restrictor_id'] as String,
      restrictedId: json['restricted_id'] as String,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      restrictedUsername: json['restricted_username'] as String?,
      restrictedPhotoUrl: json['restricted_photo_url'] as String?,
      restrictedFullName: json['restricted_full_name'] as String?,
    );

Map<String, dynamic> _$RestrictedUserModelToJson(
  _RestrictedUserModel instance,
) => <String, dynamic>{
  'restrictor_id': instance.restrictorId,
  'restricted_id': instance.restrictedId,
  'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
  'restricted_username': instance.restrictedUsername,
  'restricted_photo_url': instance.restrictedPhotoUrl,
  'restricted_full_name': instance.restrictedFullName,
};

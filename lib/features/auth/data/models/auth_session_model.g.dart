// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionModel _$AuthSessionModelFromJson(Map<String, dynamic> json) =>
    _AuthSessionModel(
      userId: json['userId'] as String,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool,
    );

Map<String, dynamic> _$AuthSessionModelToJson(_AuthSessionModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
    };

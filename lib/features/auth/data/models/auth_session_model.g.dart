// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthSessionModelImpl _$$AuthSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthSessionModelImpl(
      userId: json['userId'] as String,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool,
    );

Map<String, dynamic> _$$AuthSessionModelImplToJson(
        _$AuthSessionModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
    };

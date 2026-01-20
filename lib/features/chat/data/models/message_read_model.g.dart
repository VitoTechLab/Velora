// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageReadModelImpl _$$MessageReadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageReadModelImpl(
      messageId: json['message_id'] as String,
      userId: json['user_id'] as String,
      readAt: const UtcDateTimeConverter().fromJson(json['read_at']),
    );

Map<String, dynamic> _$$MessageReadModelImplToJson(
        _$MessageReadModelImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'user_id': instance.userId,
      'read_at': const UtcDateTimeConverter().toJson(instance.readAt),
    };

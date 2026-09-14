// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageReadModel _$MessageReadModelFromJson(Map<String, dynamic> json) =>
    _MessageReadModel(
      messageId: json['message_id'] as String,
      userId: json['user_id'] as String,
      readAt: const UtcDateTimeConverter().fromJson(json['read_at']),
    );

Map<String, dynamic> _$MessageReadModelToJson(_MessageReadModel instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'user_id': instance.userId,
      'read_at': const UtcDateTimeConverter().toJson(instance.readAt),
    };

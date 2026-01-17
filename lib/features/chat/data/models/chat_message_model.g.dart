// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      id: json['id'] as String,
      conversationId: json['conversation_id'] as String,
      senderId: json['sender_id'] as String?,
      kind: json['kind'] as String,
      body: json['body'] as String?,
      replyToMessageId: json['reply_to_message_id'] as String?,
      editedAt: const UtcDateTimeConverter().fromJson(json['edited_at']),
      deletedAt: const UtcDateTimeConverter().fromJson(json['deleted_at']),
      deletedBy: json['deleted_by'] as String?,
      createdAt: const UtcDateTimeConverter().fromJson(json['created_at']),
      updatedAt: const UtcDateTimeConverter().fromJson(json['updated_at']),
      pollPayload: json['message_poll_payload'] == null
          ? null
          : PollPayloadModel.fromJson(
              json['message_poll_payload'] as Map<String, dynamic>),
      eventPayload: json['message_event_payload'] == null
          ? null
          : EventPayloadModel.fromJson(
              json['message_event_payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversation_id': instance.conversationId,
      'sender_id': instance.senderId,
      'kind': instance.kind,
      'body': instance.body,
      'reply_to_message_id': instance.replyToMessageId,
      'edited_at': _$JsonConverterToJson<Object?, DateTime>(
          instance.editedAt, const UtcDateTimeConverter().toJson),
      'deleted_at': _$JsonConverterToJson<Object?, DateTime>(
          instance.deletedAt, const UtcDateTimeConverter().toJson),
      'deleted_by': instance.deletedBy,
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updated_at': const UtcDateTimeConverter().toJson(instance.updatedAt),
      'message_poll_payload': instance.pollPayload,
      'message_event_payload': instance.eventPayload,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

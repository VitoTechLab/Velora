// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationListModel _$ConversationListModelFromJson(
  Map<String, dynamic> json,
) => _ConversationListModel(
  userId: json['user_id'] as String,
  conversationId: json['conversation_id'] as String,
  type: json['type'] as String,
  title: json['title'] as String?,
  photoUrl: json['photo_url'] as String?,
  lastMessageAt: const UtcDateTimeConverter().fromJson(json['last_message_at']),
  lastMessageId: json['last_message_id'] as String?,
  lastMessageKind: json['last_message_kind'] as String?,
  lastMessagePreview: json['last_message_preview'] as String?,
  unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
  lastReadAt: const UtcDateTimeConverter().fromJson(json['last_read_at']),
);

Map<String, dynamic> _$ConversationListModelToJson(
  _ConversationListModel instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'conversation_id': instance.conversationId,
  'type': instance.type,
  'title': instance.title,
  'photo_url': instance.photoUrl,
  'last_message_at': _$JsonConverterToJson<Object?, DateTime>(
    instance.lastMessageAt,
    const UtcDateTimeConverter().toJson,
  ),
  'last_message_id': instance.lastMessageId,
  'last_message_kind': instance.lastMessageKind,
  'last_message_preview': instance.lastMessagePreview,
  'unread_count': instance.unreadCount,
  'last_read_at': _$JsonConverterToJson<Object?, DateTime>(
    instance.lastReadAt,
    const UtcDateTimeConverter().toJson,
  ),
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationListModel _$ConversationListModelFromJson(
  Map<String, dynamic> json,
) => _ConversationListModel(
  conversationId: json['conversation_id'] as String,
  otherUserId: json['other_user_id'] as String?,
  otherUserUsername: json['other_user_username'] as String?,
  otherUserFullName: json['other_user_full_name'] as String?,
  otherUserAvatarUrl: json['other_user_avatar_url'] as String?,
  lastMessageBody: json['last_message_body'] as String?,
  lastMessageAt: const UtcDateTimeConverter().fromJson(json['last_message_at']),
  lastMessageSenderId: json['last_message_sender_id'] as String?,
  unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ConversationListModelToJson(
  _ConversationListModel instance,
) => <String, dynamic>{
  'conversation_id': instance.conversationId,
  'other_user_id': instance.otherUserId,
  'other_user_username': instance.otherUserUsername,
  'other_user_full_name': instance.otherUserFullName,
  'other_user_avatar_url': instance.otherUserAvatarUrl,
  'last_message_body': instance.lastMessageBody,
  'last_message_at': _$JsonConverterToJson<Object?, DateTime>(
    instance.lastMessageAt,
    const UtcDateTimeConverter().toJson,
  ),
  'last_message_sender_id': instance.lastMessageSenderId,
  'unread_count': instance.unreadCount,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

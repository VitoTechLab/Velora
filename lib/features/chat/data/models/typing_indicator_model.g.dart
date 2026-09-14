// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typing_indicator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypingIndicatorModel _$TypingIndicatorModelFromJson(
  Map<String, dynamic> json,
) => _TypingIndicatorModel(
  userId: json['user_id'] as String,
  conversationId: json['conversation_id'] as String,
  isTyping: json['is_typing'] as bool,
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$TypingIndicatorModelToJson(
  _TypingIndicatorModel instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'conversation_id': instance.conversationId,
  'is_typing': instance.isTyping,
  'timestamp': instance.timestamp,
};

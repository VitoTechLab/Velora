// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessagePaginationModel _$MessagePaginationModelFromJson(
  Map<String, dynamic> json,
) => _MessagePaginationModel(
  messages: (json['messages'] as List<dynamic>)
      .map((e) => ChatMessageModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  hasMore: json['hasMore'] as bool,
  nextCursor: _cursorFromJson(json['nextCursor']),
);

Map<String, dynamic> _$MessagePaginationModelToJson(
  _MessagePaginationModel instance,
) => <String, dynamic>{
  'messages': instance.messages,
  'hasMore': instance.hasMore,
  'nextCursor': _cursorToJson(instance.nextCursor),
};

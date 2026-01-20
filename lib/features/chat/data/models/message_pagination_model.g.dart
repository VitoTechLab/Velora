// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessagePaginationModelImpl _$$MessagePaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessagePaginationModelImpl(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool,
      nextCursor: _cursorFromJson(json['nextCursor']),
    );

Map<String, dynamic> _$$MessagePaginationModelImplToJson(
        _$MessagePaginationModelImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'hasMore': instance.hasMore,
      'nextCursor': _cursorToJson(instance.nextCursor),
    };

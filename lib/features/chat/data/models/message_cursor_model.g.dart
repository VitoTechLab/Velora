// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.g.dart
_MessageCursorModel _$MessageCursorModelFromJson(Map<String, dynamic> json) =>
    _MessageCursorModel(
=======
_$MessageCursorImpl _$$MessageCursorImplFromJson(Map<String, dynamic> json) =>
    _$MessageCursorImpl(
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.g.dart
      createdAt: DateTime.parse(json['cursor_created_at'] as String),
      id: json['cursor_id'] as String,
    );

<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.g.dart
Map<String, dynamic> _$MessageCursorModelToJson(_MessageCursorModel instance) =>
=======
Map<String, dynamic> _$$MessageCursorImplToJson(_$MessageCursorImpl instance) =>
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.g.dart
    <String, dynamic>{
      'cursor_created_at': instance.createdAt.toIso8601String(),
      'cursor_id': instance.id,
    };

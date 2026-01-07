import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
abstract class ChatMessageModel with _$ChatMessageModel {
  const ChatMessageModel._();

  const factory ChatMessageModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'conversation_id') required String conversationId,
    @JsonKey(name: 'sender_id') String? senderId,
    @JsonKey(name: 'kind') required String kind,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'reply_to_message_id') String? replyToMessageId,
    @UtcDateTimeConverter() @JsonKey(name: 'edited_at') DateTime? editedAt,
    @UtcDateTimeConverter() @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'deleted_by') String? deletedBy,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @UtcDateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);

  ChatMessageEntity toEntity() => ChatMessageEntity(
    id: id,
    conversationId: conversationId,
    senderId: senderId,
    kind: kind,
    body: body,
    replyToMessageId: replyToMessageId,
    editedAt: editedAt,
    deletedAt: deletedAt,
    deletedBy: deletedBy,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );

  factory ChatMessageModel.fromEntity(ChatMessageEntity entity) =>
      ChatMessageModel(
        id: entity.id,
        conversationId: entity.conversationId,
        senderId: entity.senderId,
        kind: entity.kind,
        body: entity.body,
        replyToMessageId: entity.replyToMessageId,
        editedAt: entity.editedAt,
        deletedAt: entity.deletedAt,
        deletedBy: entity.deletedBy,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
      );

  Map<String, dynamic> toInsertJson() {
    final payload = <String, dynamic>{
      'conversation_id': conversationId,
      'sender_id': senderId,
      'kind': kind,
      'body': body,
      'reply_to_message_id': replyToMessageId,
    };
    payload.removeWhere((key, value) => value == null);
    return payload;
  }

  /// For updating message body (edit)
  Map<String, dynamic> toUpdateJson() {
    final payload = <String, dynamic>{
      'body': body,
      'edited_at': DateTime.now().toUtc().toIso8601String(),
    };
    return payload;
  }

  /// For soft delete (set deleted_at and deleted_by)
  Map<String, dynamic> toDeleteJson(String deletedByUserId) {
    final payload = <String, dynamic>{
      'deleted_at': DateTime.now().toUtc().toIso8601String(),
      'deleted_by': deletedByUserId,
    };
    return payload;
  }
}

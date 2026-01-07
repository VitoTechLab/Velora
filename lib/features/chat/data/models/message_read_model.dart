import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';

part 'message_read_model.freezed.dart';
part 'message_read_model.g.dart';

/// Model for message_reads table (read receipts)
@freezed
abstract class MessageReadModel with _$MessageReadModel {
  const MessageReadModel._();

  const factory MessageReadModel({
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'user_id') required String userId,
    @UtcDateTimeConverter() @JsonKey(name: 'read_at') required DateTime readAt,
  }) = _MessageReadModel;

  factory MessageReadModel.fromJson(Map<String, dynamic> json) =>
      _$MessageReadModelFromJson(json);

  MessageReadEntity toEntity() =>
      MessageReadEntity(messageId: messageId, userId: userId, readAt: readAt);

  Map<String, dynamic> toInsertJson() {
    return <String, dynamic>{
      'message_id': messageId,
      'user_id': userId,
      'read_at': readAt.toUtc().toIso8601String(),
    };
  }
}

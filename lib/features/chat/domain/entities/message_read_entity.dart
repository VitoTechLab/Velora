import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_read_entity.freezed.dart';

/// Entity for message read receipts (from message_reads table)
@freezed
abstract class MessageReadEntity with _$MessageReadEntity {
  const factory MessageReadEntity({
    required String messageId,
    required String userId,
    required DateTime readAt,
  }) = _MessageReadEntity;
}

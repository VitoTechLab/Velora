import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_cursor_entity.freezed.dart';

@freezed
abstract class MessageCursorEntity with _$MessageCursorEntity {
  const factory MessageCursorEntity({
    required DateTime createdAt,
    required String id,
  }) = _MessageCursorEntity;
}

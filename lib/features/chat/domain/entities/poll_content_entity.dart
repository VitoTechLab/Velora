import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_content_entity.freezed.dart';

/// Entity for poll payload from message_poll_payload table
@freezed
class PollPayloadEntity with _$PollPayloadEntity {
  const factory PollPayloadEntity({
    required String messageId,
    required String question,
    @Default(false) bool multipleChoice,
    @Default(1) int maxUserVotes,
    DateTime? closesAt,
    @Default([]) List<PollOptionEntity> options,
  }) = _PollPayloadEntity;
}

@freezed
class PollOptionEntity with _$PollOptionEntity {
  const factory PollOptionEntity({
    required String id,
    required String pollMessageId,
    required String text,
    required int position,
    required int voteCount,
    required bool isSelected, // Check if current user voted
  }) = _PollOptionEntity;
}

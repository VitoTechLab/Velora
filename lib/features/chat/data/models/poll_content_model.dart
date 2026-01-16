import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/poll_content_entity.dart';

part 'poll_content_model.freezed.dart';
part 'poll_content_model.g.dart';

@freezed
class PollPayloadModel with _$PollPayloadModel {
  const factory PollPayloadModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'question') required String question,
    @JsonKey(name: 'multiple_choice') required bool multipleChoice,
    @NullableUtcDateTimeConverter()
    @JsonKey(name: 'closes_at')
    DateTime? closesAt,
    @JsonKey(name: 'poll_options') @Default([]) List<PollOptionModel> options,
  }) = _PollPayloadModel;

  factory PollPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$PollPayloadModelFromJson(json);
}

@freezed
class PollOptionModel with _$PollOptionModel {
  const factory PollOptionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'poll_message_id') required String pollMessageId,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'position') required int position,

    /// Vote count from v_poll_options_with_votes view
    @JsonKey(name: 'vote_count') @Default(0) int voteCount,

    /// Whether current user has voted for this option
    @JsonKey(name: 'is_selected') @Default(false) bool isSelected,
  }) = _PollOptionModel;

  factory PollOptionModel.fromJson(Map<String, dynamic> json) =>
      _$PollOptionModelFromJson(json);
}

extension PollPayloadModelX on PollPayloadModel {
  PollPayloadEntity toEntity() => PollPayloadEntity(
        id: id,
        messageId: messageId,
        question: question,
        multipleChoice: multipleChoice,
        closesAt: closesAt,
        options: options.map((e) => e.toEntity()).toList(),
      );
}

extension PollOptionModelX on PollOptionModel {
  PollOptionEntity toEntity() => PollOptionEntity(
        id: id,
        pollMessageId: pollMessageId,
        text: text,
        position: position,
        voteCount: voteCount,
        isSelected: isSelected,
      );
}

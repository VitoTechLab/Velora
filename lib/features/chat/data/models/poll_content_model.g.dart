// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollPayloadModelImpl _$$PollPayloadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PollPayloadModelImpl(
<<<<<<< HEAD
      id: json['id'] as String,
      messageId: json['message_id'] as String,
      question: json['question'] as String,
      multipleChoice: json['multiple_choice'] as bool,
=======
      messageId: json['message_id'] as String,
      question: json['question'] as String,
      multipleChoice: json['multiple_choice'] as bool? ?? false,
      maxUserVotes: (json['max_user_votes'] as num?)?.toInt() ?? 1,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      closesAt:
          const NullableUtcDateTimeConverter().fromJson(json['closes_at']),
      options: (json['poll_options'] as List<dynamic>?)
              ?.map((e) => PollOptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PollPayloadModelImplToJson(
        _$PollPayloadModelImpl instance) =>
    <String, dynamic>{
<<<<<<< HEAD
      'id': instance.id,
      'message_id': instance.messageId,
      'question': instance.question,
      'multiple_choice': instance.multipleChoice,
=======
      'message_id': instance.messageId,
      'question': instance.question,
      'multiple_choice': instance.multipleChoice,
      'max_user_votes': instance.maxUserVotes,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      'closes_at':
          const NullableUtcDateTimeConverter().toJson(instance.closesAt),
      'poll_options': instance.options,
    };

_$PollOptionModelImpl _$$PollOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PollOptionModelImpl(
      id: json['id'] as String,
      pollMessageId: json['poll_message_id'] as String,
      text: json['text'] as String,
      position: (json['position'] as num).toInt(),
      voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
      isSelected: json['is_selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$PollOptionModelImplToJson(
        _$PollOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poll_message_id': instance.pollMessageId,
      'text': instance.text,
      'position': instance.position,
      'vote_count': instance.voteCount,
      'is_selected': instance.isSelected,
    };

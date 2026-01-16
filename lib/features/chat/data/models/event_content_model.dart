import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/event_content_entity.dart';

part 'event_content_model.freezed.dart';
part 'event_content_model.g.dart';

@freezed
class EventPayloadModel with _$EventPayloadModel {
  const factory EventPayloadModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'notes') String? description,
    @JsonKey(name: 'location') String? location,
    @UtcDateTimeConverter()
    @JsonKey(name: 'starts_at')
    required DateTime startDate,
    @UtcDateTimeConverter() @JsonKey(name: 'ends_at') required DateTime endDate,

    /// RSVP counts from v_event_with_rsvp view
    @Default(0) @JsonKey(name: 'going_count') int goingCount,
    @Default(0) @JsonKey(name: 'interested_count') int interestedCount,
    @Default(0) @JsonKey(name: 'not_going_count') int notGoingCount,

    /// Current user's RSVP status: 'going', 'interested', 'not_going'
    @JsonKey(name: 'user_response') String? userResponse,
  }) = _EventPayloadModel;

  factory EventPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$EventPayloadModelFromJson(json);
}

extension EventPayloadModelX on EventPayloadModel {
  EventPayloadEntity toEntity() => EventPayloadEntity(
        id: id,
        messageId: messageId,
        title: title,
        description: description,
        location: location,
        startDate: startDate,
        endDate: endDate,
        goingCount: goingCount,
        maybeCount: interestedCount, // 'interested' maps to 'maybe' in entity
        notGoingCount: notGoingCount,
        userResponse: userResponse,
      );
}

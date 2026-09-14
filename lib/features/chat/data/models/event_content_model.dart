import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/event_content_entity.dart';

part 'event_content_model.freezed.dart';
part 'event_content_model.g.dart';

/// Model for message_event_payload table + v_event_with_rsvp view
@freezed
abstract class EventPayloadModel with _$EventPayloadModel {
  const factory EventPayloadModel({
    /// From message_event_payload table
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'is_online') @Default(false) bool isOnline,
    @JsonKey(name: 'meeting_url') String? meetingUrl,
    @JsonKey(name: 'cover_url') String? coverUrl,
    @UtcDateTimeConverter()
    @JsonKey(name: 'starts_at')
    required DateTime startsAt,
    @NullableUtcDateTimeConverter()
    @JsonKey(name: 'ends_at')
    DateTime? endsAt,

    /// RSVP counts from v_event_with_rsvp view
    @JsonKey(name: 'going_count') @Default(0) int goingCount,
    @JsonKey(name: 'interested_count') @Default(0) int interestedCount,
    @JsonKey(name: 'not_going_count') @Default(0) int notGoingCount,

    /// Current user's RSVP status: 'going', 'interested', 'not_going'
    @JsonKey(name: 'user_response') String? userResponse,
  }) = _EventPayloadModel;

  factory EventPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$EventPayloadModelFromJson(json);
}

extension EventPayloadModelX on EventPayloadModel {
  EventPayloadEntity toEntity() => EventPayloadEntity(
        messageId: messageId,
        title: title,
        description: description,
        locationName: locationName,
        address: address,
        isOnline: isOnline,
        meetingUrl: meetingUrl,
        coverUrl: coverUrl,
        startsAt: startsAt,
        endsAt: endsAt,
        goingCount: goingCount,
        interestedCount: interestedCount,
        notGoingCount: notGoingCount,
        userResponse: userResponse,
      );
}

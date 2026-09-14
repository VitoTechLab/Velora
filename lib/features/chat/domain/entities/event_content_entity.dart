import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_content_entity.freezed.dart';

/// Entity for event payload from message_event_payload table + v_event_with_rsvp view
@freezed
abstract class EventPayloadEntity with _$EventPayloadEntity {
  const factory EventPayloadEntity({
    required String messageId,
    required String title,
    String? description,
    String? locationName,
    String? address,
    @Default(false) bool isOnline,
    String? meetingUrl,
    String? coverUrl,
    required DateTime startsAt,
    DateTime? endsAt,
    // RSVP counts from v_event_with_rsvp
    @Default(0) int goingCount,
    @Default(0) int interestedCount,
    @Default(0) int notGoingCount,
    // Current user RSVP response: 'going', 'interested', 'not_going'
    String? userResponse,
  }) = _EventPayloadEntity;
}

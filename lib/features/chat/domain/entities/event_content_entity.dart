import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_content_entity.freezed.dart';

@freezed
class EventPayloadEntity with _$EventPayloadEntity {
  const factory EventPayloadEntity({
    required String id,
    required String messageId,
    required String title,
    String? description, // Note: ChatDTO said 'notes'? Using description/notes based on widget
    String? location,
    required DateTime startDate,
    required DateTime endDate,
    // RSVP counts
    required int goingCount,
    required int maybeCount,
    required int notGoingCount,
    // Current user response
    String? userResponse, // 'going', 'maybe', 'not_going'
  }) = _EventPayloadEntity;
}

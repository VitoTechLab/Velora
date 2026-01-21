import 'package:velora/features/chat/data/models/chat_message_model.dart';
import 'package:velora/features/chat/domain/entities/realtime_message_event_entity.dart';

/// Wrapper untuk pesan realtime dengan informasi event type
class RealtimeMessageEvent {
  final ChatMessageModel message;
  final RealtimeEventType eventType;

  const RealtimeMessageEvent({
    required this.message,
    required this.eventType,
  });

  bool get isInsert => eventType == RealtimeEventType.insert;
  bool get isUpdate => eventType == RealtimeEventType.update;

  /// Convert to entity
  RealtimeMessageEventEntity toEntity() => RealtimeMessageEventEntity(
        message: message.toEntity(),
        eventType: eventType,
      );
}

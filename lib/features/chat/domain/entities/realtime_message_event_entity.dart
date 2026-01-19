import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';

/// Enum untuk tipe event realtime
enum RealtimeEventType {
  insert,
  update,
}

/// Entity untuk pesan realtime dengan informasi event type
class RealtimeMessageEventEntity {
  final ChatMessageEntity message;
  final RealtimeEventType eventType;

  const RealtimeMessageEventEntity({
    required this.message,
    required this.eventType,
  });

  bool get isInsert => eventType == RealtimeEventType.insert;
  bool get isUpdate => eventType == RealtimeEventType.update;
}

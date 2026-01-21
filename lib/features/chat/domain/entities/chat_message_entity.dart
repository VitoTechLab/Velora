import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/event_content_entity.dart';
import 'package:velora/features/chat/domain/entities/message_attachment_entity.dart';
import 'package:velora/features/chat/domain/entities/poll_content_entity.dart';
import 'package:velora/features/chat/domain/entities/message_status.dart';

part 'chat_message_entity.freezed.dart';

/// Chat message entity based on public.messages table
@freezed
abstract class ChatMessageEntity with _$ChatMessageEntity {
  const ChatMessageEntity._();

  const factory ChatMessageEntity({
    required String id,
    required String conversationId,
    required String? senderId,
    required String kind,
    String? body,
    String? replyToMessageId,
    DateTime? editedAt,
    DateTime? deletedAt,
    String? deletedBy,
    required DateTime createdAt,
    required DateTime updatedAt,
    // Related payloads
    PollPayloadEntity? poll,
    EventPayloadEntity? event,
    // Attachments (images, videos, audio, files)
    @Default([]) List<MessageAttachmentEntity> attachments,
    @Default(MessageStatus.sent) MessageStatus status,
  }) = _ChatMessageEntity;

  /// Get the first attachment (convenience getter)
  MessageAttachmentEntity? get firstAttachment =>
      attachments.isNotEmpty ? attachments.first : null;

  /// Get the primary media URL (first attachment's URL)
  String? get mediaUrl => firstAttachment?.effectiveUrl;

  /// Get the primary media type (first attachment's mime type)
  String? get mediaType => firstAttachment?.mimeType;

  /// Get the primary filename
  String? get fileName => firstAttachment?.filename;

  /// Get the primary file size
  int? get fileSize => firstAttachment?.sizeBytes;

  /// Get the primary duration (for audio/video)
  double? get durationSeconds => firstAttachment?.durationSeconds;

  /// Check if message has attachments
  bool get hasAttachments => attachments.isNotEmpty;

  /// Check if message has images
  bool get hasImages => attachments.any((a) => a.isImage);

  /// Check if message has video
  bool get hasVideo => attachments.any((a) => a.isVideo);

  /// Check if message has audio
  bool get hasAudio => attachments.any((a) => a.isVoiceMessage);

  /// Get all image attachments
  List<MessageAttachmentEntity> get imageAttachments =>
      attachments.where((a) => a.isImage).toList();

  /// Get all image URLs
  List<String> get imageUrls =>
      imageAttachments.map((a) => a.effectiveUrl).whereType<String>().toList();
}

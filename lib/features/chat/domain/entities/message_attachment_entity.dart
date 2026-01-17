import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_attachment_entity.freezed.dart';

/// Message attachment entity based on public.message_attachments table
@freezed
abstract class MessageAttachmentEntity with _$MessageAttachmentEntity {
  const factory MessageAttachmentEntity({
    required String id,
    required String messageId,
    required String kind, // image, video, audio, file, thumbnail
    // Supabase Storage
    String? bucket,
    String? path,
    // External URL (Cloudinary, etc.)
    String? url,
    // Common metadata
    String? filename,
    String? mimeType,
    int? sizeBytes,
    int? width,
    int? height,
    double? durationSeconds,
    String? blurhash,
    required DateTime createdAt,
  }) = _MessageAttachmentEntity;

  const MessageAttachmentEntity._();

  /// Get the effective URL for the attachment
  /// Prefers external URL over Supabase Storage path
  String? get effectiveUrl {
    if (url != null && url!.isNotEmpty) {
      return url;
    }
    // For Supabase Storage, would need to construct URL
    // This is a placeholder - actual implementation depends on Supabase config
    if (bucket != null && path != null) {
      // Would be something like:
      // return '${supabaseUrl}/storage/v1/object/public/$bucket/$path';
      return null; // Caller should handle Supabase Storage URLs
    }
    return null;
  }

  /// Check if this is a voice message (audio attachment)
  bool get isVoiceMessage => kind == 'audio';

  /// Check if this is an image
  bool get isImage => kind == 'image';

  /// Check if this is a video
  bool get isVideo => kind == 'video';

  /// Check if this is a file/document
  bool get isFile => kind == 'file';

  /// Get formatted file size
  String get formattedSize {
    if (sizeBytes == null) return '';
    final bytes = sizeBytes!;
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }

  /// Get formatted duration for audio/video
  String get formattedDuration {
    if (durationSeconds == null) return '00:00';
    final totalSeconds = durationSeconds!.toInt();
    final minutes = (totalSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (totalSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}

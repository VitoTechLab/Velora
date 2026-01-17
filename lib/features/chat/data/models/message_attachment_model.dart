import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/message_attachment_entity.dart';

part 'message_attachment_model.freezed.dart';
part 'message_attachment_model.g.dart';

@freezed
abstract class MessageAttachmentModel with _$MessageAttachmentModel {
  const MessageAttachmentModel._();

  const factory MessageAttachmentModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'kind') required String kind,
    @JsonKey(name: 'bucket') String? bucket,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'filename') String? filename,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'size_bytes') int? sizeBytes,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'duration_seconds') double? durationSeconds,
    @JsonKey(name: 'blurhash') String? blurhash,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _MessageAttachmentModel;

  factory MessageAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$MessageAttachmentModelFromJson(json);

  MessageAttachmentEntity toEntity() => MessageAttachmentEntity(
        id: id,
        messageId: messageId,
        kind: kind,
        bucket: bucket,
        path: path,
        url: url,
        filename: filename,
        mimeType: mimeType,
        sizeBytes: sizeBytes,
        width: width,
        height: height,
        durationSeconds: durationSeconds,
        blurhash: blurhash,
        createdAt: createdAt,
      );

  /// Create model for inserting a new external URL attachment
  static Map<String, dynamic> toInsertJson({
    required String messageId,
    required String kind,
    required String url,
    String? filename,
    String? mimeType,
    int? sizeBytes,
    int? width,
    int? height,
    double? durationSeconds,
    String? blurhash,
  }) {
    final payload = <String, dynamic>{
      'message_id': messageId,
      'kind': kind,
      'url': url,
      'filename': filename,
      'mime_type': mimeType,
      'size_bytes': sizeBytes,
      'width': width,
      'height': height,
      'duration_seconds': durationSeconds,
      'blurhash': blurhash,
    };
    payload.removeWhere((key, value) => value == null);
    return payload;
  }
}

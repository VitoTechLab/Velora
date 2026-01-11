import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_upload_event.freezed.dart';

/// Events for media upload operations
@freezed
abstract class MediaUploadEvent with _$MediaUploadEvent {
  /// Upload media files for a post
  const factory MediaUploadEvent.uploadForPost({
    required List<File> files,
    required String userId,
    required String postId,
  }) = UploadForPostEvent;

  /// Upload media files for a campaign
  const factory MediaUploadEvent.uploadForCampaign({
    required List<File> files,
    required String userId,
    required String campaignId,
  }) = UploadForCampaignEvent;
}

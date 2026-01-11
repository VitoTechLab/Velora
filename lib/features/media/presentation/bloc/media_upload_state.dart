import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/media/domain/entities/media_asset_entity.dart';

part 'media_upload_state.freezed.dart';

/// States for media upload operations
@freezed
abstract class MediaUploadState with _$MediaUploadState {
  /// Initial state before any upload
  const factory MediaUploadState.initial() = MediaUploadInitial;
  
  /// Uploading media files to cloud storage
  const factory MediaUploadState.uploading() = MediaUploadLoading;
  
  /// Upload successful with uploaded assets
  const factory MediaUploadState.success(List<MediaAsset> assets) =
      MediaUploadSuccess;
  
  /// Upload failed with error message
  const factory MediaUploadState.failure(String message) = MediaUploadFailure;
}

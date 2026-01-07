import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/media/domain/entities/media_asset.dart';

part 'media_upload_state.freezed.dart';

@freezed
class MediaUploadState with _$MediaUploadState {
  const factory MediaUploadState.initial() = MediaUploadInitial;
  const factory MediaUploadState.uploading() = MediaUploadLoading;
  const factory MediaUploadState.success(List<MediaAsset> assets) =
      MediaUploadSuccess;
  const factory MediaUploadState.failure(String message) = MediaUploadFailure;
}

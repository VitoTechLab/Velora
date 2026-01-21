import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_asset_entity.freezed.dart';

/// Entity for uploaded media asset from Cloudinary
@freezed
abstract class MediaAsset with _$MediaAsset {
  const factory MediaAsset({
    required String publicId,
    required String secureUrl,
    required String resourceType,
    required String format,
    required int bytes,
    required int width,
    required int height,
    double? duration, // Duration in seconds for audio/video
  }) = _MediaAsset;
}

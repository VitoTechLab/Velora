import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_asset.freezed.dart';

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
  }) = _MediaAsset;
}

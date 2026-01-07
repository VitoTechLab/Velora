import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'gallery_media_asset.freezed.dart';

/// Entity untuk media asset di gallery
@freezed
abstract class GalleryMediaAsset with _$GalleryMediaAsset {
  const factory GalleryMediaAsset({
    required String id,
    required AssetEntity assetEntity,
    required int width,
    required int height,
    required DateTime createDateTime,
  }) = _GalleryMediaAsset;

  const GalleryMediaAsset._();

  double get aspectRatio {
    if (width > 0 && height > 0) {
      final raw = width / height;
      return raw.clamp(0.75, 1.5);
    }
    return 1.0;
  }
}

/// Entity untuk gallery state dengan pagination
@freezed
abstract class GalleryMediaList with _$GalleryMediaList {
  const factory GalleryMediaList({
    required List<GalleryMediaAsset> assets,
    required int currentPage,
    required int totalCount,
    required bool hasMore,
  }) = _GalleryMediaList;
}

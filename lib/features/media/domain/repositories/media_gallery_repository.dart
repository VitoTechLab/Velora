import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset_entity.dart';

abstract class MediaGalleryRepository {
  /// Request permission to access media gallery
  Future<Either<MediaGalleryFailure, PermissionState>> requestPermission();

  /// Open system settings
  Future<Either<MediaGalleryFailure, void>> openSettings();

  /// Load media assets with pagination
  Future<Either<MediaGalleryFailure, GalleryMediaList>> loadMediaAssets({
    required int page,
    required int pageSize,
  });

  /// Get file from asset entity
  Future<Either<MediaGalleryFailure, File>> getFileFromAsset(AssetEntity asset);

  /// Get total media count
  Future<Either<MediaGalleryFailure, int>> getMediaCount();
}

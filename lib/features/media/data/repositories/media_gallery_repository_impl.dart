import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/data/datasources/local/media_local_datasource.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset_entity.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';

class MediaGalleryRepositoryImpl implements MediaGalleryRepository {
  final MediaLocalDataSource localDataSource;

  MediaGalleryRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<MediaGalleryFailure, PermissionState>>
  requestPermission() async {
    try {
      final result = await localDataSource.requestPermission();
      return Right(result);
    } catch (e) {
      return Left(MediaGalleryFailure.fromException(e));
    }
  }

  @override
  Future<Either<MediaGalleryFailure, void>> openSettings() async {
    try {
      final result = await localDataSource.openSettings();
      return Right(result);
    } catch (e) {
      return Left(MediaGalleryFailure.fromException(e));
    }
  }

  @override
  Future<Either<MediaGalleryFailure, GalleryMediaList>> loadMediaAssets({
    required int page,
    required int pageSize,
  }) async {
    try {
      final assets = await localDataSource.loadMediaAssets(
        page: page,
        pageSize: pageSize,
      );

      final totalCount = await localDataSource.getMediaCount();

      final galleryAssets = assets.map((asset) {
        return GalleryMediaAsset(
          id: asset.id,
          assetEntity: asset,
          width: asset.width,
          height: asset.height,
          createDateTime: asset.createDateTime,
        );
      }).toList();

      final hasMore = (page + 1) * pageSize < totalCount;

      final result = GalleryMediaList(
        assets: galleryAssets,
        currentPage: page,
        totalCount: totalCount,
        hasMore: hasMore,
      );

      return Right(result);
    } catch (e) {
      return Left(MediaGalleryFailure.fromException(e));
    }
  }

  @override
  Future<Either<MediaGalleryFailure, File>> getFileFromAsset(
    AssetEntity asset,
  ) async {
    try {
      final file = await localDataSource.getFileFromAsset(asset);
      if (file == null) {
        return Left(
          MediaGalleryFailure.fileAccessError('Unable to load file from asset'),
        );
      }
      return Right(file);
    } catch (e) {
      return Left(MediaGalleryFailure.fromException(e));
    }
  }

  @override
  Future<Either<MediaGalleryFailure, int>> getMediaCount() async {
    try {
      final count = await localDataSource.getMediaCount();
      return Right(count);
    } catch (e) {
      return Left(MediaGalleryFailure.fromException(e));
    }
  }
}

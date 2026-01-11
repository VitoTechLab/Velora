import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset_entity.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';

/// Use case for loading media assets from device gallery
class LoadMediaAssetsUseCase {
  const LoadMediaAssetsUseCase({required this.repository});

  final MediaGalleryRepository repository;

  /// Load paginated media assets from gallery
  Future<Either<MediaGalleryFailure, GalleryMediaList>> call({
    required int page,
    int pageSize = 60,
  }) async {
    return await repository.loadMediaAssets(page: page, pageSize: pageSize);
  }
}

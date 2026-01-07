import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';

class LoadMediaAssets {
  final MediaGalleryRepository repository;

  LoadMediaAssets({required this.repository});

  Future<Either<MediaGalleryFailure, GalleryMediaList>> call({
    required int page,
    int pageSize = 60,
  }) async {
    return await repository.loadMediaAssets(page: page, pageSize: pageSize);
  }
}

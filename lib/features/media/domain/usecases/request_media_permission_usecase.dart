import 'package:dartz/dartz.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';

/// Use case for requesting media gallery permission
class RequestMediaPermissionUseCase {
  const RequestMediaPermissionUseCase({required this.repository});

  final MediaGalleryRepository repository;

  /// Request permission to access device media gallery
  Future<Either<MediaGalleryFailure, PermissionState>> call() async {
    return await repository.requestPermission();
  }
}

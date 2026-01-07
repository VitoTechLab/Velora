import 'package:dartz/dartz.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';

class RequestMediaPermission {
  final MediaGalleryRepository repository;

  RequestMediaPermission({required this.repository});

  Future<Either<MediaGalleryFailure, PermissionState>> call() async {
    return await repository.requestPermission();
  }
}

import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';

class GetFileFromAsset {
  final MediaGalleryRepository repository;

  GetFileFromAsset({required this.repository});

  Future<Either<MediaGalleryFailure, File>> call(AssetEntity asset) async {
    return await repository.getFileFromAsset(asset);
  }
}

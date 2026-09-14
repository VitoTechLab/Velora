import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';

abstract class MediaPickerRepository {
  Future<Either<MediaGalleryFailure, List<File>>> pickDocuments({
    bool allowMultiple = true,
    List<String>? allowedExtensions,
  });

  Future<Either<MediaGalleryFailure, File?>> pickSingleAudioFile({
    List<String>? allowedExtensions,
  });
}

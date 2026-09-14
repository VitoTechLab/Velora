import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/data/datasources/local/media_local_datasource.dart';
import 'package:velora/features/media/domain/repositories/media_picker_repository.dart';

class MediaPickerRepositoryImpl implements MediaPickerRepository {
  const MediaPickerRepositoryImpl({required this.localDataSource});

  final MediaLocalDataSource localDataSource;

  @override
  Future<Either<MediaGalleryFailure, List<File>>> pickDocuments({
    bool allowMultiple = true,
    List<String>? allowedExtensions,
  }) async {
    try {
      final files = await localDataSource.pickDocuments(
        allowMultiple: allowMultiple,
        allowedExtensions: allowedExtensions,
      );
      return Right(files);
    } catch (e) {
      return Left(MediaGalleryFailure.fromException(e));
    }
  }

  @override
  Future<Either<MediaGalleryFailure, File?>> pickSingleAudioFile({
    List<String>? allowedExtensions,
  }) async {
    try {
      final file = await localDataSource.pickSingleAudioFile(
        allowedExtensions: allowedExtensions,
      );
      return Right(file);
    } catch (e) {
      return Left(MediaGalleryFailure.fromException(e));
    }
  }
}

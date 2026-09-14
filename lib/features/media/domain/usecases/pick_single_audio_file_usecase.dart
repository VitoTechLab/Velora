import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/repositories/media_picker_repository.dart';

class PickSingleAudioFileUseCase {
  const PickSingleAudioFileUseCase({required this.repository});

  final MediaPickerRepository repository;

  Future<Either<MediaGalleryFailure, File?>> call({
    List<String>? allowedExtensions,
  }) {
    return repository.pickSingleAudioFile(
      allowedExtensions: allowedExtensions,
    );
  }
}

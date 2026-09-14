import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/media_gallery_failure.dart';
import 'package:velora/features/media/domain/repositories/media_picker_repository.dart';

class PickDocumentsUseCase {
  const PickDocumentsUseCase({required this.repository});

  final MediaPickerRepository repository;

  Future<Either<MediaGalleryFailure, List<File>>> call({
    bool allowMultiple = true,
    List<String>? allowedExtensions,
  }) {
    return repository.pickDocuments(
      allowMultiple: allowMultiple,
      allowedExtensions: allowedExtensions,
    );
  }
}

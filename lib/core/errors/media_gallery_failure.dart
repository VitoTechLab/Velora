import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';

enum MediaGalleryFailureType {
  permissionDenied,
  noMediaFound,
  fileAccessError,
  loadError,
  unknown,
}

class MediaGalleryFailure extends Failure {
  const MediaGalleryFailure({required String message, required this.type})
    : super(message);

  final MediaGalleryFailureType type;

  factory MediaGalleryFailure.permissionDenied(String message) =>
      MediaGalleryFailure(
        message: message,
        type: MediaGalleryFailureType.permissionDenied,
      );

  factory MediaGalleryFailure.noMediaFound(String message) =>
      MediaGalleryFailure(
        message: message,
        type: MediaGalleryFailureType.noMediaFound,
      );

  factory MediaGalleryFailure.fileAccessError(String message) =>
      MediaGalleryFailure(
        message: message,
        type: MediaGalleryFailureType.fileAccessError,
      );

  factory MediaGalleryFailure.loadError(String message) => MediaGalleryFailure(
    message: message,
    type: MediaGalleryFailureType.loadError,
  );

  factory MediaGalleryFailure.unknown(String message) => MediaGalleryFailure(
    message: message,
    type: MediaGalleryFailureType.unknown,
  );

  factory MediaGalleryFailure.fromException(Object error) {
    if (error is MediaGalleryFailure) return error;

    if (error is AppException) {
      return MediaGalleryFailure.unknown(error.message);
    }

    final errorString = error.toString().toLowerCase();

    // Check for permission-related errors
    if (errorString.contains('permission') ||
        errorString.contains('denied') ||
        errorString.contains('unauthorized')) {
      return MediaGalleryFailure.permissionDenied(error.toString());
    }

    // Check for file access errors
    if (errorString.contains('file') && errorString.contains('not found')) {
      return MediaGalleryFailure.fileAccessError(error.toString());
    }

    // Check for empty or no media errors
    if (errorString.contains('no media') || errorString.contains('empty')) {
      return MediaGalleryFailure.noMediaFound(error.toString());
    }

    // Check for loading errors
    if (errorString.contains('load') || errorString.contains('fetch')) {
      return MediaGalleryFailure.loadError(error.toString());
    }

    return MediaGalleryFailure.unknown(error.toString());
  }
}

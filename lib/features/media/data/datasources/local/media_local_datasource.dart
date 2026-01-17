import 'dart:io';
import 'package:photo_manager/photo_manager.dart';

abstract class MediaLocalDataSource {
  /// Request permission to access media
  Future<PermissionState> requestPermission();

  /// Open system settings for permissions
  Future<void> openSettings();

  /// Load media assets with pagination
  Future<List<AssetEntity>> loadMediaAssets({
    required int page,
    required int pageSize,
    RequestType type = RequestType.image,
  });

  /// Get file from asset entity
  Future<File?> getFileFromAsset(AssetEntity asset);

  /// Get total count of media assets
  Future<int> getMediaCount({RequestType type = RequestType.image});

  /// Capture photo using device camera
  /// Returns the captured image file or null if cancelled
  Future<File?> capturePhoto();

  /// Record video using device camera
  /// Returns the recorded video file or null if cancelled
  Future<File?> recordVideo({Duration? maxDuration});

  /// Pick documents from file system
  /// Returns list of selected document files
  Future<List<File>> pickDocuments({
    bool allowMultiple = true,
    List<String>? allowedExtensions,
  });

  /// Pick single document from file system
  Future<File?> pickSingleDocument({List<String>? allowedExtensions});

  /// Pick audio files from file system
  /// Returns list of selected audio files
  Future<List<File>> pickAudioFiles({
    bool allowMultiple = true,
    List<String>? allowedExtensions,
  });

  /// Pick single audio file from file system
  Future<File?> pickSingleAudioFile({List<String>? allowedExtensions});
}

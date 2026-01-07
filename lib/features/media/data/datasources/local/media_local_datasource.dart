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
}

import 'dart:io';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/features/media/data/datasources/local/media_local_datasource.dart';

class MediaLocalDataSourceImpl implements MediaLocalDataSource {
  AssetPathEntity? _cachedAlbum;
  RequestType? _cachedType;

  Future<AssetPathEntity?> _getRecentAlbum(RequestType type) async {
    if (_cachedAlbum != null && _cachedType == type) {
      return _cachedAlbum;
    }

    final List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
      type: type,
      onlyAll: true,
    );

    if (albums.isEmpty) {
      _cachedAlbum = null;
      _cachedType = null;
      return null;
    }

    _cachedAlbum = albums.first;
    _cachedType = type;
    return _cachedAlbum;
  }

  @override
  Future<PermissionState> requestPermission() async {
    return await PhotoManager.requestPermissionExtend();
  }

  @override
  Future<void> openSettings() async {
    return await PhotoManager.openSetting();
  }

  @override
  Future<List<AssetEntity>> loadMediaAssets({
    required int page,
    required int pageSize,
    RequestType type = RequestType.image,
  }) async {
    final recentAlbum = await _getRecentAlbum(type);
    if (recentAlbum == null) {
      return [];
    }

    final List<AssetEntity> media = await recentAlbum.getAssetListPaged(
      page: page,
      size: pageSize,
    );

    return media;
  }

  @override
  Future<File?> getFileFromAsset(AssetEntity asset) async {
    // Try to get file directly first
    final file = await asset.file;
    if (file != null) return file;

    // Fallback to origin file
    try {
      return await asset.originFile;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<int> getMediaCount({RequestType type = RequestType.image}) async {
    final recentAlbum = await _getRecentAlbum(type);
    if (recentAlbum == null) {
      return 0;
    }

    return await recentAlbum.assetCountAsync;
  }
}

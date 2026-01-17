import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/features/media/data/datasources/local/media_local_datasource.dart';

class MediaLocalDataSourceImpl implements MediaLocalDataSource {
  MediaLocalDataSourceImpl({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;
  AssetPathEntity? _cachedAlbum;
  RequestType? _cachedType;

  static const List<String> _defaultDocumentExtensions = [
    'pdf',
    'doc',
    'docx',
    'xls',
    'xlsx',
    'ppt',
    'pptx',
    'txt',
    'rtf',
    'csv',
    'zip',
    'rar',
  ];

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

  @override
  Future<File?> capturePhoto() async {
    try {
      final XFile? photo = await _imagePicker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1920,
        maxHeight: 1920,
        imageQuality: 85,
        preferredCameraDevice: CameraDevice.rear,
      );

      if (photo == null) return null;

      return File(photo.path);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<File?> recordVideo({Duration? maxDuration}) async {
    try {
      final XFile? video = await _imagePicker.pickVideo(
        source: ImageSource.camera,
        maxDuration: maxDuration ?? const Duration(minutes: 5),
        preferredCameraDevice: CameraDevice.rear,
      );

      if (video == null) return null;

      return File(video.path);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<File>> pickDocuments({
    bool allowMultiple = true,
    List<String>? allowedExtensions,
  }) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions ?? _defaultDocumentExtensions,
        allowMultiple: allowMultiple,
        withData: false,
        withReadStream: false,
      );

      if (result == null || result.files.isEmpty) {
        return [];
      }

      final files = <File>[];
      for (final platformFile in result.files) {
        if (platformFile.path != null) {
          final file = File(platformFile.path!);
          if (await file.exists()) {
            files.add(file);
          }
        }
      }

      return files;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<File?> pickSingleDocument({List<String>? allowedExtensions}) async {
    final files = await pickDocuments(
      allowMultiple: false,
      allowedExtensions: allowedExtensions,
    );
    return files.isNotEmpty ? files.first : null;
  }

  // Default audio extensions
  static const List<String> _defaultAudioExtensions = [
    'mp3',
    'wav',
    'aac',
    'm4a',
    'ogg',
    'flac',
    'wma',
    'opus',
  ];

  @override
  Future<List<File>> pickAudioFiles({
    bool allowMultiple = true,
    List<String>? allowedExtensions,
  }) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions ?? _defaultAudioExtensions,
        allowMultiple: allowMultiple,
        withData: false,
        withReadStream: false,
      );

      if (result == null || result.files.isEmpty) {
        return [];
      }

      final files = <File>[];
      for (final platformFile in result.files) {
        if (platformFile.path != null) {
          final file = File(platformFile.path!);
          if (await file.exists()) {
            files.add(file);
          }
        }
      }

      return files;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<File?> pickSingleAudioFile({List<String>? allowedExtensions}) async {
    final files = await pickAudioFiles(
      allowMultiple: false,
      allowedExtensions: allowedExtensions,
    );
    return files.isNotEmpty ? files.first : null;
  }
}

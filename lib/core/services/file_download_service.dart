import 'dart:io';

import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

/// Service untuk handle file download dan file operations
class FileDownloadService {
  final Dio _dio;

  FileDownloadService({Dio? dio}) : _dio = dio ?? Dio();

  /// Download file dari URL ke storage dengan progress callback
  ///
  /// Returns path file yang sudah di-download
  Future<String> downloadFile({
    required String fileUrl,
    required String fileName,
    void Function(double progress)? onProgress,
  }) async {
    // Request storage permission on Android
    if (Platform.isAndroid) {
      final status = await Permission.storage.request();
      if (!status.isGranted) {
        throw Exception('Storage permission required');
      }
    }

    // Get download directory
    final directory = await _getDownloadDirectory();
    final filePath = '${directory.path}/$fileName';

    // Download file with progress
    await _dio.download(
      fileUrl,
      filePath,
      onReceiveProgress: (received, total) {
        if (total != -1 && onProgress != null) {
          final progress = received / total;
          onProgress(progress);
        }
      },
    );

    return filePath;
  }

  /// Open file dengan aplikasi default
  Future<void> openFile(String filePath) async {
    await OpenFile.open(filePath);
  }

  /// Get download directory sesuai platform
  Future<Directory> _getDownloadDirectory() async {
    Directory? directory;

    if (Platform.isAndroid) {
      // Use Downloads folder on Android
      directory = Directory('/storage/emulated/0/Download/Velora');
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }
    } else if (Platform.isIOS) {
      // Use app documents directory on iOS
      directory = await getApplicationDocumentsDirectory();
    } else {
      // Use downloads directory for other platforms
      directory = await getDownloadsDirectory();
    }

    if (directory == null) {
      throw Exception('Could not get download directory');
    }

    return directory;
  }

  /// Check apakah file sudah ada
  Future<bool> fileExists(String fileName) async {
    final directory = await _getDownloadDirectory();
    final filePath = '${directory.path}/$fileName';
    return File(filePath).exists();
  }

  /// Get full file path
  Future<String> getFilePath(String fileName) async {
    final directory = await _getDownloadDirectory();
    return '${directory.path}/$fileName';
  }

  /// Delete file
  Future<void> deleteFile(String fileName) async {
    final directory = await _getDownloadDirectory();
    final filePath = '${directory.path}/$fileName';
    final file = File(filePath);
    if (await file.exists()) {
      await file.delete();
    }
  }
}

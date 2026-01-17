import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:velora/core/utils/log_alias.dart';
import 'package:video_compress/video_compress.dart';

/// Service for compressing video files before upload
///
/// Video compression is optional - always returns a valid file.
/// Uses video_compress package for efficient compression.
class VideoCompressor {
  VideoCompressor._();

  static const _logTag = 'VideoCompressor';

  // Video compression settings
  static const int _compressThresholdBytes = 10 * 1024 * 1024; // 10MB
  static const int _maxFileSizeBytes = 100 * 1024 * 1024; // 100MB limit
  static const Duration _compressionTimeout = Duration(minutes: 5);

  // Allowed video extensions
  static const _allowedExtensions = <String>{
    'mp4',
    'mov',
    'avi',
    'mkv',
    'webm',
    '3gp',
  };

  /// Compress video if needed with timeout protection
  ///
  /// Returns original file if:
  /// - File size is below threshold
  /// - Compression fails
  /// - Compression times out
  ///
  /// Never throws - always returns a valid file.
  static Future<File> compressVideoIfNeeded(File file) async {
    try {
      if (!await file.exists()) {
        logw('Video file does not exist: ${file.path}', tag: _logTag);
        return file;
      }

      final extension =
          p.extension(file.path).toLowerCase().replaceAll('.', '');
      if (!_allowedExtensions.contains(extension)) {
        logi('Unsupported video format: $extension', tag: _logTag);
        return file;
      }

      final originalSize = await file.length();

      // Check max file size
      if (originalSize > _maxFileSizeBytes) {
        logw(
          'Video too large: ${originalSize ~/ (1024 * 1024)}MB (max: ${_maxFileSizeBytes ~/ (1024 * 1024)}MB)',
          tag: _logTag,
        );
        return file; // Return original, let upload handle error
      }

      // Skip compression for small videos
      if (originalSize <= _compressThresholdBytes) {
        logi(
          'No compression needed (${originalSize ~/ (1024 * 1024)}MB)',
          tag: _logTag,
        );
        return file;
      }

      logi(
        'Starting video compression (${originalSize ~/ (1024 * 1024)}MB)',
        tag: _logTag,
      );

      return await _compressWithTimeout(file, originalSize);
    } catch (e, stackTrace) {
      loge(
        'Video compression error, using original',
        tag: _logTag,
        error: e,
        stackTrace: stackTrace,
      );
      return file;
    }
  }

  /// Compress with timeout protection
  static Future<File> _compressWithTimeout(
    File file,
    int originalSize,
  ) async {
    try {
      return await Future.any([
        _compressVideo(file, originalSize),
        Future.delayed(_compressionTimeout, () {
          logw('Video compression timed out', tag: _logTag);
          VideoCompress.cancelCompression();
          return file;
        }),
      ]);
    } catch (e) {
      logw('Compression timeout or error: $e', tag: _logTag);
      return file;
    }
  }

  /// Actual video compression logic
  static Future<File> _compressVideo(File file, int originalSize) async {
    try {
      // Determine quality based on original size
      final quality = _getQualityForSize(originalSize);

      final MediaInfo? mediaInfo = await VideoCompress.compressVideo(
        file.path,
        quality: quality,
        deleteOrigin: false,
        includeAudio: true,
        frameRate: 30,
      );

      if (mediaInfo == null || mediaInfo.file == null) {
        logw('Video compression returned null', tag: _logTag);
        return file;
      }

      final compressedFile = mediaInfo.file!;
      final compressedSize = await compressedFile.length();

      // Only use compressed if it's actually smaller
      if (compressedSize < originalSize) {
        logi(
          'Compression success: ${originalSize ~/ (1024 * 1024)}MB → ${compressedSize ~/ (1024 * 1024)}MB',
          tag: _logTag,
        );
        return compressedFile;
      }

      logw('Compressed size not smaller, using original', tag: _logTag);
      return file;
    } catch (e) {
      logw('Video compression failed: $e', tag: _logTag);
      return file;
    }
  }

  /// Get compression quality based on file size
  static VideoQuality _getQualityForSize(int sizeBytes) {
    final sizeMb = sizeBytes / (1024 * 1024);

    if (sizeMb > 50) {
      return VideoQuality.LowQuality;
    } else if (sizeMb > 30) {
      return VideoQuality.MediumQuality;
    } else {
      return VideoQuality.HighestQuality;
    }
  }

  /// Get video thumbnail
  static Future<File?> getVideoThumbnail(
    File videoFile, {
    int quality = 75,
    int position = 0, // Position in milliseconds
  }) async {
    try {
      final thumbnail = await VideoCompress.getFileThumbnail(
        videoFile.path,
        quality: quality,
        position: position,
      );
      return thumbnail;
    } catch (e) {
      logw('Failed to get video thumbnail: $e', tag: _logTag);
      return null;
    }
  }

  /// Get video media info (duration, dimensions, etc.)
  static Future<MediaInfo?> getVideoInfo(File videoFile) async {
    try {
      return await VideoCompress.getMediaInfo(videoFile.path);
    } catch (e) {
      logw('Failed to get video info: $e', tag: _logTag);
      return null;
    }
  }

  /// Cancel ongoing compression
  static Future<void> cancelCompression() async {
    await VideoCompress.cancelCompression();
  }

  /// Delete all cached files
  static Future<void> clearCache() async {
    await VideoCompress.deleteAllCache();
  }
}

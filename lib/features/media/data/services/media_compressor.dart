import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:velora/core/utils/log_alias.dart';

/// Service for compressing images with multiple fallback strategies
/// 
/// Compression never blocks upload - always returns a valid file.
/// Uses multiple strategies to ensure successful compression.
class MediaCompressor {
  MediaCompressor._();

  static const _logTag = 'MediaCompressor';

  // Allowed MIME types
  static const _allowedMimeTypes = <String>{
    'image/jpeg',
    'image/png',
    'image/webp',
  };

  static const int _compressThresholdBytes = 350 * 1024; // 350KB
  static const int _targetMaxBytes = 900 * 1024; // 900KB
  static const int _maxDimension = 1920; // Max width/height
  static const Duration _compressionTimeout = Duration(seconds: 10);

  /// Compress image with multiple fallback strategies
  /// 
  /// Strategy priority:
  /// 1. WebP with quality reduction (80→70→60)
  /// 2. WebP with dimension resize
  /// 3. JPEG fallback with quality reduction
  /// 4. Original file (guaranteed success)
  /// 
  /// Never throws - always returns a valid file.
  static Future<File> compressImageIfNeeded(File file) async {
    try {
      if (!await file.exists()) {
        logw('File does not exist: ${file.path}', tag: _logTag);
        return file;
      }

      final mimeType = lookupMimeType(file.path);
      if (mimeType == null || !_allowedMimeTypes.contains(mimeType)) {
        logi('Unsupported MIME: $mimeType, using original', tag: _logTag);
        return file;
      }

      final originalSize = await file.length();
      if (originalSize <= _compressThresholdBytes) {
        logi('No compression needed (${originalSize ~/ 1024}KB)', tag: _logTag);
        return file;
      }

      logi(
        'Starting compression (${originalSize ~/ 1024}KB, $mimeType)',
        tag: _logTag,
      );

      // Try strategies with timeout
      return await _compressWithTimeout(file, originalSize);
    } catch (e, stackTrace) {
      loge(
        'Compression error, using original',
        tag: _logTag,
        error: e,
        stackTrace: stackTrace,
      );
      return file; // Always return original on error
    }
  }

  /// Compress with timeout protection
  static Future<File> _compressWithTimeout(
    File file,
    int originalSize,
  ) async {
    try {
      return await Future.any([
        _tryCompressionStrategies(file, originalSize),
        Future.delayed(_compressionTimeout, () => file),
      ]);
    } catch (e) {
      logw('Compression timeout or error: $e', tag: _logTag);
      return file;
    }
  }

  /// Try multiple compression strategies in order
  static Future<File> _tryCompressionStrategies(
    File file,
    int originalSize,
  ) async {
    // Strategy 1: WebP quality reduction
    final webpResult = await _tryWebPQualityReduction(file);
    if (webpResult != null) {
      final size = await webpResult.length();
      if (size < originalSize && size <= _targetMaxBytes * 1.2) {
        logi('Strategy 1 success: ${size ~/ 1024}KB', tag: _logTag);
        return webpResult;
      }
    }

    // Strategy 2: WebP with dimension resize
    final resizedResult = await _tryWebPWithResize(file);
    if (resizedResult != null) {
      final size = await resizedResult.length();
      if (size < originalSize) {
        logi('Strategy 2 success: ${size ~/ 1024}KB', tag: _logTag);
        return resizedResult;
      }
    }

    // Strategy 3: JPEG fallback
    final jpegResult = await _tryJpegFallback(file);
    if (jpegResult != null) {
      final size = await jpegResult.length();
      if (size < originalSize) {
        logi('Strategy 3 success: ${size ~/ 1024}KB', tag: _logTag);
        return jpegResult;
      }
    }

    // Strategy 4: Return original (guaranteed success)
    logw('All strategies failed, using original', tag: _logTag);
    return file;
  }

  /// Strategy 1: WebP quality reduction (80→70→60)
  static Future<File?> _tryWebPQualityReduction(File file) async {
    try {
      for (final quality in [80, 70, 60]) {
        try {
          final compressed = await _compressToFormat(
            file,
            format: CompressFormat.webp,
            quality: quality,
            suffix: 'webp_q$quality',
          );
          
          if (compressed != null) {
            final size = await compressed.length();
            if (size <= _targetMaxBytes && quality >= 70) {
              return compressed;
            }
            if (quality == 60) return compressed; // Last resort
          }
        } catch (e) {
          logw('WebP q=$quality failed: $e', tag: _logTag);
          continue;
        }
      }
    } catch (e) {
      logw('WebP strategy failed: $e', tag: _logTag);
    }
    return null;
  }

  /// Strategy 2: WebP with dimension resize
  static Future<File?> _tryWebPWithResize(File file) async {
    try {
      final compressed = await _compressToFormat(
        file,
        format: CompressFormat.webp,
        quality: 75,
        minWidth: _maxDimension,
        minHeight: _maxDimension,
        suffix: 'webp_resized',
      );
      return compressed;
    } catch (e) {
      logw('WebP resize failed: $e', tag: _logTag);
      return null;
    }
  }

  /// Strategy 3: JPEG fallback with quality reduction
  static Future<File?> _tryJpegFallback(File file) async {
    try {
      for (final quality in [80, 70]) {
        try {
          final compressed = await _compressToFormat(
            file,
            format: CompressFormat.jpeg,
            quality: quality,
            suffix: 'jpeg_q$quality',
          );
          
          if (compressed != null) {
            final size = await compressed.length();
            if (size <= _targetMaxBytes || quality == 70) {
              return compressed;
            }
          }
        } catch (e) {
          logw('JPEG q=$quality failed: $e', tag: _logTag);
          continue;
        }
      }
    } catch (e) {
      logw('JPEG strategy failed: $e', tag: _logTag);
    }
    return null;
  }

  /// Generic compression to specified format
  static Future<File?> _compressToFormat(
    File file, {
    required CompressFormat format,
    required int quality,
    required String suffix,
    int? minWidth,
    int? minHeight,
  }) async {
    try {
      final dir = p.dirname(file.path);
      final base = p.basenameWithoutExtension(file.path);
      final ext = format == CompressFormat.webp ? 'webp' : 'jpg';
      final targetPath = p.join(dir, '${base}_$suffix.$ext');

      final result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path,
        targetPath,
        format: format,
        quality: quality,
        minWidth: minWidth ?? 0,
        minHeight: minHeight ?? 0,
        keepExif: false, // Remove EXIF to reduce size
      );

      if (result == null) return null;
      
      final resultFile = File(result.path);
      if (!await resultFile.exists()) return null;
      
      return resultFile;
    } catch (e) {
      logw('Compress to $format failed: $e', tag: _logTag);
      return null;
    }
  }
}

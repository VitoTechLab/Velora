import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:velora/core/utils/log_alias.dart';

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

  /// Compress image if needed:
  /// - Only if MIME is allowed
  /// - Only if file size > 350KB
  /// - Try WEBP quality 80, then 70, then 60 (last resort)
  /// - If compression fails, return original file (never block upload)
  static Future<File> compressImageIfNeeded(File file) async {
    try {
      if (!await file.exists()) {
        logw(
          'File does not exist: ${file.path}, skipping compression',
          tag: _logTag,
        );
        return file;
      }

      final mimeType = lookupMimeType(file.path);
      if (mimeType == null || !_allowedMimeTypes.contains(mimeType)) {
        logw('Unsupported image type: $mimeType, using original', tag: _logTag);
        return file;
      }

      final originalSize = await file.length();
      if (originalSize <= _compressThresholdBytes) {
        logi(
          'No compression needed (size=${originalSize ~/ 1024}KB)',
          tag: _logTag,
        );
        return file;
      }

      logi(
        'Compressing image (original=${originalSize ~/ 1024}KB, mime=$mimeType)',
        tag: _logTag,
      );

      // Try qualities: 80 -> 70 -> 60 (60 only if really needed)
      final qualities = <int>[80, 70, 60];

      File? bestFile;
      int bestSize = originalSize;

      for (final quality in qualities) {
        try {
          final compressed = await _compressToWebp(file, quality: quality);
          final size = await compressed.length();

          logi(
            'Compressed with quality=$quality => ${size ~/ 1024}KB',
            tag: _logTag,
          );

          if (size < bestSize) {
            bestSize = size;
            bestFile = compressed;
          }

          // Stop if already under target & quality >= 70
          if (size <= _targetMaxBytes && quality >= 70) {
            return compressed;
          }
        } catch (e) {
          logw(
            'Failed to compress with quality=$quality: $e, trying next quality',
            tag: _logTag,
          );
          continue;
        }
      }

      // Return best compressed file, or original if all compressions failed
      if (bestFile != null) {
        logi(
          'Using best compression result: ${bestSize ~/ 1024}KB',
          tag: _logTag,
        );
        return bestFile;
      } else {
        logw(
          'All compression attempts failed, using original file',
          tag: _logTag,
        );
        return file;
      }
    } catch (e, stackTrace) {
      loge(
        'Compression process failed, using original file',
        tag: _logTag,
        error: e,
        stackTrace: stackTrace,
      );
      return file; // Always return original file on any error
    }
  }

  static Future<File> _compressToWebp(File file, {required int quality}) async {
    final dir = p.dirname(file.path);
    final base = p.basenameWithoutExtension(file.path);
    final targetPath = p.join(dir, '${base}_compressed_q$quality.webp');

    final result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      format: CompressFormat.webp,
      quality: quality,
    );

    if (result == null) {
      throw Exception('FlutterImageCompress returned null');
    }

    return File(result.path);
  }
}

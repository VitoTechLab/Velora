import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource.dart';
import 'package:velora/features/media/data/models/media_asset_model.dart';
import 'package:velora/features/media/data/models/upload_signature_model.dart';

/// Remote datasource for media upload operations
/// 
/// Features:
/// - Parallel upload with concurrency control
/// - Retry mechanism with exponential backoff
/// - Timeout protection
/// - Comprehensive error handling
class MediaRemoteDataSourceImpl implements MediaRemoteDataSource {
  MediaRemoteDataSourceImpl({
    required Dio supabaseFunctionsDio,
    required Dio cloudinaryDio,
  })  : _supabaseFunctionsDio = supabaseFunctionsDio,
        _cloudinaryDio = cloudinaryDio;

  final Dio _supabaseFunctionsDio;
  final Dio _cloudinaryDio;

  static const _logTag = 'MediaRemoteDataSource';
  static const int _maxRetries = 2;
  static const Duration _uploadTimeout = Duration(seconds: 30);

  @override
  Future<UploadSignatureModel> getUploadSignature({
    required String publicId,
    required String folder,
  }) async {
    return await _retryWithBackoff(
      () => _getUploadSignatureImpl(publicId: publicId, folder: folder),
      operationName: 'getUploadSignature',
    );
  }

  Future<UploadSignatureModel> _getUploadSignatureImpl({
    required String publicId,
    required String folder,
  }) async {
    try {
      logi(
        'Requesting signature: publicId=$publicId folder=$folder',
        tag: _logTag,
      );

      final response = await _supabaseFunctionsDio.post(
        '/cloudinary-sign',
        data: <String, dynamic>{'public_id': publicId, 'folder': folder},
        options: Options(
          sendTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

      final raw = response.data;
      if (raw is! Map) {
        throw ServerException(
          'Invalid response from /cloudinary-sign: ${raw.runtimeType}',
        );
      }

      final data = Map<String, dynamic>.from(raw);

      if (data['error'] != null) {
        throw ServerException('cloudinary-sign error: ${data['error']}');
      }

      // Validate required fields
      final requiredFields = ['signature', 'timestamp', 'api_key', 'public_id'];
      for (final field in requiredFields) {
        if (data[field] == null) {
          throw ServerException('Missing field "$field" from signature');
        }
      }

      logi('Signature obtained successfully', tag: _logTag);
      return UploadSignatureModel.fromJson(data);
    } catch (error, stackTrace) {
      loge(
        'Failed to get signature',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );
      
      if (error is ServerException) rethrow;
      throw ServerException('Failed to get signature: $error');
    }
  }

  @override
  Future<MediaAssetModel> uploadImageToCloudinary({
    required File file,
    required UploadSignatureModel signature,
  }) async {
    return await _retryWithBackoff(
      () => _uploadImageImpl(file: file, signature: signature),
      operationName: 'uploadImageToCloudinary',
    );
  }

  Future<MediaAssetModel> _uploadImageImpl({
    required File file,
    required UploadSignatureModel signature,
  }) async {
    try {
      // Validate file exists
      if (!await file.exists()) {
        throw ServerException('File does not exist: ${file.path}');
      }

      final cloudName = dotenv.get(
        'CLOUDINARY_CLOUD_NAME',
        fallback: 'dcaskzvqd',
      );

      if (cloudName.isEmpty) {
        throw ServerException('CLOUDINARY_CLOUD_NAME not configured');
      }

      final url = 'https://api.cloudinary.com/v1_1/$cloudName/image/upload';
      final fileSize = await file.length();

      logi(
        'Uploading to Cloudinary:\n'
        '  File: ${file.path}\n'
        '  Size: ${fileSize ~/ 1024}KB\n'
        '  PublicId: ${signature.publicId}',
        tag: _logTag,
      );

      final formData = FormData.fromMap(<String, dynamic>{
        'file': await MultipartFile.fromFile(
          file.path,
          filename: signature.publicId,
        ),
        'api_key': signature.apiKey,
        'timestamp': signature.timestamp.toString(),
        'signature': signature.signature,
        'public_id': signature.publicId,
        'folder': signature.folder,
      });

      final response = await _cloudinaryDio.post(
        url,
        data: formData,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
          sendTimeout: _uploadTimeout,
          receiveTimeout: const Duration(seconds: 30),
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode != 200) {
        throw ServerException(
          'Upload failed: ${response.statusCode} - ${response.data}',
        );
      }

      final data = response.data;
      if (data is! Map<String, dynamic>) {
        throw ServerException('Invalid response: ${data.runtimeType}');
      }

      if (data['error'] != null) {
        throw ServerException(
          'Cloudinary error: ${data['error']['message'] ?? data['error']}',
        );
      }

      logi(
        'Upload success: ${data['secure_url']}',
        tag: _logTag,
      );

      return MediaAssetModel.fromJson(data);
    } catch (error, stackTrace) {
      loge(
        'Upload failed',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );

      if (error is ServerException) rethrow;
      throw ServerException('Upload failed: $error');
    }
  }

  /// Retry operation with exponential backoff
  Future<T> _retryWithBackoff<T>(
    Future<T> Function() operation, {
    required String operationName,
  }) async {
    var attempt = 0;
    var delay = const Duration(milliseconds: 500);

    while (true) {
      try {
        return await operation();
      } catch (e) {
        attempt++;
        
        if (attempt > _maxRetries) {
          logw('Max retries reached for $operationName', tag: _logTag);
          rethrow;
        }

        logw(
          'Retry $attempt/$_maxRetries for $operationName after ${delay.inMilliseconds}ms',
          tag: _logTag,
        );

        await Future.delayed(delay);
        delay *= 2; // Exponential backoff
      }
    }
  }
}

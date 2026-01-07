import 'dart:io';

import 'package:dio/dio.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource.dart';
import 'package:velora/features/media/data/models/media_asset_model.dart';
import 'package:velora/features/media/data/models/upload_signature_model.dart';

class MediaRemoteDataSourceImpl implements MediaRemoteDataSource {
  MediaRemoteDataSourceImpl({
    required Dio supabaseFunctionsDio,
    required Dio cloudinaryDio,
  }) : _supabaseFunctionsDio = supabaseFunctionsDio,
       _cloudinaryDio = cloudinaryDio;

  final Dio _supabaseFunctionsDio;
  final Dio _cloudinaryDio;

  static const _logTag = 'MediaRemoteDataSource';

  @override
  Future<UploadSignatureModel> getUploadSignature({
    required String publicId,
    required String folder,
  }) async {
    try {
      logi(
        'Requesting Cloudinary signature for publicId=$publicId folder=$folder',
        tag: _logTag,
      );

      final response = await _supabaseFunctionsDio.post(
        '/cloudinary-sign',
        data: <String, dynamic>{'public_id': publicId, 'folder': folder},
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

      if (data['signature'] == null ||
          data['timestamp'] == null ||
          data['api_key'] == null ||
          data['public_id'] == null) {
        throw ServerException('Missing fields from /cloudinary-sign: $data');
      }

      logi('Cloudinary signature obtained successfully', tag: _logTag);
      return UploadSignatureModel.fromJson(data);
    } catch (error, stackTrace) {
      loge(
        'Failed to get Cloudinary signature',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );
      throw ServerException('Failed to get Cloudinary signature: $error');
    }
  }

  @override
  Future<MediaAssetModel> uploadImageToCloudinary({
    required File file,
    required UploadSignatureModel signature,
  }) async {
    const logOp = 'uploadImageToCloudinary';

    try {
      // Validate file exists before upload
      if (!await file.exists()) {
        throw ServerException('File does not exist: ${file.path}');
      }

      const cloudName = String.fromEnvironment(
        'CLOUDINARY_CLOUD_NAME',
        defaultValue: 'dcaskzvqd',
      );

      if (cloudName.isEmpty) {
        throw ServerException(
          'CLOUDINARY_CLOUD_NAME is not configured in environment',
        );
      }

      final url = 'https://api.cloudinary.com/v1_1/$cloudName/image/upload';
      final fileSize = await file.length();

      logi(
        'Uploading file to Cloudinary:\n'
        '  URL: $url\n'
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
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode != 200) {
        loge(
          'Cloudinary upload failed with status ${response.statusCode}',
          tag: _logTag,
        );
        throw ServerException(
          'Cloudinary upload failed: ${response.statusCode} - ${response.data}',
        );
      }

      final data = response.data;
      if (data is! Map<String, dynamic>) {
        throw ServerException(
          'Invalid Cloudinary upload response: ${data.runtimeType}',
        );
      }

      if (data['error'] != null) {
        throw ServerException(
          'Cloudinary error: ${data['error']['message'] ?? data['error']}',
        );
      }

      logi(
        'Upload successful:\n'
        '  SecureUrl: ${data['secure_url']}\n'
        '  PublicId: ${data['public_id']}\n'
        '  Format: ${data['format']}',
        tag: _logTag,
      );

      return MediaAssetModel.fromJson(data);
    } catch (error, stackTrace) {
      loge(
        'Cloudinary upload failed: $logOp',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );

      if (error is ServerException) {
        rethrow;
      }

      throw ServerException('Failed to upload image to Cloudinary: $error');
    }
  }
}

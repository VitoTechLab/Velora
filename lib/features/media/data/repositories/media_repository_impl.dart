import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource.dart';
import 'package:velora/features/media/data/models/media_asset_model.dart';
import 'package:velora/features/media/data/services/media_compressor.dart';
import 'package:velora/features/media/data/services/video_compressor.dart';
import 'package:velora/features/media/domain/entities/media_asset_entity.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';

/// Repository implementation for media upload operations
///
/// Features:
/// - Parallel upload with adaptive concurrency
/// - Automatic compression before upload
/// - Fail-fast error handling
/// - Progress tracking support
class MediaRepositoryImpl implements MediaRepository {
  MediaRepositoryImpl({required MediaRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final MediaRemoteDataSource _remoteDataSource;

  static const _logTag = 'MediaRepository';
  static const _uuid = Uuid();

  @override
  Future<Either<Failure, List<MediaAsset>>> uploadImagesForPost({
    required List<File> files,
    required String userId,
    required String postId,
  }) async {
    return _uploadScopedBatch(
      files: files,
      userId: userId,
      scope: 'posts',
      scopeId: postId,
    );
  }

  @override
  Future<Either<Failure, List<MediaAsset>>> uploadImagesForCampaign({
    required List<File> files,
    required String userId,
    required String campaignId,
  }) async {
    return _uploadScopedBatch(
      files: files,
      userId: userId,
      scope: 'campaigns',
      scopeId: campaignId,
    );
  }

  @override
  Future<Either<Failure, List<MediaAsset>>> uploadImagesForChat({
    required List<File> files,
    required String userId,
    required String conversationId,
  }) async {
    return _uploadScopedBatch(
      files: files,
      userId: userId,
      scope: 'chat',
      scopeId: conversationId,
    );
  }

  @override
  Future<Either<Failure, MediaAsset>> uploadVideoForChat({
    required File file,
    required String userId,
    required String conversationId,
  }) async {
    return _uploadVideo(
      file: file,
      userId: userId,
      scope: 'chat',
      scopeId: conversationId,
    );
  }

  @override
  Future<Either<Failure, MediaAsset>> uploadDocumentForChat({
    required File file,
    required String userId,
    required String conversationId,
  }) async {
    return _uploadDocument(
      file: file,
      userId: userId,
      scope: 'chat',
      scopeId: conversationId,
    );
  }

  @override
  Future<Either<Failure, List<MediaAsset>>> uploadDocumentsForChat({
    required List<File> files,
    required String userId,
    required String conversationId,
  }) async {
    return _uploadDocumentsBatch(
      files: files,
      userId: userId,
      scope: 'chat',
      scopeId: conversationId,
    );
  }

  @override
  Future<Either<Failure, MediaAsset>> uploadAudioForChat({
    required File file,
    required String userId,
    required String conversationId,
  }) async {
    return _uploadAudio(
      file: file,
      userId: userId,
      scope: 'chat',
      scopeId: conversationId,
    );
  }

  /// Upload multiple files with adaptive concurrency
  ///
  /// Concurrency strategy:
  /// - 1 file: Sequential (no parallelism needed)
  /// - 2-4 files: 2 concurrent uploads
  /// - 5+ files: 3 concurrent uploads
  Future<Either<Failure, List<MediaAsset>>> _uploadScopedBatch({
    required List<File> files,
    required String userId,
    required String scope,
    required String scopeId,
  }) async {
    try {
      if (userId.trim().isEmpty) {
        return const Left(Failure('User id is required'));
      }
      if (scopeId.trim().isEmpty) {
        return const Left(Failure('Scope id is required'));
      }
      if (files.isEmpty) {
        return const Right(<MediaAsset>[]);
      }

      // Adaptive concurrency based on file count
      final concurrency = _calculateConcurrency(files.length);

      logi(
        'Uploading ${files.length} files with concurrency=$concurrency',
        tag: _logTag,
      );

      final tasks = files.asMap().entries.map((entry) {
        final index = entry.key;
        final file = entry.value;

        return () => _uploadWithProgress(
              file: file,
              userId: userId,
              scope: scope,
              scopeId: scopeId,
              index: index,
              total: files.length,
            );
      }).toList();

      final results = await _runWithConcurrency<Either<Failure, MediaAsset>>(
        tasks: tasks,
        concurrency: concurrency,
      );

      final assets = <MediaAsset>[];

      for (final result in results) {
        final failureOrNull = result.fold((l) => l, (_) => null);
        if (failureOrNull != null) {
          // Fail-fast: return immediately on first error
          loge('Upload failed, aborting batch', tag: _logTag);
          return Left(failureOrNull);
        }
        result.fold((_) {}, (asset) => assets.add(asset));
      }

      logi('Batch upload completed: ${assets.length} assets', tag: _logTag);
      return Right(assets);
    } catch (e, st) {
      loge(
        'Batch upload failed',
        tag: _logTag,
        error: e,
        stackTrace: st,
      );
      return Left(Failure(e.toString()));
    }
  }

  /// Calculate optimal concurrency based on file count
  int _calculateConcurrency(int fileCount) {
    if (fileCount == 1) return 1;
    if (fileCount <= 4) return 2;
    return 3; // Max 3 concurrent uploads for 5+ files
  }

  /// Upload single file with progress tracking
  Future<Either<Failure, MediaAsset>> _uploadWithProgress({
    required File file,
    required String userId,
    required String scope,
    required String scopeId,
    required int index,
    required int total,
  }) async {
    try {
      logi('Upload [${index + 1}/$total] starting...', tag: _logTag);

      final result = await _uploadScoped(
        file: file,
        userId: userId,
        scope: scope,
        scopeId: scopeId,
      );

      result.fold(
        (failure) => loge('Upload [${index + 1}/$total] failed', tag: _logTag),
        (_) => logi('Upload [${index + 1}/$total] completed', tag: _logTag),
      );

      return result;
    } catch (e) {
      loge('Upload [${index + 1}/$total] exception: $e', tag: _logTag);
      return Left(Failure(e.toString()));
    }
  }

  /// Upload single file with compression
  Future<Either<Failure, MediaAsset>> _uploadScoped({
    required File file,
    required String userId,
    required String scope,
    required String scopeId,
  }) async {
    try {
      if (userId.trim().isEmpty) {
        return const Left(Failure('User id is required'));
      }
      if (scopeId.trim().isEmpty) {
        return const Left(Failure('Scope id is required'));
      }

      // 1) Compress if needed (never fails - returns original on error)
      final compressedFile = await MediaCompressor.compressImageIfNeeded(file);

      // 2) Build Cloudinary path
      final folder = _buildFolder(userId, scope, scopeId);
      final publicId = _buildPublicId(userId, scope, scopeId);

      // 3) Request signature from Supabase Edge Function
      final signature = await _remoteDataSource.getUploadSignature(
        publicId: publicId,
        folder: folder,
      );

      // 4) Upload to Cloudinary
      final MediaAssetModel model = await _remoteDataSource
          .uploadImageToCloudinary(file: compressedFile, signature: signature);

      return Right(model.toEntity());
    } on AppException catch (error) {
      loge('Upload failed (AppException)', tag: _logTag, error: error);
      return Left(Failure(error.message));
    } catch (error, stackTrace) {
      loge(
        'Upload failed (unknown)',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );
      return Left(Failure(error.toString()));
    }
  }

  /// Run tasks with controlled concurrency
  Future<List<T>> _runWithConcurrency<T>({
    required List<Future<T> Function()> tasks,
    required int concurrency,
  }) async {
    if (concurrency <= 0) concurrency = 1;

    final results = <T>[];
    var index = 0;

    while (index < tasks.length) {
      final end = (index + concurrency > tasks.length)
          ? tasks.length
          : index + concurrency;

      final chunk = tasks.sublist(index, end);

      // Run chunk concurrently
      final chunkResults = await Future.wait(chunk.map((fn) => fn()));
      results.addAll(chunkResults);

      index = end;
    }

    return results;
  }

  /// Build Cloudinary folder path
  String _buildFolder(String userId, String scope, String scopeId) {
    return 'velora/users/$userId/$scope/$scopeId';
  }

  /// Build unique public ID for Cloudinary
  String _buildPublicId(String userId, String scope, String scopeId) {
    final uuid = _uuid.v4();
    return 'velora/users/$userId/$scope/$scopeId/$uuid';
  }

  /// Upload single video with compression
  Future<Either<Failure, MediaAsset>> _uploadVideo({
    required File file,
    required String userId,
    required String scope,
    required String scopeId,
  }) async {
    try {
      if (userId.trim().isEmpty) {
        return const Left(Failure('User id is required'));
      }
      if (scopeId.trim().isEmpty) {
        return const Left(Failure('Scope id is required'));
      }

      logi('Starting video upload...', tag: _logTag);

      // 1) Compress video if needed
      final compressedFile = await VideoCompressor.compressVideoIfNeeded(file);

      // 2) Build Cloudinary path
      final folder = _buildFolder(userId, scope, scopeId);
      final publicId = _buildPublicIdWithExt(userId, scope, scopeId, file.path);

      // 3) Request signature from Supabase Edge Function
      final signature = await _remoteDataSource.getUploadSignature(
        publicId: publicId,
        folder: folder,
        resourceType: 'video',
      );

      // 4) Upload to Cloudinary
      final MediaAssetModel model = await _remoteDataSource
          .uploadVideoToCloudinary(file: compressedFile, signature: signature);

      logi('Video upload completed', tag: _logTag);
      return Right(model.toEntity());
    } on AppException catch (error) {
      loge('Video upload failed (AppException)', tag: _logTag, error: error);
      return Left(Failure(error.message));
    } catch (error, stackTrace) {
      loge(
        'Video upload failed (unknown)',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );
      return Left(Failure(error.toString()));
    }
  }

  /// Upload single document (no compression)
  Future<Either<Failure, MediaAsset>> _uploadDocument({
    required File file,
    required String userId,
    required String scope,
    required String scopeId,
  }) async {
    try {
      if (userId.trim().isEmpty) {
        return const Left(Failure('User id is required'));
      }
      if (scopeId.trim().isEmpty) {
        return const Left(Failure('Scope id is required'));
      }

      logi('Starting document upload...', tag: _logTag);

      // Documents are not compressed
      final folder = _buildFolder(userId, scope, scopeId);
      final publicId = _buildPublicIdWithExt(userId, scope, scopeId, file.path);

      // Request signature for raw resource
      final signature = await _remoteDataSource.getUploadSignature(
        publicId: publicId,
        folder: folder,
        resourceType: 'raw',
      );

      // Upload to Cloudinary
      final MediaAssetModel model = await _remoteDataSource
          .uploadRawToCloudinary(file: file, signature: signature);

      logi('Document upload completed', tag: _logTag);
      return Right(model.toEntity());
    } on AppException catch (error) {
      loge('Document upload failed (AppException)', tag: _logTag, error: error);
      return Left(Failure(error.message));
    } catch (error, stackTrace) {
      loge(
        'Document upload failed (unknown)',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );
      return Left(Failure(error.toString()));
    }
  }

  /// Upload multiple documents with concurrency
  Future<Either<Failure, List<MediaAsset>>> _uploadDocumentsBatch({
    required List<File> files,
    required String userId,
    required String scope,
    required String scopeId,
  }) async {
    try {
      if (files.isEmpty) {
        return const Right(<MediaAsset>[]);
      }

      final concurrency = _calculateConcurrency(files.length);

      logi(
        'Uploading ${files.length} documents with concurrency=$concurrency',
        tag: _logTag,
      );

      final tasks = files.asMap().entries.map((entry) {
        return () => _uploadDocument(
              file: entry.value,
              userId: userId,
              scope: scope,
              scopeId: scopeId,
            );
      }).toList();

      final results = await _runWithConcurrency<Either<Failure, MediaAsset>>(
        tasks: tasks,
        concurrency: concurrency,
      );

      final assets = <MediaAsset>[];

      for (final result in results) {
        final failureOrNull = result.fold((l) => l, (_) => null);
        if (failureOrNull != null) {
          loge('Document upload failed, aborting batch', tag: _logTag);
          return Left(failureOrNull);
        }
        result.fold((_) {}, (asset) => assets.add(asset));
      }

      logi('Document batch upload completed: ${assets.length} files',
          tag: _logTag);
      return Right(assets);
    } catch (e, st) {
      loge('Document batch upload failed',
          tag: _logTag, error: e, stackTrace: st);
      return Left(Failure(e.toString()));
    }
  }

  /// Build public ID preserving original extension
  String _buildPublicIdWithExt(
    String userId,
    String scope,
    String scopeId,
    String filePath,
  ) {
    final uuid = _uuid.v4();
    final ext = p.extension(filePath);
    return 'velora/users/$userId/$scope/$scopeId/$uuid$ext';
  }

  /// Upload single audio file (voice message or audio file)
  Future<Either<Failure, MediaAsset>> _uploadAudio({
    required File file,
    required String userId,
    required String scope,
    required String scopeId,
  }) async {
    try {
      if (userId.trim().isEmpty) {
        return const Left(Failure('User id is required'));
      }
      if (scopeId.trim().isEmpty) {
        return const Left(Failure('Scope id is required'));
      }

      logi('Starting audio upload...', tag: _logTag);

      // Audio files are uploaded as video resource type in Cloudinary
      // (Cloudinary treats audio as a subset of video)
      final folder = _buildFolder(userId, scope, scopeId);
      final publicId = _buildPublicIdWithExt(userId, scope, scopeId, file.path);

      // Request signature for video resource (audio is part of video in Cloudinary)
      final signature = await _remoteDataSource.getUploadSignature(
        publicId: publicId,
        folder: folder,
        resourceType: 'video',
      );

      // Upload to Cloudinary using video endpoint
      final MediaAssetModel model = await _remoteDataSource
          .uploadVideoToCloudinary(file: file, signature: signature);

      logi('Audio upload completed', tag: _logTag);
      return Right(model.toEntity());
    } on AppException catch (error) {
      loge('Audio upload failed (AppException)', tag: _logTag, error: error);
      return Left(Failure(error.message));
    } catch (error, stackTrace) {
      loge(
        'Audio upload failed (unknown)',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );
      return Left(Failure(error.toString()));
    }
  }
}

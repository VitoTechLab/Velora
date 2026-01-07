import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource.dart';
import 'package:velora/features/media/data/models/media_asset_model.dart';
import 'package:velora/features/media/data/services/media_compressor.dart';
import 'package:velora/features/media/domain/entities/media_asset.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';

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

  Future<Either<Failure, List<MediaAsset>>> _uploadScopedBatch({
    required List<File> files,
    required String userId,
    required String scope,
    required String scopeId,
    int concurrency = 3,
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

      final tasks = files.map((file) {
        return () => _uploadScoped(
          file: file,
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
          // fail-fast: ketemu 1 gagal -> langsung return failure
          return Left(failureOrNull);
        }
        result.fold((_) {}, (asset) => assets.add(asset));
      }

      return Right(assets);
    } catch (e, st) {
      loge(
        'Batch media upload failed (unknown)',
        tag: _logTag,
        error: e,
        stackTrace: st,
      );
      return Left(Failure(e.toString()));
    }
  }

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

      // 1) Compress if needed
      final compressedFile = await MediaCompressor.compressImageIfNeeded(file);

      // 2) Build Cloudinary path (folder + public_id)
      final folder = _buildFolder(userId, scope, scopeId);
      final publicId = _buildPublicId(userId, scope, scopeId);

      logi(
        'Uploading media: user=$userId scope=$scope scopeId=$scopeId '
        'folder=$folder publicId=$publicId',
        tag: _logTag,
      );

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
      loge('Media upload failed (AppException)', tag: _logTag, error: error);
      return Left(Failure(error.message));
    } catch (error, stackTrace) {
      loge(
        'Media upload failed (unknown)',
        tag: _logTag,
        error: error,
        stackTrace: stackTrace,
      );
      return Left(Failure(error.toString()));
    }
  }

  Future<List<T>> _runWithConcurrency<T>({
    required List<Future<T> Function()> tasks,
    int concurrency = 3,
  }) async {
    if (concurrency <= 0) concurrency = 1;

    final results = <T>[];
    var index = 0;

    while (index < tasks.length) {
      final end = (index + concurrency > tasks.length)
          ? tasks.length
          : index + concurrency;

      final chunk = tasks.sublist(index, end);

      // Jalankan chunk ini barengan
      final chunkResults = await Future.wait(chunk.map((fn) => fn()));
      results.addAll(chunkResults);

      index = end;
    }

    return results;
  }

  String _buildFolder(String userId, String scope, String scopeId) {
    return 'velora/users/$userId/$scope/$scopeId';
  }

  String _buildPublicId(String userId, String scope, String scopeId) {
    final uuid = _uuid.v4();
    return 'velora/users/$userId/$scope/$scopeId/$uuid';
  }
}

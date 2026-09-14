import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/media/domain/entities/media_asset_entity.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';

/// Use case for uploading media assets to cloud storage
class UploadMediaAssetUseCase {
  const UploadMediaAssetUseCase({required this.repository});

  final MediaRepository repository;

  /// Upload media files for a post
  Future<Either<Failure, List<MediaAsset>>> forPost({
    required List<File> files,
    required String userId,
    required String postId,
  }) {
    return repository.uploadImagesForPost(
      files: files,
      userId: userId,
      postId: postId,
    );
  }

  /// Upload media files for a campaign
  Future<Either<Failure, List<MediaAsset>>> forCampaign({
    required List<File> files,
    required String userId,
    required String campaignId,
  }) {
    return repository.uploadImagesForCampaign(
      files: files,
      userId: userId,
      campaignId: campaignId,
    );
  }

  Future<Either<Failure, List<MediaAsset>>> imagesForChat({
    required List<File> files,
    required String userId,
    required String conversationId,
  }) {
    return repository.uploadImagesForChat(
      files: files,
      userId: userId,
      conversationId: conversationId,
    );
  }

  Future<Either<Failure, MediaAsset>> videoForChat({
    required File file,
    required String userId,
    required String conversationId,
  }) {
    return repository.uploadVideoForChat(
      file: file,
      userId: userId,
      conversationId: conversationId,
    );
  }

  Future<Either<Failure, List<MediaAsset>>> documentsForChat({
    required List<File> files,
    required String userId,
    required String conversationId,
  }) {
    return repository.uploadDocumentsForChat(
      files: files,
      userId: userId,
      conversationId: conversationId,
    );
  }

  Future<Either<Failure, MediaAsset>> audioForChat({
    required File file,
    required String userId,
    required String conversationId,
  }) {
    return repository.uploadAudioForChat(
      file: file,
      userId: userId,
      conversationId: conversationId,
    );
  }
}

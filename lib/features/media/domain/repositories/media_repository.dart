import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/media/domain/entities/media_asset_entity.dart';

abstract class MediaRepository {
  Future<Either<Failure, List<MediaAsset>>> uploadImagesForPost({
    required List<File> files,
    required String userId,
    required String postId,
  });

  Future<Either<Failure, List<MediaAsset>>> uploadImagesForCampaign({
    required List<File> files,
    required String userId,
    required String campaignId,
  });

  /// Upload images for chat messages
  Future<Either<Failure, List<MediaAsset>>> uploadImagesForChat({
    required List<File> files,
    required String userId,
    required String conversationId,
  });

  /// Upload video for chat message
  Future<Either<Failure, MediaAsset>> uploadVideoForChat({
    required File file,
    required String userId,
    required String conversationId,
  });

  /// Upload document for chat message
  Future<Either<Failure, MediaAsset>> uploadDocumentForChat({
    required File file,
    required String userId,
    required String conversationId,
  });

  /// Upload multiple documents for chat
  Future<Either<Failure, List<MediaAsset>>> uploadDocumentsForChat({
    required List<File> files,
    required String userId,
    required String conversationId,
  });

  /// Upload audio for chat message (voice message or audio file)
  Future<Either<Failure, MediaAsset>> uploadAudioForChat({
    required File file,
    required String userId,
    required String conversationId,
  });
}

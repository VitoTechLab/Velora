import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/media/domain/entities/media_asset.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';

class UploadMediaAsset {
  UploadMediaAsset(this.repository);
  final MediaRepository repository;

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
}

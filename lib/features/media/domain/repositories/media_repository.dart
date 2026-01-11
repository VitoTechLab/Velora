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
}

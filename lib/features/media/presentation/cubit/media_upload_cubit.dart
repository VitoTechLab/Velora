import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/media/domain/entities/media_asset.dart';
import 'package:velora/features/media/domain/usecases/upload_media_asset.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_state.dart';

class MediaUploadCubit extends Cubit<MediaUploadState> {
  MediaUploadCubit(this._uploadMediaAsset)
    : super(const MediaUploadState.initial());

  final UploadMediaAsset _uploadMediaAsset;

  Future<void> uploadForPost({
    required List<File> files,
    required String userId,
    required String postId,
  }) async {
    emit(const MediaUploadState.uploading());

    final result = await _uploadMediaAsset.forPost(
      files: files,
      userId: userId,
      postId: postId,
    );

    _handleResult(result);
  }

  Future<void> uploadForCampaign({
    required List<File> files,
    required String userId,
    required String campaignId,
  }) async {
    emit(const MediaUploadState.uploading());

    final result = await _uploadMediaAsset.forCampaign(
      files: files,
      userId: userId,
      campaignId: campaignId,
    );

    _handleResult(result);
  }

  void _handleResult(Either<Failure, List<MediaAsset>> result) {
    result.fold(
      (failure) => emit(MediaUploadState.failure(failure.message)),
      (assets) => emit(MediaUploadState.success(assets)),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/media/domain/usecases/upload_media_asset_usecase.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_event.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_state.dart';

/// BLoC for handling media upload operations
class MediaUploadBloc extends Bloc<MediaUploadEvent, MediaUploadState> {
  MediaUploadBloc({required this.uploadMediaAsset})
      : super(const MediaUploadState.initial()) {
    on<UploadForPostEvent>(_onUploadForPost);
    on<UploadForCampaignEvent>(_onUploadForCampaign);
  }

  final UploadMediaAssetUseCase uploadMediaAsset;

  static const _logTag = 'MediaUploadBloc';

  /// Upload media files for a post
  Future<void> _onUploadForPost(
    UploadForPostEvent event,
    Emitter<MediaUploadState> emit,
  ) async {
    emit(const MediaUploadState.uploading());

    logi(
      'Uploading ${event.files.length} files for post ${event.postId}',
      tag: _logTag,
    );

    final result = await uploadMediaAsset.forPost(
      files: event.files,
      userId: event.userId,
      postId: event.postId,
    );

    result.fold(
      (failure) {
        loge('Upload failed for post', error: failure.message, tag: _logTag);
        emit(MediaUploadState.failure(failure.message));
      },
      (assets) {
        logi('Successfully uploaded ${assets.length} assets', tag: _logTag);
        emit(MediaUploadState.success(assets));
      },
    );
  }

  /// Upload media files for a campaign
  Future<void> _onUploadForCampaign(
    UploadForCampaignEvent event,
    Emitter<MediaUploadState> emit,
  ) async {
    emit(const MediaUploadState.uploading());

    logi(
      'Uploading ${event.files.length} files for campaign ${event.campaignId}',
      tag: _logTag,
    );

    final result = await uploadMediaAsset.forCampaign(
      files: event.files,
      userId: event.userId,
      campaignId: event.campaignId,
    );

    result.fold(
      (failure) {
        loge(
          'Upload failed for campaign',
          error: failure.message,
          tag: _logTag,
        );
        emit(MediaUploadState.failure(failure.message));
      },
      (assets) {
        logi('Successfully uploaded ${assets.length} assets', tag: _logTag);
        emit(MediaUploadState.success(assets));
      },
    );
  }
}

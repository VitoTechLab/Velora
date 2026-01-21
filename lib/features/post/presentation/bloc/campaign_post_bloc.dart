
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/usecases/create_campaign_usecase.dart';
import 'package:velora/features/media/domain/usecases/upload_media_asset_usecase.dart';

import 'campaign_post_event.dart';
import 'campaign_post_state.dart';

class CampaignPostBloc extends Bloc<CampaignPostEvent, CampaignPostState> {
  CampaignPostBloc({
    required CreateCampaignUsecase createCampaignUsecase,
    required UploadMediaAssetUseCase uploadMediaAssetUseCase,
  })  : _createCampaignUsecase = createCampaignUsecase,
        _uploadMediaAssetUseCase = uploadMediaAssetUseCase,
        super(const CampaignPostState()) {
    on<SubmitCampaignPostEvent>(_onSubmitCampaign);
    on<ClearCampaignPostTransientEvent>((event, emit) {
      emit(state.copyWith(errorMessage: null, message: null));
    });
  }

  final CreateCampaignUsecase _createCampaignUsecase;
  final UploadMediaAssetUseCase _uploadMediaAssetUseCase;

  static const _logTag = 'CampaignPostBloc';

  Future<void> _onSubmitCampaign(
    SubmitCampaignPostEvent event,
    Emitter<CampaignPostState> emit,
  ) async {
    final userId = event.userId.trim();
    if (userId.isEmpty) {
      emit(state.copyWith(errorMessage: 'User id is required'));
      return;
    }

    final title = event.title.trim();
    final description = event.description.trim();

    if (title.isEmpty || description.isEmpty) {
      emit(state.copyWith(errorMessage: 'Title and description are required'));
      return;
    }

    if (event.targetAmount <= 0) {
      emit(state.copyWith(errorMessage: 'Target amount must be greater than 0'));
      return;
    }

    emit(
      state.copyWith(
        isSubmitting: true,
        errorMessage: null,
        message: null,
        createdCampaign: null,
      ),
    );

    String? coverImageUrl;

    // If media files are provided, upload them to Cloudinary first
    if (event.mediaFiles.isNotEmpty) {
      final campaignScopeId = DateTime.now().millisecondsSinceEpoch.toString();

      final uploadResult = await _uploadMediaAssetUseCase.forCampaign(
        files: event.mediaFiles,
        userId: userId,
        campaignId: campaignScopeId,
      );

      final uploadFailure = uploadResult.fold((l) => l, (_) => null);
      if (uploadFailure != null) {
        loge('Upload images for campaign failed: ${uploadFailure.message}',
            tag: _logTag);
        emit(
          state.copyWith(
            isSubmitting: false,
            errorMessage: uploadFailure.message,
          ),
        );
        return;
      }

      final assets = uploadResult.getOrElse(() => const []);
      if (assets.isNotEmpty) {
        coverImageUrl = assets.first.secureUrl;
      }
    }

    final now = DateTime.now();
    final campaign = CampaignEntity(
      id: '',
      userId: userId,
      categoryId: event.categoryId,
      title: title,
      description: description,
      coverImageUrl: coverImageUrl,
      targetAmount: event.targetAmount,
      amountRaised: 0,
      currentBalance: 0,
      donorCount: 0,
      status: CampaignStatus.active,
      isVerified: false,
      locationCity:
          event.locationCity != null && event.locationCity!.trim().isNotEmpty
              ? event.locationCity!.trim()
              : null,
      endDate: event.endDate,
      createdAt: now,
      updatedAt: null,
      completedAt: null,
      organizerUsername: null,
      organizerAvatarUrl: null,
      categoryName: null,
      categorySlug: null,
    );

    final createResult = await _createCampaignUsecase(campaign);

    createResult.fold(
      (failure) {
        loge('Create campaign failed: ${failure.message}', tag: _logTag);
        emit(
          state.copyWith(
            isSubmitting: false,
            errorMessage: failure.message,
          ),
        );
      },
      (created) {
        logi('Campaign created id=${created.id}', tag: _logTag);
        emit(
          state.copyWith(
            isSubmitting: false,
            createdCampaign: created,
            message: 'Campaign created',
          ),
        );
      },
    );
  }
}

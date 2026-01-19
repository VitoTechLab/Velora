import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';

part 'campaign_post_state.freezed.dart';

@freezed
abstract class CampaignPostState with _$CampaignPostState {
  const factory CampaignPostState({
    CampaignEntity? createdCampaign,
    @Default(false) bool isSubmitting,
    String? errorMessage,
    String? message,
  }) = _CampaignPostState;
}

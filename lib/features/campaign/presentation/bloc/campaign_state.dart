import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/campaign_category_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_document_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_milestone_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_fund_breakdown_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_proof_item_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';

part 'campaign_state.freezed.dart';

@freezed
abstract class CampaignState with _$CampaignState {
  const factory CampaignState({
    // Campaign list
    @Default(<CampaignEntity>[]) List<CampaignEntity> campaigns,
    @Default(false) bool isLoadingCampaigns,
    @Default(false) bool isRefreshingCampaigns,
    String? errorCampaigns,

    // Single campaign detail
    CampaignEntity? selectedCampaign,
    @Default(false) bool isLoadingCampaignDetail,
    String? errorCampaignDetail,

    // Categories
    @Default(<CampaignCategoryEntity>[])
    List<CampaignCategoryEntity> categories,
    @Default(false) bool isLoadingCategories,
    String? errorCategories,

    // Search results
    @Default(<CampaignEntity>[]) List<CampaignEntity> searchResults,
    @Default(false) bool isSearching,
    String? errorSearch,

    // Donations for current campaign
    @Default(<DonationEntity>[]) List<DonationEntity> donations,
    @Default(false) bool isLoadingDonations,
    String? errorDonations,

    // Comments for current campaign
    @Default(<CampaignCommentEntity>[]) List<CampaignCommentEntity> comments,
    @Default(false) bool isLoadingComments,
    String? errorComments,

    // Withdrawals for current campaign
    @Default(<WithdrawalEntity>[]) List<WithdrawalEntity> withdrawals,
    @Default(false) bool isLoadingWithdrawals,
    String? errorWithdrawals,

    // Transparency Data
    @Default(<CampaignDocumentEntity>[]) List<CampaignDocumentEntity> campaignDocuments,
    @Default(false) bool isLoadingDocuments,
    String? errorDocuments,

    @Default(<CampaignMilestoneEntity>[]) List<CampaignMilestoneEntity> campaignMilestones,
    @Default(false) bool isLoadingMilestones,
    String? errorMilestones,

    @Default(<CampaignFundBreakdownEntity>[]) List<CampaignFundBreakdownEntity> campaignFundBreakdown,
    @Default(false) bool isLoadingFundBreakdown,
    String? errorFundBreakdown,

    @Default(<CampaignProofItemEntity>[]) List<CampaignProofItemEntity> campaignProofItems,
    @Default(false) bool isLoadingProofItems,
    String? errorProofItems,

    // Campaign Updates
    @Default(<CampaignUpdateEntity>[]) List<CampaignUpdateEntity> campaignUpdates,
    @Default(false) bool isLoadingUpdates,
    String? errorUpdates,

    // User's own campaigns (for My Campaigns screen)
    @Default(<CampaignEntity>[]) List<CampaignEntity> userCampaigns,
    @Default(false) bool isLoadingUserCampaigns,
    String? errorUserCampaigns,

    // User's donations (for My Donations screen)
    @Default(<DonationEntity>[]) List<DonationEntity> userDonations,
    @Default(false) bool isLoadingUserDonations,
    String? errorUserDonations,

    // Mutating operations
    @Default(false) bool isCreatingCampaign,
    String? errorCreateCampaign,
    @Default(false) bool isUpdatingCampaign,
    String? errorUpdateCampaign,
    @Default(false) bool isDeletingCampaign,
    String? errorDeleteCampaign,
    @Default(false) bool isPerformingDonation,
    String? errorDonation,
    @Default(false) bool isRequestingWithdrawal,
    String? errorWithdrawal,
    @Default(false) bool isUpdatingBankDetails,
    String? errorBankDetails,

    // Generic UI message
    String? message,
  }) = _CampaignState;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';

part 'campaign_event.freezed.dart';

@freezed
class CampaignEvent with _$CampaignEvent {
  /// Load list of campaigns (homepage / discovery)
  const factory CampaignEvent.loadCampaigns({
    String? categoryId,
    @Default(20) int limit,
  }) = LoadCampaignsEvent;

  /// Refresh campaigns list
  const factory CampaignEvent.refreshCampaigns({
    String? categoryId,
    @Default(20) int limit,
  }) = RefreshCampaignsEvent;

  /// Search campaigns by query
  const factory CampaignEvent.searchCampaigns({
    required String query,
    String? categoryId,
    @Default(20) int limit,
  }) = SearchCampaignsEvent;

  /// Get single campaign detail
  const factory CampaignEvent.getCampaignDetail({
    required String campaignId,
  }) = GetCampaignDetailEvent;

  /// Create new campaign
  const factory CampaignEvent.createCampaign({
    required CampaignEntity campaign,
  }) = CreateCampaignEvent;

  /// Update existing campaign
  const factory CampaignEvent.updateCampaign({
    required CampaignEntity campaign,
  }) = UpdateCampaignEvent;

  /// Delete campaign
  const factory CampaignEvent.deleteCampaign({
    required String campaignId,
  }) = DeleteCampaignEvent;

  /// Update campaign status (active/completed/withdrawn/etc.)
  const factory CampaignEvent.updateCampaignStatus({
    required String campaignId,
    required String status,
  }) = UpdateCampaignStatusEvent;

  /// Load categories
  const factory CampaignEvent.loadCategories() = LoadCategoriesEvent;

  /// Load donations for current campaign
  const factory CampaignEvent.loadDonations({
    required String campaignId,
    @Default(50) int limit,
  }) = LoadDonationsEvent;

  /// Create a donation for a campaign
  const factory CampaignEvent.createDonation({
    required DonationEntity donation,
  }) = CreateDonationEvent;

  /// Load comments for campaign
  const factory CampaignEvent.loadComments({
    required String campaignId,
    @Default(false) bool includeReplies,
  }) = LoadCommentsEvent;

  /// Add comment (or reply)
  const factory CampaignEvent.addComment({
    required CampaignCommentEntity comment,
  }) = AddCommentEvent;

  /// Delete comment
  const factory CampaignEvent.deleteComment({
    required String campaignId,
    required String commentId,
  }) = DeleteCommentEvent;

  /// Load replies for a specific comment
  const factory CampaignEvent.loadCommentReplies({
    required String parentId,
  }) = LoadCommentRepliesEvent;

  /// Request withdrawal for a campaign
  const factory CampaignEvent.requestWithdrawal({
    required WithdrawalEntity withdrawal,
  }) = RequestWithdrawalEvent;

  /// Load withdrawals for campaign
  const factory CampaignEvent.loadWithdrawals({
    required String campaignId,
  }) = LoadWithdrawalsEvent;

  /// Clear transient messages/errors
  const factory CampaignEvent.clearTransient() = ClearCampaignTransientEvent;
}

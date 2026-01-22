import 'package:velora/features/campaign/data/models/campaign_category_model.dart';
import 'package:velora/features/campaign/data/models/campaign_comment_model.dart';
import 'package:velora/features/campaign/data/models/campaign_document_model.dart';
import 'package:velora/features/campaign/data/models/campaign_fund_breakdown_model.dart';
import 'package:velora/features/campaign/data/models/campaign_milestone_model.dart';
import 'package:velora/features/campaign/data/models/campaign_model.dart';
import 'package:velora/features/campaign/data/models/campaign_proof_item_model.dart';
import 'package:velora/features/campaign/data/models/campaign_update_model.dart';
import 'package:velora/features/campaign/data/models/donation_model.dart';
import 'package:velora/features/campaign/data/models/withdrawal_model.dart';

abstract class CampaignRemoteDataSource {
  // ============================================
  // CAMPAIGNS
  // ============================================
  Future<CampaignModel> createCampaign(CampaignModel model);
  Future<CampaignModel?> getCampaignById(String id);
  Future<List<CampaignModel>> getCampaignsByUser(String userId);
  Future<List<CampaignModel>> getAllCampaigns(
      {String? categoryId, int limit = 20});
  Future<List<CampaignModel>> searchCampaigns(String query,
      {String? categoryId, int limit = 10});
  Future<CampaignModel> updateCampaign(CampaignModel campaign);
  Future<void> deleteCampaign(String campaignId);
  Future<CampaignModel> updateCampaignStatus(String campaignId, String status);

  // ============================================
  // CATEGORIES
  // ============================================
  Future<List<CampaignCategoryModel>> getCategories();
  Future<CampaignCategoryModel?> getCategoryById(String id);
  Future<CampaignCategoryModel?> getCategoryBySlug(String slug);

  // ============================================
  // DONATIONS
  // ============================================
  Future<DonationModel> createDonation(DonationModel donation);
  Future<DonationModel?> getDonationById(String id);
  Future<List<DonationModel>> getDonationsByCampaign(String campaignId,
      {int limit = 50});
  Future<List<DonationModel>> getDonationsByUser(String userId,
      {int limit = 50});
  Future<DonationModel> updateDonationStatus(String donationId, String status,
      {String? paymentId});

  // ============================================
  // CAMPAIGN UPDATES
  // ============================================
  Future<CampaignUpdateModel> addCampaignUpdate(CampaignUpdateModel update);
  Future<List<CampaignUpdateModel>> getCampaignUpdates(String campaignId);
  Future<void> deleteCampaignUpdate(
      {required String campaignId, required String updateId});

  // ============================================
  // COMMENTS
  // ============================================
  Future<CampaignCommentModel> addComment(CampaignCommentModel comment);
  Future<List<CampaignCommentModel>> getCampaignComments(String campaignId,
      {bool includeReplies = false});
  Future<List<CampaignCommentModel>> getCommentReplies(String parentId);
  Future<void> deleteComment(
      {required String campaignId, required String commentId});

  // ============================================
  // WITHDRAWALS
  // ============================================
  Future<WithdrawalModel> requestWithdrawal(WithdrawalModel withdrawal);
  Future<List<WithdrawalModel>> getWithdrawalsByCampaign(String campaignId);
  Future<List<WithdrawalModel>> getWithdrawalsByUser(String userId);
  Future<WithdrawalModel?> getWithdrawalById(String id);

  // ============================================
  // TRANSPARENCY: DOCUMENTS
  // ============================================
  Future<List<CampaignDocumentModel>> getCampaignDocuments(String campaignId);

  // ============================================
  // TRANSPARENCY: MILESTONES
  // ============================================
  Future<List<CampaignMilestoneModel>> getCampaignMilestones(String campaignId);

  // ============================================
  // TRANSPARENCY: FUND BREAKDOWN
  // ============================================
  Future<List<CampaignFundBreakdownModel>> getCampaignFundBreakdown(
      String campaignId);

  // ============================================
  // TRANSPARENCY: PROOF ITEMS
  // ============================================
  Future<List<CampaignProofItemModel>> getCampaignProofItems(String campaignId);
}


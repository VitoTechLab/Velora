import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_category_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';

abstract class CampaignRepository {
  // ============================================
  // CAMPAIGNS
  // ============================================
  Future<Either<Failure, CampaignEntity>> createCampaign(
      CampaignEntity campaign);
  Future<Either<Failure, CampaignEntity?>> getCampaignById(String id);
  Future<Either<Failure, List<CampaignEntity>>> getCampaignsByUser(
      String userId);
  Future<Either<Failure, List<CampaignEntity>>> getAllCampaigns(
      {String? categoryId, int limit = 20});
  Future<Either<Failure, List<CampaignEntity>>> searchCampaigns(String query,
      {String? categoryId, int limit = 10});
  Future<Either<Failure, CampaignEntity>> updateCampaign(
      CampaignEntity campaign);
  Future<Either<Failure, void>> deleteCampaign(String campaignId);
  Future<Either<Failure, CampaignEntity>> updateCampaignStatus(
      String campaignId, String status);

  // ============================================
  // CATEGORIES
  // ============================================
  Future<Either<Failure, List<CampaignCategoryEntity>>> getCategories();
  Future<Either<Failure, CampaignCategoryEntity?>> getCategoryById(String id);
  Future<Either<Failure, CampaignCategoryEntity?>> getCategoryBySlug(
      String slug);

  // ============================================
  // DONATIONS
  // ============================================
  Future<Either<Failure, DonationEntity>> createDonation(
      DonationEntity donation);
  Future<Either<Failure, DonationEntity?>> getDonationById(String id);
  Future<Either<Failure, List<DonationEntity>>> getDonationsByCampaign(
      String campaignId,
      {int limit = 50});
  Future<Either<Failure, List<DonationEntity>>> getDonationsByUser(
      String userId,
      {int limit = 50});
  Future<Either<Failure, DonationEntity>> updateDonationStatus(
      String donationId, String status,
      {String? paymentId});

  // ============================================
  // CAMPAIGN UPDATES
  // ============================================
  Future<Either<Failure, CampaignUpdateEntity>> addCampaignUpdate(
      CampaignUpdateEntity update);
  Future<Either<Failure, List<CampaignUpdateEntity>>> getCampaignUpdates(
      String campaignId);
  Future<Either<Failure, void>> deleteCampaignUpdate(
      {required String campaignId, required String updateId});

  // ============================================
  // COMMENTS
  // ============================================
  Future<Either<Failure, CampaignCommentEntity>> addComment(
      CampaignCommentEntity comment);
  Future<Either<Failure, List<CampaignCommentEntity>>> getComments(
      String campaignId,
      {bool includeReplies = false});
  Future<Either<Failure, List<CampaignCommentEntity>>> getCommentReplies(
      String parentId);
  Future<Either<Failure, void>> deleteComment(
      {required String campaignId, required String commentId});

  // ============================================
  // WITHDRAWALS
  // ============================================
  Future<Either<Failure, WithdrawalEntity>> requestWithdrawal(
      WithdrawalEntity withdrawal);
  Future<Either<Failure, List<WithdrawalEntity>>> getWithdrawalsByCampaign(
      String campaignId);
  Future<Either<Failure, List<WithdrawalEntity>>> getWithdrawalsByUser(
      String userId);
  Future<Either<Failure, WithdrawalEntity?>> getWithdrawalById(String id);
}

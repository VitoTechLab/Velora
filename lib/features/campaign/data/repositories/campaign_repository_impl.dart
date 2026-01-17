import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/campaign_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/campaign/data/datasources/campaign_remote_datasource.dart';
import 'package:velora/features/campaign/data/models/campaign_category_model.dart';
import 'package:velora/features/campaign/data/models/campaign_comment_model.dart';
import 'package:velora/features/campaign/data/models/campaign_model.dart';
import 'package:velora/features/campaign/data/models/campaign_update_model.dart';
import 'package:velora/features/campaign/data/models/donation_model.dart';
import 'package:velora/features/campaign/data/models/withdrawal_model.dart';
import 'package:velora/features/campaign/domain/entities/campaign_category_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class CampaignRepositoryImpl implements CampaignRepository {
  CampaignRepositoryImpl({required this.remoteDataSource});

  final CampaignRemoteDataSource remoteDataSource;
  static const _logTag = 'CampaignRepository';

  // ============================================
  // CAMPAIGNS
  // ============================================
  @override
  Future<Either<Failure, CampaignEntity>> createCampaign(
      CampaignEntity campaign) async {
    try {
      logi('createCampaign', tag: _logTag);
      final model = CampaignModel.fromEntity(campaign);
      final result = await remoteDataSource.createCampaign(model);
      return Right(result.toEntity());
    } catch (e) {
      loge('createCampaign error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity?>> getCampaignById(String id) async {
    try {
      logi('getCampaignById: $id', tag: _logTag);
      final model = await remoteDataSource.getCampaignById(id);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getCampaignById error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignEntity>>> getCampaignsByUser(
      String userId) async {
    try {
      logi('getCampaignsByUser: $userId', tag: _logTag);
      final models = await remoteDataSource.getCampaignsByUser(userId);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getCampaignsByUser error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignEntity>>> getAllCampaigns(
      {String? categoryId, int limit = 20}) async {
    try {
      logi('getAllCampaigns', tag: _logTag);
      final models = await remoteDataSource.getAllCampaigns(
          categoryId: categoryId, limit: limit);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getAllCampaigns error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignEntity>>> searchCampaigns(String query,
      {String? categoryId, int limit = 10}) async {
    try {
      logi('searchCampaigns: $query', tag: _logTag);
      final models = await remoteDataSource.searchCampaigns(query,
          categoryId: categoryId, limit: limit);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('searchCampaigns error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity>> updateCampaign(
      CampaignEntity campaign) async {
    try {
      logi('updateCampaign: ${campaign.id}', tag: _logTag);
      final model = CampaignModel.fromEntity(campaign);
      final result = await remoteDataSource.updateCampaign(model);
      return Right(result.toEntity());
    } catch (e) {
      loge('updateCampaign error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCampaign(String campaignId) async {
    try {
      logi('deleteCampaign: $campaignId', tag: _logTag);
      await remoteDataSource.deleteCampaign(campaignId);
      return const Right(null);
    } catch (e) {
      loge('deleteCampaign error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity>> updateCampaignStatus(
      String campaignId, String status) async {
    try {
      logi('updateCampaignStatus: $campaignId -> $status', tag: _logTag);
      final result =
          await remoteDataSource.updateCampaignStatus(campaignId, status);
      return Right(result.toEntity());
    } catch (e) {
      loge('updateCampaignStatus error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  // ============================================
  // CATEGORIES
  // ============================================
  @override
  Future<Either<Failure, List<CampaignCategoryEntity>>> getCategories() async {
    try {
      logi('getCategories', tag: _logTag);
      final models = await remoteDataSource.getCategories();
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getCategories error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignCategoryEntity?>> getCategoryById(
      String id) async {
    try {
      logi('getCategoryById: $id', tag: _logTag);
      final model = await remoteDataSource.getCategoryById(id);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getCategoryById error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignCategoryEntity?>> getCategoryBySlug(
      String slug) async {
    try {
      logi('getCategoryBySlug: $slug', tag: _logTag);
      final model = await remoteDataSource.getCategoryBySlug(slug);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getCategoryBySlug error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  // ============================================
  // DONATIONS
  // ============================================
  @override
  Future<Either<Failure, DonationEntity>> createDonation(
      DonationEntity donation) async {
    try {
      logi('createDonation', tag: _logTag);
      final model = DonationModel.fromEntity(donation);
      final result = await remoteDataSource.createDonation(model);
      return Right(result.toEntity());
    } catch (e) {
      loge('createDonation error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, DonationEntity?>> getDonationById(String id) async {
    try {
      logi('getDonationById: $id', tag: _logTag);
      final model = await remoteDataSource.getDonationById(id);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getDonationById error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<DonationEntity>>> getDonationsByCampaign(
      String campaignId,
      {int limit = 50}) async {
    try {
      logi('getDonationsByCampaign: $campaignId', tag: _logTag);
      final models = await remoteDataSource.getDonationsByCampaign(campaignId,
          limit: limit);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getDonationsByCampaign error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<DonationEntity>>> getDonationsByUser(
      String userId,
      {int limit = 50}) async {
    try {
      logi('getDonationsByUser: $userId', tag: _logTag);
      final models =
          await remoteDataSource.getDonationsByUser(userId, limit: limit);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getDonationsByUser error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, DonationEntity>> updateDonationStatus(
      String donationId, String status,
      {String? paymentId}) async {
    try {
      logi('updateDonationStatus: $donationId -> $status', tag: _logTag);
      final result = await remoteDataSource
          .updateDonationStatus(donationId, status, paymentId: paymentId);
      return Right(result.toEntity());
    } catch (e) {
      loge('updateDonationStatus error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  // ============================================
  // CAMPAIGN UPDATES
  // ============================================
  @override
  Future<Either<Failure, CampaignUpdateEntity>> addCampaignUpdate(
      CampaignUpdateEntity update) async {
    try {
      logi('addCampaignUpdate', tag: _logTag);
      final model = CampaignUpdateModel.fromEntity(update);
      final result = await remoteDataSource.addCampaignUpdate(model);
      return Right(result.toEntity());
    } catch (e) {
      loge('addCampaignUpdate error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignUpdateEntity>>> getCampaignUpdates(
      String campaignId) async {
    try {
      logi('getCampaignUpdates: $campaignId', tag: _logTag);
      final models = await remoteDataSource.getCampaignUpdates(campaignId);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getCampaignUpdates error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCampaignUpdate(
      {required String campaignId, required String updateId}) async {
    try {
      logi('deleteCampaignUpdate: $updateId', tag: _logTag);
      await remoteDataSource.deleteCampaignUpdate(
          campaignId: campaignId, updateId: updateId);
      return const Right(null);
    } catch (e) {
      loge('deleteCampaignUpdate error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  // ============================================
  // COMMENTS
  // ============================================
  @override
  Future<Either<Failure, CampaignCommentEntity>> addComment(
      CampaignCommentEntity comment) async {
    try {
      logi('addComment', tag: _logTag);
      final model = CampaignCommentModel.fromEntity(comment);
      final result = await remoteDataSource.addComment(model);
      return Right(result.toEntity());
    } catch (e) {
      loge('addComment error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignCommentEntity>>> getComments(
      String campaignId,
      {bool includeReplies = false}) async {
    try {
      logi('getComments: $campaignId', tag: _logTag);
      final models = await remoteDataSource.getCampaignComments(campaignId,
          includeReplies: includeReplies);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getComments error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignCommentEntity>>> getCommentReplies(
      String parentId) async {
    try {
      logi('getCommentReplies: $parentId', tag: _logTag);
      final models = await remoteDataSource.getCommentReplies(parentId);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getCommentReplies error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteComment(
      {required String campaignId, required String commentId}) async {
    try {
      logi('deleteComment: $commentId', tag: _logTag);
      await remoteDataSource.deleteComment(
          campaignId: campaignId, commentId: commentId);
      return const Right(null);
    } catch (e) {
      loge('deleteComment error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  // ============================================
  // WITHDRAWALS
  // ============================================
  @override
  Future<Either<Failure, WithdrawalEntity>> requestWithdrawal(
      WithdrawalEntity withdrawal) async {
    try {
      logi('requestWithdrawal', tag: _logTag);
      final model = WithdrawalModel.fromEntity(withdrawal);
      final result = await remoteDataSource.requestWithdrawal(model);
      return Right(result.toEntity());
    } catch (e) {
      loge('requestWithdrawal error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<WithdrawalEntity>>> getWithdrawalsByCampaign(
      String campaignId) async {
    try {
      logi('getWithdrawalsByCampaign: $campaignId', tag: _logTag);
      final models =
          await remoteDataSource.getWithdrawalsByCampaign(campaignId);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getWithdrawalsByCampaign error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<WithdrawalEntity>>> getWithdrawalsByUser(
      String userId) async {
    try {
      logi('getWithdrawalsByUser: $userId', tag: _logTag);
      final models = await remoteDataSource.getWithdrawalsByUser(userId);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getWithdrawalsByUser error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WithdrawalEntity?>> getWithdrawalById(
      String id) async {
    try {
      logi('getWithdrawalById: $id', tag: _logTag);
      final model = await remoteDataSource.getWithdrawalById(id);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getWithdrawalById error', tag: _logTag, error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }
}

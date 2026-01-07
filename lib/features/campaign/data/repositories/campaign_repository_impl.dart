import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/campaign_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/campaign/data/datasources/campaign_remote_datasource.dart';
import 'package:velora/features/campaign/data/models/campaign_comment_model.dart';
import 'package:velora/features/campaign/data/models/campaign_model.dart';
import 'package:velora/features/campaign/data/models/campaign_update_model.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class CampaignRepositoryImpl implements CampaignRepository {
  final CampaignRemoteDataSource remoteDataSource;

  CampaignRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, CampaignEntity>> createCampaign(
    CampaignEntity campaign,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] createCampaign');
      final model = CampaignModel.fromEntity(campaign);
      final result = await remoteDataSource.createCampaign(model);
      return Right(result.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] createCampaign', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity?>> getCampaignById(String id) async {
    try {
      logi('[CAMPAIGN REPOSITORY] getCampaignById - ID: $id');
      final model = await remoteDataSource.getCampaignById(id);
      return Right(model?.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] getCampaignById', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity?>> getCampaignByPostId(
    String postId,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] getCampaignByPostId - PostID: $postId');
      final model = await remoteDataSource.getCampaignByPostId(postId);
      return Right(model?.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] getCampaignByPostId', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignEntity>>> getCampaignsByUser(
    String userId,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] getCampaignsByUser - UserID: $userId');
      final models = await remoteDataSource.getCampaignsByUser(userId);
      return Right(models.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] getCampaignsByUser', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignEntity>>> getAllCampaigns() async {
    try {
      logi('[CAMPAIGN REPOSITORY] getAllCampaigns');
      final models = await remoteDataSource.getAllCampaigns();
      return Right(models.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] getAllCampaigns', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity>> updateCampaign(
    CampaignEntity campaign,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] updateCampaign - ID: ${campaign.id}');
      final model = CampaignModel.fromEntity(campaign);
      final updated = await remoteDataSource.updateCampaign(model);
      return Right(updated.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] updateCampaign', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity>> markCampaignComplete(
    String campaignId,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] markCampaignComplete - ID: $campaignId');
      final updated = await remoteDataSource.markCampaignComplete(campaignId);
      return Right(updated.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] markCampaignComplete', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCampaign(String campaignId) async {
    try {
      logi('[CAMPAIGN REPOSITORY] deleteCampaign - ID: $campaignId');
      await remoteDataSource.deleteCampaign(campaignId);
      return const Right(null);
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] deleteCampaign', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignEntity>> addDonorToCampaign({
    required String campaignId,
    required String donorId,
    required double amount,
  }) async {
    try {
      logi('[CAMPAIGN REPOSITORY] addDonorToCampaign - ID: $campaignId');
      final updated = await remoteDataSource.addDonorToCampaign(
        campaignId: campaignId,
        donorId: donorId,
        amount: amount,
      );
      return Right(updated.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] addDonorToCampaign', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignUpdateEntity>> addCampaignUpdate(
    CampaignUpdateEntity update,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] addCampaignUpdate');
      final model = CampaignUpdateModel.fromEntity(update);
      final created = await remoteDataSource.addCampaignUpdate(model);
      return Right(created.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] addCampaignUpdate', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignUpdateEntity>>> getCampaignUpdates(
    String campaignId,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] getCampaignUpdates - ID: $campaignId');
      final models = await remoteDataSource.getCampaignUpdates(campaignId);
      return Right(models.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] getCampaignUpdates', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCampaignUpdate({
    required String campaignId,
    required String updateId,
  }) async {
    try {
      logi('[CAMPAIGN REPOSITORY] deleteCampaignUpdate - UpdateID: $updateId');
      await remoteDataSource.deleteCampaignUpdate(
        campaignId: campaignId,
        updateId: updateId,
      );
      return const Right(null);
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] deleteCampaignUpdate', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CampaignCommentEntity>> addComment(
    CampaignCommentEntity comment,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] addComment');
      final model = CampaignCommentModel.fromEntity(comment);
      final created = await remoteDataSource.addComment(model);
      return Right(created.toEntity());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] addComment', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignCommentEntity>>> getComments(
    String campaignId,
  ) async {
    try {
      logi('[CAMPAIGN REPOSITORY] getComments - ID: $campaignId');
      final models = await remoteDataSource.getCampaignComments(campaignId);
      return Right(models.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] getComments', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteComment({
    required String campaignId,
    required String commentId,
  }) async {
    try {
      logi('[CAMPAIGN REPOSITORY] deleteComment - CommentID: $commentId');
      await remoteDataSource.deleteComment(
        campaignId: campaignId,
        commentId: commentId,
      );
      return const Right(null);
    } catch (e) {
      loge('[CAMPAIGN REPOSITORY ERROR] deleteComment', error: e);
      return Left(CampaignFailure.fromException(e));
    }
  }
}

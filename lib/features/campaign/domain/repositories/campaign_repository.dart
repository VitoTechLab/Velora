import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';

abstract class CampaignRepository {
  Future<Either<Failure, CampaignEntity>> createCampaign(
    CampaignEntity campaign,
  );

  Future<Either<Failure, CampaignEntity?>> getCampaignById(String id);

  Future<Either<Failure, CampaignEntity?>> getCampaignByPostId(String postId);

  Future<Either<Failure, List<CampaignEntity>>> getCampaignsByUser(
    String userId,
  );

  Future<Either<Failure, List<CampaignEntity>>> getAllCampaigns();

  Future<Either<Failure, CampaignEntity>> updateCampaign(
    CampaignEntity campaign,
  );

  Future<Either<Failure, CampaignEntity>> markCampaignComplete(
    String campaignId,
  );

  Future<Either<Failure, void>> deleteCampaign(String campaignId);

  Future<Either<Failure, CampaignEntity>> addDonorToCampaign({
    required String campaignId,
    required String donorId,
    required double amount,
  });

  Future<Either<Failure, CampaignUpdateEntity>> addCampaignUpdate(
    CampaignUpdateEntity update,
  );

  Future<Either<Failure, List<CampaignUpdateEntity>>> getCampaignUpdates(
    String campaignId,
  );

  Future<Either<Failure, void>> deleteCampaignUpdate({
    required String campaignId,
    required String updateId,
  });

  Future<Either<Failure, CampaignCommentEntity>> addComment(
    CampaignCommentEntity comment,
  );

  Future<Either<Failure, List<CampaignCommentEntity>>> getComments(
    String campaignId,
  );

  Future<Either<Failure, void>> deleteComment({
    required String campaignId,
    required String commentId,
  });
}

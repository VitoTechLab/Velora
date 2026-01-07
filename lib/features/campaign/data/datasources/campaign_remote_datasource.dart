import 'package:velora/features/campaign/data/models/campaign_comment_model.dart';
import 'package:velora/features/campaign/data/models/campaign_model.dart';
import 'package:velora/features/campaign/data/models/campaign_update_model.dart';

abstract class CampaignRemoteDataSource {
  Future<CampaignModel> createCampaign(CampaignModel model);
  Future<CampaignModel?> getCampaignById(String id);
  Future<CampaignModel?> getCampaignByPostId(String postId);
  Future<List<CampaignModel>> getCampaignsByUser(String userId);
  Future<List<CampaignModel>> getAllCampaigns();
  Future<CampaignModel> updateCampaign(CampaignModel campaign);
  Future<void> deleteCampaign(String campaignId);
  Future<CampaignModel> markCampaignComplete(String campaignId);
  Future<CampaignModel> addDonorToCampaign({
    required String campaignId,
    required String donorId,
    required double amount,
  });

  Future<CampaignUpdateModel> addCampaignUpdate(CampaignUpdateModel update);
  Future<List<CampaignUpdateModel>> getCampaignUpdates(String campaignId);
  Future<void> deleteCampaignUpdate({
    required String campaignId,
    required String updateId,
  });

  Future<CampaignCommentModel> addComment(CampaignCommentModel comment);
  Future<List<CampaignCommentModel>> getCampaignComments(String campaignId);
  Future<void> deleteComment({
    required String campaignId,
    required String commentId,
  });
}

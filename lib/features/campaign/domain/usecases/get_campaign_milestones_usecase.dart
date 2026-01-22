import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_milestone_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCampaignMilestonesUsecase {
  const GetCampaignMilestonesUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignMilestoneEntity>>> call(String campaignId) {
    return repository.getCampaignMilestones(campaignId);
  }
}

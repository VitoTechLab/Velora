import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCampaignUpdatesUsecase {
  const GetCampaignUpdatesUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignUpdateEntity>>> call(
    String campaignId,
  ) {
    return repository.getCampaignUpdates(campaignId);
  }
}

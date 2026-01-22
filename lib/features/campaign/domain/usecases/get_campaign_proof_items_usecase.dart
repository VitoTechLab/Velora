import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_proof_item_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCampaignProofItemsUsecase {
  const GetCampaignProofItemsUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignProofItemEntity>>> call(String campaignId) {
    return repository.getCampaignProofItems(campaignId);
  }
}

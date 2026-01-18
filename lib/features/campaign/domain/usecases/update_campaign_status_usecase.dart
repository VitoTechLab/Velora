import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class UpdateCampaignStatusUsecase {
  const UpdateCampaignStatusUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, CampaignEntity>> call(
    String campaignId,
    String status,
  ) {
    return repository.updateCampaignStatus(campaignId, status);
  }
}

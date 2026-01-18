import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class DeleteCampaignUsecase {
  const DeleteCampaignUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, void>> call(String campaignId) {
    return repository.deleteCampaign(campaignId);
  }
}

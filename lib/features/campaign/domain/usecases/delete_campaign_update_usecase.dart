import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class DeleteCampaignUpdateUsecase {
  const DeleteCampaignUpdateUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, void>> call({
    required String campaignId,
    required String updateId,
  }) {
    return repository.deleteCampaignUpdate(
      campaignId: campaignId,
      updateId: updateId,
    );
  }
}

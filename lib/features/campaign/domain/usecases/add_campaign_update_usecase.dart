import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class AddCampaignUpdateUsecase {
  const AddCampaignUpdateUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, CampaignUpdateEntity>> call(
    CampaignUpdateEntity update,
  ) {
    return repository.addCampaignUpdate(update);
  }
}

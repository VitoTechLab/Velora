import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class CreateCampaignUsecase {
  const CreateCampaignUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, CampaignEntity>> call(CampaignEntity campaign) {
    return repository.createCampaign(campaign);
  }
}

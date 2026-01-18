import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetAllCampaignsUsecase {
  const GetAllCampaignsUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignEntity>>> call(
      {String? categoryId, int limit = 20}) {
    return repository.getAllCampaigns(categoryId: categoryId, limit: limit);
  }
}

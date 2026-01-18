import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_category_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCampaignCategoriesUsecase {
  const GetCampaignCategoriesUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignCategoryEntity>>> call() {
    return repository.getCategories();
  }
}

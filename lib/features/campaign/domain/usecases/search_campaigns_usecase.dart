import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class SearchCampaignsUsecase {
  const SearchCampaignsUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignEntity>>> call(
    String query, {
    String? categoryId,
    int limit = 10,
  }) {
    return repository.searchCampaigns(query,
        categoryId: categoryId, limit: limit);
  }
}

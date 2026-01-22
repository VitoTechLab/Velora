import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_fund_breakdown_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCampaignFundBreakdownUsecase {
  const GetCampaignFundBreakdownUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignFundBreakdownEntity>>> call(String campaignId) {
    return repository.getCampaignFundBreakdown(campaignId);
  }
}

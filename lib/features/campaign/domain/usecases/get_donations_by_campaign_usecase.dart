import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetDonationsByCampaignUsecase {
  const GetDonationsByCampaignUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<DonationEntity>>> call(
    String campaignId, {
    int limit = 50,
  }) {
    return repository.getDonationsByCampaign(campaignId, limit: limit);
  }
}

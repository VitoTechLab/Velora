import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetDonationByIdUsecase {
  const GetDonationByIdUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, DonationEntity?>> call(String id) {
    return repository.getDonationById(id);
  }
}

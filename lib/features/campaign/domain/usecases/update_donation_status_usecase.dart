import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class UpdateDonationStatusUsecase {
  const UpdateDonationStatusUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, DonationEntity>> call(
    String donationId,
    String status, {
    String? paymentId,
  }) {
    return repository.updateDonationStatus(
      donationId,
      status,
      paymentId: paymentId,
    );
  }
}

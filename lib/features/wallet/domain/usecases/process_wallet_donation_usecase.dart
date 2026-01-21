import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to process a donation from main wallet to campaign wallet
class ProcessWalletDonationUsecase {
  ProcessWalletDonationUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  /// Platform fee percentage (5%)
  static const double platformFeePercent = 5.0;

  Future<Either<Failure, WalletTransactionEntity>> call({
    required String fromWalletId,
    required String toCampaignId,
    required double amount,
    String? donationId,
  }) {
    return _repository.processDonation(
      fromWalletId: fromWalletId,
      toCampaignId: toCampaignId,
      amount: amount,
      platformFeePercent: platformFeePercent,
      donationId: donationId,
    );
  }
}

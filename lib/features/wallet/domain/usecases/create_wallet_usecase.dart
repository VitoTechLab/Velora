import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to create a wallet (main or campaign)
class CreateWalletUsecase {
  CreateWalletUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  Future<Either<Failure, WalletEntity>> call(WalletEntity wallet) {
    return _repository.createWallet(wallet);
  }

  /// Create a main wallet for a user
  Future<Either<Failure, WalletEntity>> createMainWallet(String userId) {
    final wallet = WalletEntity(
      id: '',
      userId: userId,
      type: WalletType.main,
      balance: 0,
      createdAt: DateTime.now(),
    );
    return _repository.createWallet(wallet);
  }

  /// Create a campaign wallet linked to a campaign
  Future<Either<Failure, WalletEntity>> createCampaignWallet({
    required String userId,
    required String campaignId,
  }) {
    final wallet = WalletEntity(
      id: '',
      userId: userId,
      type: WalletType.campaign,
      balance: 0,
      campaignId: campaignId,
      createdAt: DateTime.now(),
    );
    return _repository.createWallet(wallet);
  }
}

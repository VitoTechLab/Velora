import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to update wallet bank details for withdrawals
class UpdateWalletBankDetailsUsecase {
  UpdateWalletBankDetailsUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  Future<Either<Failure, WalletEntity>> call({
    required String walletId,
    required String bankName,
    required String bankAccountNumber,
    required String bankAccountHolder,
  }) {
    return _repository.updateWalletBankDetails(
      walletId: walletId,
      bankName: bankName,
      bankAccountNumber: bankAccountNumber,
      bankAccountHolder: bankAccountHolder,
    );
  }
}

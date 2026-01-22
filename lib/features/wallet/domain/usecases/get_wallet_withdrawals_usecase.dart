import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_withdrawal_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case for fetching withdrawal history for a wallet
class GetWalletWithdrawalsUsecase {
  GetWalletWithdrawalsUsecase(this._repository);

  final WalletRepository _repository;

  /// Get all withdrawals for a wallet
  Future<Either<Failure, List<WalletWithdrawalEntity>>> call(
    String walletId,
  ) async {
    return _repository.getWalletWithdrawals(walletId);
  }
}

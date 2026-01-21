import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to request a withdrawal from any wallet
class RequestWithdrawalUsecase {
  RequestWithdrawalUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  Future<Either<Failure, WalletTransactionEntity>> call({
    required String walletId,
    required double amount,
  }) {
    return _repository.requestWithdrawal(
      walletId: walletId,
      amount: amount,
    );
  }
}

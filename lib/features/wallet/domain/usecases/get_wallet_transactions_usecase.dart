import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to get transactions for a wallet
class GetWalletTransactionsUsecase {
  GetWalletTransactionsUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  Future<Either<Failure, List<WalletTransactionEntity>>> call(
    String walletId, {
    int limit = 50,
    int offset = 0,
  }) {
    return _repository.getWalletTransactions(
      walletId,
      limit: limit,
      offset: offset,
    );
  }
}

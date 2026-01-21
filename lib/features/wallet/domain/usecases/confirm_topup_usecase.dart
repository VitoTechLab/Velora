import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to confirm a top-up after payment verification
class ConfirmTopUpUsecase {
  ConfirmTopUpUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  Future<Either<Failure, WalletTransactionEntity>> call({
    required String transactionId,
    required String paymentId,
  }) {
    return _repository.confirmTopUp(
      transactionId: transactionId,
      paymentId: paymentId,
    );
  }
}

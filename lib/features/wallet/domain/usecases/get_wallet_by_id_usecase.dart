import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to get a wallet by ID
class GetWalletByIdUsecase {
  GetWalletByIdUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  Future<Either<Failure, WalletEntity?>> call(String walletId) {
    return _repository.getWalletById(walletId);
  }
}

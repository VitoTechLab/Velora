import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

/// Use case to get all wallets for a user (main + campaign wallets)
class GetUserWalletsUsecase {
  GetUserWalletsUsecase({required WalletRepository repository})
      : _repository = repository;

  final WalletRepository _repository;

  Future<Either<Failure, List<WalletEntity>>> call(String userId) {
    return _repository.getUserWallets(userId);
  }
}

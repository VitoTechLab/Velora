import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class RequestWithdrawalUsecase {
  const RequestWithdrawalUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, WithdrawalEntity>> call(
    WithdrawalEntity withdrawal,
  ) {
    return repository.requestWithdrawal(withdrawal);
  }
}

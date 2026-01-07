import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Unblock a user
class UnblockUser {
  final SocialRelationRepository repository;

  UnblockUser(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.unblockUser(targetUserId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Block a user
class BlockUser {
  final SocialRelationRepository repository;

  BlockUser(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.blockUser(targetUserId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/entities/blocked_user_entity.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Get list of blocked users
class GetBlockedUsers {
  final SocialRelationRepository repository;

  GetBlockedUsers(this.repository);

  Future<Either<Failure, List<BlockedUserEntity>>> call() {
    return repository.getBlockedUsers();
  }
}

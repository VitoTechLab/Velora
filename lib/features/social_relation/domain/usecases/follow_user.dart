import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Follow a user (for public accounts)
class FollowUser {
  final SocialRelationRepository repository;

  FollowUser(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.followUser(targetUserId);
  }
}

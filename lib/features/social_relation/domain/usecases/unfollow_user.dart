import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Unfollow a user
class UnfollowUser {
  final SocialRelationRepository repository;

  UnfollowUser(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.unfollowUser(targetUserId);
  }
}

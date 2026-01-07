import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Restrict a user (limit their interaction)
class RestrictUser {
  final SocialRelationRepository repository;

  RestrictUser(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.restrictUser(targetUserId);
  }
}

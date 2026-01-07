import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Accept a follow request
class AcceptFollowRequest {
  final SocialRelationRepository repository;

  AcceptFollowRequest(this.repository);

  Future<Either<Failure, void>> call(String requesterId) {
    return repository.acceptFollowRequest(requesterId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/entities/follow_request_entity.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Get pending follow requests received by current user
class GetPendingFollowRequests {
  final SocialRelationRepository repository;

  GetPendingFollowRequests(this.repository);

  Future<Either<Failure, List<FollowRequestEntity>>> call() {
    return repository.getPendingFollowRequests();
  }
}

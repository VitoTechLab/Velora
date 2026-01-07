import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Send follow request to private account
class SendFollowRequest {
  final SocialRelationRepository repository;

  SendFollowRequest(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.sendFollowRequest(targetUserId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

/// Mute a user (hide their posts without unfollowing)
class MuteUser {
  final SocialRelationRepository repository;

  MuteUser(this.repository);

  Future<Either<Failure, void>> call(String targetUserId) {
    return repository.muteUser(targetUserId);
  }
}

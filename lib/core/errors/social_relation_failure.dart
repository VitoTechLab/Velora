import 'package:velora/core/errors/failure.dart';

class SocialRelationFailure extends Failure {
  const SocialRelationFailure(super.message);

  factory SocialRelationFailure.fromException(Object e) {
    if (e is Failure) return SocialRelationFailure(e.message);
    return SocialRelationFailure(e.toString());
  }

  static const alreadyFollowing = SocialRelationFailure(
    'You are already following this user',
  );

  static const notFollowing = SocialRelationFailure(
    'You are not following this user',
  );

  static const requestAlreadySent = SocialRelationFailure(
    'Follow request already sent',
  );

  static const noRequestFound = SocialRelationFailure(
    'No follow request found',
  );

  static const alreadyBlocked = SocialRelationFailure(
    'User is already blocked',
  );

  static const notBlocked = SocialRelationFailure('User is not blocked');

  static const alreadyMuted = SocialRelationFailure('User is already muted');

  static const notMuted = SocialRelationFailure('User is not muted');

  static const alreadyRestricted = SocialRelationFailure(
    'User is already restricted',
  );

  static const notRestricted = SocialRelationFailure('User is not restricted');

  static const cannotFollowSelf = SocialRelationFailure(
    'You cannot follow yourself',
  );

  static const cannotBlockSelf = SocialRelationFailure(
    'You cannot block yourself',
  );
}

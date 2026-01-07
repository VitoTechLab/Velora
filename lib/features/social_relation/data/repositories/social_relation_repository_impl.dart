import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/errors/social_relation_failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/social_relation/data/datasources/social_relation_remote_datasource.dart';
import 'package:velora/features/social_relation/domain/entities/blocked_user_entity.dart';
import 'package:velora/features/social_relation/domain/entities/follow_request_entity.dart';
import 'package:velora/features/social_relation/domain/entities/muted_user_entity.dart';
import 'package:velora/features/social_relation/domain/entities/restricted_user_entity.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';

class SocialRelationRepositoryImpl implements SocialRelationRepository {
  final SocialRelationRemoteDataSource remoteDataSource;

  SocialRelationRepositoryImpl({required this.remoteDataSource});

  static const _logTag = 'SocialRelationRepository';

  // ========== FOLLOW OPERATIONS ==========

  @override
  Future<Either<Failure, void>> followUser(String targetUserId) async {
    try {
      logi('followUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.followUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('followUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> unfollowUser(String targetUserId) async {
    try {
      logi('unfollowUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.unfollowUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('unfollowUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> checkIfFollowing(String targetUserId) async {
    try {
      logi('checkIfFollowing - Target: $targetUserId', tag: _logTag);
      final result = await remoteDataSource.checkIfFollowing(targetUserId);
      return Right(result);
    } catch (e) {
      loge('checkIfFollowing ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getFollowingUserIds() async {
    try {
      logi('getFollowingUserIds', tag: _logTag);
      final result = await remoteDataSource.getFollowingUserIds();
      return Right(result);
    } catch (e) {
      loge('getFollowingUserIds ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  // ========== FOLLOW REQUEST OPERATIONS ==========

  @override
  Future<Either<Failure, void>> sendFollowRequest(String targetUserId) async {
    try {
      logi('sendFollowRequest - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.sendFollowRequest(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('sendFollowRequest ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> cancelFollowRequest(String targetUserId) async {
    try {
      logi('cancelFollowRequest - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.cancelFollowRequest(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('cancelFollowRequest ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> acceptFollowRequest(String requesterId) async {
    try {
      logi('acceptFollowRequest - Requester: $requesterId', tag: _logTag);
      await remoteDataSource.acceptFollowRequest(requesterId);
      return const Right(null);
    } catch (e) {
      loge('acceptFollowRequest ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> rejectFollowRequest(String requesterId) async {
    try {
      logi('rejectFollowRequest - Requester: $requesterId', tag: _logTag);
      await remoteDataSource.rejectFollowRequest(requesterId);
      return const Right(null);
    } catch (e) {
      loge('rejectFollowRequest ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<FollowRequestEntity>>>
  getPendingFollowRequests() async {
    try {
      logi('getPendingFollowRequests', tag: _logTag);
      final result = await remoteDataSource.getPendingFollowRequests();
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('getPendingFollowRequests ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<FollowRequestEntity>>>
  getSentFollowRequests() async {
    try {
      logi('getSentFollowRequests', tag: _logTag);
      final result = await remoteDataSource.getSentFollowRequests();
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('getSentFollowRequests ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> checkIfFollowRequestPending(
    String targetUserId,
  ) async {
    try {
      logi('checkIfFollowRequestPending - Target: $targetUserId', tag: _logTag);
      final result = await remoteDataSource.checkIfFollowRequestPending(
        targetUserId,
      );
      return Right(result);
    } catch (e) {
      loge('checkIfFollowRequestPending ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  // ========== BLOCK OPERATIONS ==========

  @override
  Future<Either<Failure, void>> blockUser(String targetUserId) async {
    try {
      logi('blockUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.blockUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('blockUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> unblockUser(String targetUserId) async {
    try {
      logi('unblockUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.unblockUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('unblockUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> checkIfBlocked(String targetUserId) async {
    try {
      logi('checkIfBlocked - Target: $targetUserId', tag: _logTag);
      final result = await remoteDataSource.checkIfBlocked(targetUserId);
      return Right(result);
    } catch (e) {
      loge('checkIfBlocked ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<BlockedUserEntity>>> getBlockedUsers() async {
    try {
      logi('getBlockedUsers', tag: _logTag);
      final result = await remoteDataSource.getBlockedUsers();
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('getBlockedUsers ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  // ========== MUTE OPERATIONS ==========

  @override
  Future<Either<Failure, void>> muteUser(String targetUserId) async {
    try {
      logi('muteUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.muteUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('muteUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> unmuteUser(String targetUserId) async {
    try {
      logi('unmuteUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.unmuteUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('unmuteUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> checkIfMuted(String targetUserId) async {
    try {
      logi('checkIfMuted - Target: $targetUserId', tag: _logTag);
      final result = await remoteDataSource.checkIfMuted(targetUserId);
      return Right(result);
    } catch (e) {
      loge('checkIfMuted ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<MutedUserEntity>>> getMutedUsers() async {
    try {
      logi('getMutedUsers', tag: _logTag);
      final result = await remoteDataSource.getMutedUsers();
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('getMutedUsers ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  // ========== RESTRICT OPERATIONS ==========

  @override
  Future<Either<Failure, void>> restrictUser(String targetUserId) async {
    try {
      logi('restrictUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.restrictUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('restrictUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> unrestrictUser(String targetUserId) async {
    try {
      logi('unrestrictUser - Target: $targetUserId', tag: _logTag);
      await remoteDataSource.unrestrictUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('unrestrictUser ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> checkIfRestricted(String targetUserId) async {
    try {
      logi('checkIfRestricted - Target: $targetUserId', tag: _logTag);
      final result = await remoteDataSource.checkIfRestricted(targetUserId);
      return Right(result);
    } catch (e) {
      loge('checkIfRestricted ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<RestrictedUserEntity>>>
  getRestrictedUsers() async {
    try {
      logi('getRestrictedUsers', tag: _logTag);
      final result = await remoteDataSource.getRestrictedUsers();
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      loge('getRestrictedUsers ERROR', error: e, tag: _logTag);
      return Left(SocialRelationFailure.fromException(e));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/errors/profile_failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';
import 'package:velora/features/profile/data/models/update_profile_model.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;
  static const _logTag = 'ProfileRepository';

  ProfileRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserProfileModel>> getProfile(String userId) async {
    try {
      logi('Repository: getProfile userId=$userId', tag: _logTag);
      final profile = await remoteDataSource.getProfile(userId);
      return Right(profile);
    } catch (e) {
      loge('Repository Error: getProfile', error: e, tag: _logTag);
      return Left(ProfileFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, UserProfileModel>> updateProfile(
    UpdateProfileModel updateModel,
  ) async {
    try {
      logi('Repository: updateProfile', tag: _logTag);
      final profile = await remoteDataSource.updateProfile(updateModel);
      return Right(profile);
    } catch (e) {
      loge('Repository Error: updateProfile', error: e, tag: _logTag);
      return Left(ProfileFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> toggleFollow(
    String targetUserId, {
    required bool isPrivate,
  }) async {
    try {
      logi('Repository: toggleFollow targetUserId=$targetUserId', tag: _logTag);
      await remoteDataSource.toggleFollow(targetUserId, isPrivate: isPrivate);
      return const Right(null);
    } catch (e) {
      loge('Repository Error: toggleFollow', error: e, tag: _logTag);
      return Left(ProfileFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> blockUser(String targetUserId) async {
    try {
      logi('Repository: blockUser targetUserId=$targetUserId', tag: _logTag);
      await remoteDataSource.blockUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('Repository Error: blockUser', error: e, tag: _logTag);
      return Left(ProfileFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> unblockUser(String targetUserId) async {
    try {
      logi('Repository: unblockUser targetUserId=$targetUserId', tag: _logTag);
      await remoteDataSource.unblockUser(targetUserId);
      return const Right(null);
    } catch (e) {
      loge('Repository Error: unblockUser', error: e, tag: _logTag);
      return Left(ProfileFailure.fromException(e));
    }
  }
}

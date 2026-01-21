import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/auth_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/auth/data/models/auth_session_model.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';

import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

/// Implementation of auth repository using Supabase remote datasource
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  static const _logTag = 'AuthRepository';

  /// Register new user with email and password
  @override
  Future<Either<Failure, AuthSessionEntity?>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      logi('[$_logTag] signUp email=$email');
      final session = await remoteDataSource.signUp(
        email: email,
        password: password,
      );
      return Right(_mapAuthSession(session));
    } catch (error) {
      loge('[$_logTag ERROR] signUp', error: error);
      return Left(AuthFailure.fromException(error));
    }
  }

  /// Authenticate user with email and password
  @override
  Future<Either<Failure, AuthSessionEntity?>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      logi('[$_logTag] signIn email=$email');
      final session = await remoteDataSource.signIn(
        email: email,
        password: password,
      );
      return Right(_mapAuthSession(session));
    } catch (error) {
      loge('[$_logTag ERROR] signIn', error: error);
      return Left(AuthFailure.fromException(error));
    }
  }

  /// Authenticate user with Google OAuth
  @override
  Future<Either<Failure, AuthSessionEntity?>> signInWithGoogle() async {
    try {
      logi('[$_logTag] signInWithGoogle');
      final session = await remoteDataSource.signInWithGoogle();
      return Right(_mapAuthSession(session));
    } catch (error) {
      loge('[$_logTag ERROR] signInWithGoogle', error: error);
      return Left(AuthFailure.fromException(error));
    }
  }

  /// Send password reset email to user
  @override
  Future<Either<Failure, void>> resetPassword({required String email}) async {
    try {
      logi('[$_logTag] resetPassword email=$email');
      await remoteDataSource.resetPassword(email: email);
      return const Right(null);
    } catch (error) {
      loge('[$_logTag ERROR] resetPassword', error: error);
      return Left(AuthFailure.fromException(error));
    }
  }
  /// Update user's password
  @override
  Future<Either<Failure, void>> updatePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      logi('[\$_logTag] updatePassword');
      await remoteDataSource.updatePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      return const Right(null);
    } catch (error) {
      loge('[\$_logTag ERROR] updatePassword', error: error);
      return Left(AuthFailure.fromException(error));
    }
  }
  /// Sign out current user from session
  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      logi('[$_logTag] signOut');
      await remoteDataSource.signOut();
      return const Right(null);
    } catch (error) {
      loge('[$_logTag ERROR] signOut', error: error);
      return Left(AuthFailure.fromException(error));
    }
  }

  /// Convert session model to entity
  AuthSessionEntity? _mapAuthSession(AuthSessionModel? model) {
    return model?.toEntity();
  }

  /// Stream auth state changes from Supabase
  @override
  Stream<AuthSnapshotEntity> watchAuthSnapshot() async* {
    yield _mapModelToSnapshot(remoteDataSource.currentSession());
    yield* remoteDataSource
        .watchAuthSession()
        .map(_mapModelToSnapshot)
        .distinct(
          (a, b) =>
              a.status == b.status &&
              a.userId == b.userId,
        );
  }

  /// Convert session model to snapshot entity
  AuthSnapshotEntity _mapModelToSnapshot(AuthSessionModel? session) {
    if (session == null) {
      return const AuthSnapshotEntity(
        status: AuthStatusEntity.unauthenticated,
        userId: null,
      );
    }

    final status = session.emailVerified
        ? AuthStatusEntity.authenticated
        : AuthStatusEntity.emailUnverified;

    return AuthSnapshotEntity(
      status: status,
      userId: session.userId,
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/auth_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/auth/data/models/auth_session_model.dart';
import 'package:velora/features/auth/domain/entities/auth_session.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';

import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  static const _logTag = 'AuthRepository';

  @override
  Future<Either<Failure, AuthSession?>> signUp({
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

  @override
  Future<Either<Failure, AuthSession?>> signIn({
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

  @override
  Future<Either<Failure, AuthSession?>> signInWithGoogle() async {
    try {
      logi('[$_logTag] signInWithGoogle');
      final session = await remoteDataSource.signInWithGoogle();
      return Right(_mapAuthSession(session));
    } catch (error) {
      loge('[$_logTag ERROR] signInWithGoogle', error: error);
      return Left(AuthFailure.fromException(error));
    }
  }

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

  AuthSession? _mapAuthSession(AuthSessionModel? model) {
    return model?.toEntity();
  }

  @override
  Stream<AuthSnapshot> watchAuthSnapshot() async* {
    yield _mapModelToSnapshot(remoteDataSource.currentSession());
    yield* remoteDataSource
        .watchAuthSession()
        .map(_mapModelToSnapshot)
        .distinct(
          (a, b) =>
              a.status == b.status &&
              a.userId == b.userId &&
              a.emailVerified == b.emailVerified,
        );
  }

  AuthSnapshot _mapModelToSnapshot(AuthSessionModel? session) {
    if (session == null) {
      return const AuthSnapshot(
        status: AuthStatus.unauthenticated,
        userId: null,
        emailVerified: null,
      );
    }

    final status = session.emailVerified
        ? AuthStatus.authenticated
        : AuthStatus.emailUnverified;

    return AuthSnapshot(
      status: status,
      userId: session.userId,
      emailVerified: session.emailVerified,
    );
  }
}

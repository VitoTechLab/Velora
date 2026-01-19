import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot_entity.dart';

/// Abstraction over Supabase auth operations.
abstract class AuthRepository {
  Future<Either<Failure, AuthSessionEntity?>> signUp({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthSessionEntity?>> signIn({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthSessionEntity?>> signInWithGoogle();

  Future<Either<Failure, void>> resetPassword({required String email});

  Future<Either<Failure, void>> updatePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<Either<Failure, void>> signOut();

  /// Stream of auth status changes derived from the underlying auth provider.
  Stream<AuthSnapshotEntity> watchAuthSnapshot();
}


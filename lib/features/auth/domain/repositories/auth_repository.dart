import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';

/// Abstraction over Supabase auth operations.
abstract class AuthRepository {
  Future<Either<Failure, AuthSession?>> signUp({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthSession?>> signIn({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthSession?>> signInWithGoogle();

  Future<Either<Failure, void>> resetPassword({required String email});

  Future<Either<Failure, void>> signOut();

  /// Stream of auth status changes derived from the underlying auth provider.
  Stream<AuthSnapshot> watchAuthSnapshot();
}

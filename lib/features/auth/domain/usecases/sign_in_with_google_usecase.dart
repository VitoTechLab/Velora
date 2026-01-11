import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

/// Use case for Google OAuth authentication.
class SignInWithGoogleUseCase {
  const SignInWithGoogleUseCase({required this.repository});

  final AuthRepository repository;

  Future<Either<Failure, AuthSessionEntity?>> call() {
    return repository.signInWithGoogle();
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

/// Use case for user login with email and password.
class SignInUseCase {
  const SignInUseCase({required this.repository});

  final AuthRepository repository;

  Future<Either<Failure, AuthSessionEntity?>> call({
    required String email,
    required String password,
  }) {
    return repository.signIn(email: email, password: password);
  }
}

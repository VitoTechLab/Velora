import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

/// Use case for user registration with email and password.
class SignUpUseCase {
  const SignUpUseCase({required this.repository});

  final AuthRepository repository;

  Future<Either<Failure, AuthSessionEntity?>> call({
    required String email,
    required String password,
  }) {
    return repository.signUp(email: email, password: password);
  }
}

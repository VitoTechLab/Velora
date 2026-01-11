import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

/// Use case for logging out the current user.
class SignOutUseCase {
  const SignOutUseCase({required this.repository});

  final AuthRepository repository;

  Future<Either<Failure, void>> call() {
    return repository.signOut();
  }
}

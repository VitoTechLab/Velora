import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

/// Use case for sending password reset email.
class ResetPasswordUseCase {
  const ResetPasswordUseCase({required this.repository});

  final AuthRepository repository;

  Future<Either<Failure, void>> call({required String email}) {
    return repository.resetPassword(email: email);
  }
}

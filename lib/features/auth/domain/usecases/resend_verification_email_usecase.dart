import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

class ResendVerificationEmailUseCase {
  const ResendVerificationEmailUseCase({required this.repository});

  final AuthRepository repository;

  Future<Either<Failure, void>> call({String? email}) {
    return repository.resendVerificationEmail(email: email);
  }
}

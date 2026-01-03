import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session.dart';

import '../repositories/auth_repository.dart';

class AuthSignInWithGoogle {
  AuthSignInWithGoogle(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, AuthSession?>> call() {
    return _repository.signInWithGoogle();
  }
}

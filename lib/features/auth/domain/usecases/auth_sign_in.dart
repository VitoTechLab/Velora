import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session.dart';

import '../repositories/auth_repository.dart';

class AuthSignIn {
  AuthSignIn(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, AuthSession?>> call({
    required String email,
    required String password,
  }) {
    return _repository.signIn(email: email, password: password);
  }
}

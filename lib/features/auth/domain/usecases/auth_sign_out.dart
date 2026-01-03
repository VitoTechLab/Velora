import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';

import '../repositories/auth_repository.dart';

class AuthSignOut {
  AuthSignOut(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, void>> call() {
    return _repository.signOut();
  }
}

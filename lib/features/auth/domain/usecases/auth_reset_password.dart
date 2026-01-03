import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';

import '../repositories/auth_repository.dart';

class AuthResetPassword {
  AuthResetPassword(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, void>> call({required String email}) {
    return _repository.resetPassword(email: email);
  }
}

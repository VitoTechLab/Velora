import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

/// Use case to expose a stream of authentication status changes.
class AuthWatchAuthSnapshot {
  const AuthWatchAuthSnapshot(this._repository);

  final AuthRepository _repository;

  Stream<AuthSnapshot> call() {
    return _repository.watchAuthSnapshot();
  }
}

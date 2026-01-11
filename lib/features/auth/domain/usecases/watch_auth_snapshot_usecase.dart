import 'package:velora/features/auth/domain/entities/auth_snapshot_entity.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

/// Use case for watching authentication status changes.
class WatchAuthSnapshotUseCase {
  const WatchAuthSnapshotUseCase({required this.repository});

  final AuthRepository repository;

  Stream<AuthSnapshotEntity> call() {
    return repository.watchAuthSnapshot();
  }
}

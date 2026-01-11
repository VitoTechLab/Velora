import 'auth_status_entity.dart';

/// Snapshot of current authentication state for routing and UI logic.
class AuthSnapshotEntity {
  const AuthSnapshotEntity({
    required this.status,
    this.userId,
    this.emailVerified,
  });

  final AuthStatusEntity status;
  final String? userId;
  final bool? emailVerified;
}

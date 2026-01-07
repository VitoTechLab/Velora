import 'package:velora/features/auth/domain/entities/auth_status.dart';

class AuthSnapshot {
  final AuthStatus status;
  final String? userId;
  final bool? emailVerified;

  const AuthSnapshot({required this.status, this.userId, this.emailVerified});
}

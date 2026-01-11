/// Domain entity representing an authenticated user session.
class AuthSessionEntity {
  const AuthSessionEntity({
    required this.userId,
    required this.email,
    required this.emailVerified,
  });

  final String userId;
  final String? email;
  final bool emailVerified;
}

import 'package:velora/features/auth/data/models/auth_session_model.dart';

/// Low-level wrapper around Supabase auth API.
///
/// This layer should only deal with Supabase types and leave
/// error mapping to higher layers (guard + repository).
abstract class AuthRemoteDataSource {
  /// Email/password sign-up.
  Future<AuthSessionModel?> signUp({
    required String email,
    required String password,
  });

  /// Email/password sign-in.
  Future<AuthSessionModel?> signIn({
    required String email,
    required String password,
  });

  /// Google sign-in. Implementation chooses the correct flow per platform.
  Future<AuthSessionModel?> signInWithGoogle();

  /// Send password reset email.
  Future<void> resetPassword({required String email});

  /// Update user's password.
  Future<void> updatePassword({
    required String currentPassword,
    required String newPassword,
  });

  /// Sign out current user.
  Future<void> signOut();

  /// Current cached session (if available).
  AuthSessionModel? currentSession();

  /// Listen to auth session updates.
  Stream<AuthSessionModel?> watchAuthSession();
}

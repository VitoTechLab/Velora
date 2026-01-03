import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';

part 'auth_event.freezed.dart';

/// Auth events for Supabase-based authentication.
@freezed
class AuthEvent with _$AuthEvent {
  /// Email/password sign-up
  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
  }) = AuthSignUpRequested;

  /// Email/password sign-in
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = AuthSignInRequested;

  /// Request password reset email
  const factory AuthEvent.resetPasswordRequested({required String email}) =
      AuthResetPasswordRequested;

  /// Sign out current user
  const factory AuthEvent.signOutRequested() = AuthSignOutRequested;

  /// Optional: hook for future Google / OAuth sign-in.
  const factory AuthEvent.signInWithGoogleRequested() =
      AuthSignInWithGoogleRequested;

  /// Clear transient success/error messages
  const factory AuthEvent.clearMessagesRequested() = AuthClearMessagesRequested;

  /// Internal event used when Supabase session changes outside Bloc handlers.
  const factory AuthEvent.authSupabaseSnapshotChanged({
    required AuthSnapshot snapshot,
  }) = AuthSupabaseSnapshotChanged;
}

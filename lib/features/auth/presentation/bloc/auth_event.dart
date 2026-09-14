import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot_entity.dart';

part 'auth_event.freezed.dart';

/// Events for authentication operations.
@freezed
abstract class AuthEvent with _$AuthEvent {
  /// User registration with email and password
  const factory AuthEvent.signUp({
    required String email,
    required String password,
  }) = SignUpEvent;

  /// User login with email and password
  const factory AuthEvent.signIn({
    required String email,
    required String password,
  }) = SignInEvent;

  /// Send password reset email
  const factory AuthEvent.resetPassword({required String email}) =
      ResetPasswordEvent;

  const factory AuthEvent.resendEmailVerification({String? email}) =
      ResendEmailVerificationEvent;

  /// Log out current user
  const factory AuthEvent.signOut() = SignOutEvent;

  /// Google OAuth authentication
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogleEvent;

  /// Clear transient messages from state
  const factory AuthEvent.clearMessages() = ClearMessagesEvent;

  /// Internal event for Supabase session changes
  const factory AuthEvent.authSnapshotChanged({
    required AuthSnapshotEntity snapshot,
  }) = AuthSnapshotChangedEvent;
}

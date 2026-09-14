import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';

part 'auth_state.freezed.dart';

/// Type of authentication action currently in progress
enum AuthLoadingType {
  none,
  emailPassword,
  google,
  apple,
  verificationEmail,
}

/// Represents current authentication state.
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatusEntity.unknown) AuthStatusEntity status,
    @Default(AuthLoadingType.none) AuthLoadingType loadingType,
    String? message,
    String? errorMessage,
    String? userId,
  }) = _AuthState;

  const AuthState._();

  /// Check if any auth action is in progress
  bool get isLoading => loadingType != AuthLoadingType.none;

  /// Check if email/password auth is loading
  bool get isEmailLoading => loadingType == AuthLoadingType.emailPassword;

  /// Check if Google auth is loading
  bool get isGoogleLoading => loadingType == AuthLoadingType.google;

  /// Check if verification email action is loading
  bool get isVerificationEmailLoading =>
      loadingType == AuthLoadingType.verificationEmail;
}

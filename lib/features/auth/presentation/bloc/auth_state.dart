import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';

part 'auth_state.freezed.dart';

/// Type of authentication action currently in progress
enum AuthLoadingType {
  none,
  emailPassword,
  google,
  apple,
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.unknown) AuthStatus status,
    @Default(AuthLoadingType.none) AuthLoadingType loadingType,
    String? message,
    String? errorMessage,
    String? userId,
  }) = _AuthState;

  const AuthState._();

  /// Whether any auth action is in progress
  @override
  bool get isLoading => loadingType != AuthLoadingType.none;

  /// Whether email/password auth is loading
  bool get isEmailLoading => loadingType == AuthLoadingType.emailPassword;

  /// Whether Google auth is loading
  bool get isGoogleLoading => loadingType == AuthLoadingType.google;
}

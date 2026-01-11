import 'package:gotrue/src/types/auth_exception.dart';
import 'package:gotrue/src/types/error_code.dart';

import 'failure.dart';

/// Authentication failure types for categorizing errors
enum AuthFailureType {
  emailNotVerified,
  emailAlreadyInUse,
  invalidCredentials,
  userNotFound,
  weakPassword,
  network,
  unknown,
}

/// Authentication-specific failure with categorized error types
class AuthFailure extends Failure {
  const AuthFailure({required String message, required this.type}) : super(message);

  final AuthFailureType type;

  factory AuthFailure.emailNotVerified(String message) =>
      AuthFailure(message: message, type: AuthFailureType.emailNotVerified);

  factory AuthFailure.emailAlreadyInUse(String message) =>
      AuthFailure(message: message, type: AuthFailureType.emailAlreadyInUse);

  factory AuthFailure.invalidCredentials(String message) =>
      AuthFailure(message: message, type: AuthFailureType.invalidCredentials);

  factory AuthFailure.userNotFound(String message) =>
      AuthFailure(message: message, type: AuthFailureType.userNotFound);

  factory AuthFailure.weakPassword(String message) =>
      AuthFailure(message: message, type: AuthFailureType.weakPassword);

  factory AuthFailure.network(String message) =>
      AuthFailure(message: message, type: AuthFailureType.network);

  factory AuthFailure.unknown(String message) =>
      AuthFailure(message: message, type: AuthFailureType.unknown);

  /// Convert exception to categorized AuthFailure
  factory AuthFailure.fromException(Object error) {
    if (error is AuthFailure) return error;

    if (error is AuthException) {
      final code = error.code;
      final message = error.message;
      final lowerMessage = message.toLowerCase();

      // Email verification errors
      if (code == ErrorCode.emailNotConfirmed.code) {
        return AuthFailure.emailNotVerified(message);
      }

      // Email already in use errors
      if (code == ErrorCode.emailExists.code ||
          code == ErrorCode.userAlreadyExists.code) {
        return AuthFailure.emailAlreadyInUse(message);
      }

      // User not found errors
      if (code == ErrorCode.userNotFound.code) {
        return AuthFailure.userNotFound(message);
      }

      // Network/rate limit errors
      if (code == ErrorCode.overRequestRateLimit.code) {
        return AuthFailure.network(message);
      }

      // Weak password errors
      if (lowerMessage.contains('password') &&
          (lowerMessage.contains('weak') ||
              lowerMessage.contains('short') ||
              lowerMessage.contains('6 characters'))) {
        return AuthFailure.weakPassword(message);
      }

      // Invalid credentials errors
      if (lowerMessage.contains('invalid login') ||
          lowerMessage.contains('invalid credentials') ||
          lowerMessage.contains('invalid password')) {
        return AuthFailure.invalidCredentials(message);
      }

      return AuthFailure.unknown(message);
    }

    return AuthFailure.unknown(error.toString());
  }
}

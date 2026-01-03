import 'package:gotrue/src/types/auth_exception.dart';
import 'package:gotrue/src/types/error_code.dart';

import 'failure.dart';

enum AuthFailureType {
  emailNotVerified,
  emailAlreadyInUse,
  invalidCredentials,
  userNotFound,
  network,
  unknown,
}

class AuthFailure extends Failure {
  const AuthFailure({
    required String message,
    required this.type,
  }): super(message);

  final AuthFailureType type;

  factory AuthFailure.emailNotVerified(String message) =>
      AuthFailure(message: message, type: AuthFailureType.emailNotVerified);

  factory AuthFailure.emailAlreadyInUse(String message) =>
      AuthFailure(message: message, type: AuthFailureType.emailAlreadyInUse);

  factory AuthFailure.invalidCredentials(String message) =>
      AuthFailure(message: message, type: AuthFailureType.invalidCredentials);

  factory AuthFailure.userNotFound(String message) =>
      AuthFailure(message: message, type: AuthFailureType.userNotFound);

  factory AuthFailure.network(String message) =>
      AuthFailure(message: message, type: AuthFailureType.network);

  factory AuthFailure.unknown(String message) =>
      AuthFailure(message: message, type: AuthFailureType.unknown);

  factory AuthFailure.fromException(Object error) {
    if (error is AuthFailure) return error;

    if (error is AuthException) {
      final code = error.code;
      if (code == ErrorCode.emailNotConfirmed.code) {
        return AuthFailure.emailNotVerified(error.message);
      }
      if (code == ErrorCode.emailExists.code ||
          code == ErrorCode.userAlreadyExists.code) {
        return AuthFailure.emailAlreadyInUse(error.message);
      }
      if (code == ErrorCode.userNotFound.code) {
        return AuthFailure.userNotFound(error.message);
      }
      if (code == ErrorCode.overRequestRateLimit.code) {
        return AuthFailure.network(error.message);
      }

      final lowerMessage = error.message.toLowerCase();
      if (lowerMessage.contains('invalid login') ||
          lowerMessage.contains('invalid credentials')) {
        return AuthFailure.invalidCredentials(error.message);
      }

      return AuthFailure.unknown(error.message);
    }

    return AuthFailure.unknown(error.toString());
  }
}

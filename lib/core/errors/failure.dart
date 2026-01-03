import 'package:velora/core/errors/exceptions.dart';

class Failure {
  const Failure(this.message);

  final String message;

  static Failure fromException(Object error) {
    if (error is Failure) return error;

    if (error is AppException) {
      return Failure(error.message);
    }

    return Failure(error.toString());
  }
}

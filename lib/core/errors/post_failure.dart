import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';

/// Backward-compatible Failure used by existing Feed code.
class PostFailure extends Failure {
  const PostFailure(super.message);

  static PostFailure fromException(Object error) {
    if (error is PostFailure) return error;

    if (error is AppException) {
      return PostFailure(error.message);
    }

    return PostFailure(error.toString());
  }
}

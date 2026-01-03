import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';

enum FeedFailureType {
  network,
  notFound,
  validation,
  unauthenticated,
  unknown,
}

class FeedFailure extends Failure {
  FeedFailure({
    required String message,
    required this.type,
  }) : super(message);

  final FeedFailureType type;

  factory FeedFailure.network([String message = 'Network error']) =>
      FeedFailure(message: message, type: FeedFailureType.network);

  factory FeedFailure.notFound([String message = 'Data not found']) =>
      FeedFailure(message: message, type: FeedFailureType.notFound);

  factory FeedFailure.validation([String message = 'Validation error']) =>
      FeedFailure(message: message, type: FeedFailureType.validation);

  factory FeedFailure.unauthenticated(
    [String message = 'You need to sign in to continue']
  ) => FeedFailure(message: message, type: FeedFailureType.unauthenticated);

  factory FeedFailure.unknown([String message = 'Unexpected feed error']) =>
      FeedFailure(message: message, type: FeedFailureType.unknown);

  factory FeedFailure.fromException(Object error) {
    if (error is FeedFailure) return error;
    if (error is Failure) {
      return FeedFailure(message: error.message, type: FeedFailureType.unknown);
    }

    if (error is UnauthenticatedException) {
      return FeedFailure.unauthenticated(error.message);
    }
    if (error is NetworkException) {
      return FeedFailure.network(error.message);
    }
    if (error is NotFoundException) {
      return FeedFailure.notFound(error.message);
    }
    if (error is ValidationException) {
      return FeedFailure.validation(error.message);
    }

    return FeedFailure.unknown(error.toString());
  }
}

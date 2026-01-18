import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';

/// Mention failure types for categorizing errors
enum MentionFailureType {
  network,
  notFound,
  validation,
  unauthenticated,
  unknown
}

/// Mention-specific failure with categorized error types
class MentionFailure extends Failure {
  const MentionFailure({required String message, required this.type})
      : super(message);

  final MentionFailureType type;

  factory MentionFailure.network([String message = 'Network error']) =>
      MentionFailure(message: message, type: MentionFailureType.network);

  factory MentionFailure.notFound([String message = 'Data not found']) =>
      MentionFailure(message: message, type: MentionFailureType.notFound);

  factory MentionFailure.validation([String message = 'Validation error']) =>
      MentionFailure(message: message, type: MentionFailureType.validation);

  factory MentionFailure.unauthenticated([
    String message = 'You need to sign in to continue',
  ]) =>
      MentionFailure(
          message: message, type: MentionFailureType.unauthenticated);

  factory MentionFailure.unknown([String message = 'Unexpected error']) =>
      MentionFailure(message: message, type: MentionFailureType.unknown);

  /// Convert exception to categorized MentionFailure
  factory MentionFailure.fromException(Object error) {
    if (error is MentionFailure) return error;
    if (error is Failure) {
      return MentionFailure(
          message: error.message, type: MentionFailureType.unknown);
    }

    if (error is UnauthenticatedException) {
      return MentionFailure.unauthenticated(error.message);
    }
    if (error is NetworkException) {
      return MentionFailure.network(error.message);
    }
    if (error is NotFoundException) {
      return MentionFailure.notFound(error.message);
    }
    if (error is ValidationException) {
      return MentionFailure.validation(error.message);
    }

    return MentionFailure.unknown(error.toString());
  }
}

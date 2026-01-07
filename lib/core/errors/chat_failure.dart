import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';

enum ChatFailureType { network, notFound, validation, unauthenticated, unknown }

class ChatFailure extends Failure {
  ChatFailure({required String message, required this.type}) : super(message);

  final ChatFailureType type;

  factory ChatFailure.network([String message = 'Network error']) =>
      ChatFailure(message: message, type: ChatFailureType.network);

  factory ChatFailure.notFound([String message = 'Data not found']) =>
      ChatFailure(message: message, type: ChatFailureType.notFound);

  factory ChatFailure.validation([String message = 'Validation error']) =>
      ChatFailure(message: message, type: ChatFailureType.validation);

  factory ChatFailure.unauthenticated([
    String message = 'You need to sign in to continue',
  ]) => ChatFailure(message: message, type: ChatFailureType.unauthenticated);

  factory ChatFailure.unknown([String message = 'Unexpected chat error']) =>
      ChatFailure(message: message, type: ChatFailureType.unknown);

  factory ChatFailure.fromException(Object error) {
    if (error is ChatFailure) return error;
    if (error is Failure) {
      return ChatFailure(message: error.message, type: ChatFailureType.unknown);
    }

    if (error is UnauthenticatedException) {
      return ChatFailure.unauthenticated(error.message);
    }
    if (error is NetworkException) {
      return ChatFailure.network(error.message);
    }
    if (error is NotFoundException) {
      return ChatFailure.notFound(error.message);
    }
    if (error is ValidationException) {
      return ChatFailure.validation(error.message);
    }

    return ChatFailure.unknown(error.toString());
  }
}

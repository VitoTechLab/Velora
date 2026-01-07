import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/errors/failure.dart';

enum CampaignFailureType {
  network,
  notFound,
  unauthenticated,
  validation,
  unknown,
}

class CampaignFailure extends Failure {
  CampaignFailure({required String message, required this.type})
    : super(message);

  final CampaignFailureType type;

  factory CampaignFailure.network([String message = 'Network error']) =>
      CampaignFailure(message: message, type: CampaignFailureType.network);

  factory CampaignFailure.notFound([String message = 'Data not found']) =>
      CampaignFailure(message: message, type: CampaignFailureType.notFound);

  factory CampaignFailure.unauthenticated([
    String message = 'Authentication required',
  ]) => CampaignFailure(
    message: message,
    type: CampaignFailureType.unauthenticated,
  );

  factory CampaignFailure.validation([String message = 'Invalid request']) =>
      CampaignFailure(message: message, type: CampaignFailureType.validation);

  factory CampaignFailure.unknown([String message = 'Unknown error']) =>
      CampaignFailure(message: message, type: CampaignFailureType.unknown);

  factory CampaignFailure.fromException(Object error) {
    if (error is CampaignFailure) return error;
    if (error is NetworkException) {
      return CampaignFailure.network(error.message);
    }
    if (error is NotFoundException) {
      return CampaignFailure.notFound(error.message);
    }
    if (error is UnauthenticatedException) {
      return CampaignFailure.unauthenticated(error.message);
    }
    if (error is ValidationException) {
      return CampaignFailure.validation(error.message);
    }
    if (error is Failure) {
      return CampaignFailure.unknown(error.message);
    }
    return CampaignFailure.unknown(error.toString());
  }
}

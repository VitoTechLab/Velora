import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/errors/exceptions.dart';

class ProfileFailure extends Failure {
  const ProfileFailure(super.message);

  factory ProfileFailure.fromException(Object e) {
    if (e is UnauthenticatedException) {
      return const ProfileFailure('Please login to continue');
    }
    if (e is NotFoundException) {
      return const ProfileFailure('User profile not found');
    }
    if (e is ServerException) {
      return ProfileFailure(e.message);
    }
    return const ProfileFailure('Something went wrong while accessing profile');
  }
}

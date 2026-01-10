import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Delete a notification
class DeleteNotification {
  final NotificationRepository repository;

  DeleteNotification(this.repository);

  Future<Either<Failure, void>> call(String notificationId) {
    return repository.deleteNotification(notificationId);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Use case for deleting a notification
class DeleteNotificationUseCase {
  const DeleteNotificationUseCase({required this.repository});

  final NotificationRepository repository;

  /// Delete a notification by ID
  Future<Either<Failure, void>> call(String notificationId) {
    return repository.deleteNotification(notificationId);
  }
}

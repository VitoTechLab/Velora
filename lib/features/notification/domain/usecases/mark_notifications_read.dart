import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Mark all notifications as read
class MarkAllNotificationsRead {
  final NotificationRepository repository;

  MarkAllNotificationsRead(this.repository);

  Future<Either<Failure, void>> call() {
    return repository.markAllAsRead();
  }
}

/// Mark specific notifications as read
class MarkNotificationsRead {
  final NotificationRepository repository;

  MarkNotificationsRead(this.repository);

  Future<Either<Failure, void>> call(List<String> notificationIds) {
    return repository.markAsRead(notificationIds);
  }
}

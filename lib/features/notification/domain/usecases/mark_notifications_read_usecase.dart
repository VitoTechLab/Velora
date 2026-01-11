import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Use case for marking all notifications as read
class MarkAllNotificationsReadUseCase {
  const MarkAllNotificationsReadUseCase({required this.repository});

  final NotificationRepository repository;

  /// Mark all notifications as read
  Future<Either<Failure, void>> call() {
    return repository.markAllAsRead();
  }
}

/// Use case for marking specific notifications as read
class MarkNotificationsReadUseCase {
  const MarkNotificationsReadUseCase({required this.repository});

  final NotificationRepository repository;

  /// Mark specific notifications as read
  Future<Either<Failure, void>> call(List<String> notificationIds) {
    return repository.markAsRead(notificationIds);
  }
}

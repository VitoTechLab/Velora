import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Get the count of unread notifications
class GetUnreadNotificationCount {
  final NotificationRepository repository;

  GetUnreadNotificationCount(this.repository);

  Future<Either<Failure, int>> call() {
    return repository.getUnreadCount();
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Use case for getting the count of unread notifications
class GetUnreadNotificationCountUseCase {
  const GetUnreadNotificationCountUseCase({required this.repository});

  final NotificationRepository repository;

  /// Get the count of unread notifications
  Future<Either<Failure, int>> call() {
    return repository.getUnreadCount();
  }
}

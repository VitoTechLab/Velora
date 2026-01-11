import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Use case for watching realtime new notifications
class WatchNewNotificationsUseCase {
  const WatchNewNotificationsUseCase({required this.repository});

  final NotificationRepository repository;

  /// Watch for new notifications in realtime
  Stream<Either<Failure, NotificationEntity>> call() {
    return repository.watchNewNotifications();
  }
}

/// Use case for stopping notification watch
class StopWatchNotificationsUseCase {
  const StopWatchNotificationsUseCase({required this.repository});

  final NotificationRepository repository;

  /// Stop watching for notifications
  Future<void> call() {
    return repository.stopWatchNotifications();
  }
}

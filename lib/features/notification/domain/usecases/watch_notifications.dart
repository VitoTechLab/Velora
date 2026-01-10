import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Watch realtime new notifications
class WatchNewNotifications {
  final NotificationRepository repository;

  WatchNewNotifications(this.repository);

  Stream<Either<Failure, NotificationEntity>> call() {
    return repository.watchNewNotifications();
  }
}

/// Stop watching notifications
class StopWatchNotifications {
  final NotificationRepository repository;

  StopWatchNotifications(this.repository);

  Future<void> call() {
    return repository.stopWatchNotifications();
  }
}

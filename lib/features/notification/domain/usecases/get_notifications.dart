import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/entities/notification_pagination_result.dart';
import 'package:velora/features/notification/domain/entities/notification_cursor_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Loads the first page of notifications using cursor-based pagination.
class LoadInitialNotifications {
  final NotificationRepository repository;

  LoadInitialNotifications(this.repository);

  Future<Either<Failure, NotificationPaginationResult>> call({
    int limit = 20,
    NotificationType? type,
  }) {
    return repository.getNotifications(limit: limit, cursor: null, type: type);
  }
}

/// Loads the next page of notifications using the last cursor.
class LoadMoreNotifications {
  final NotificationRepository repository;

  LoadMoreNotifications(this.repository);

  Future<Either<Failure, NotificationPaginationResult>> call({
    required NotificationCursorEntity cursor,
    int limit = 20,
    NotificationType? type,
  }) {
    return repository.getNotifications(limit: limit, cursor: cursor, type: type);
  }
}

import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/notification/domain/entities/notification_pagination_result_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_cursor_entity.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';

/// Use case for loading the first page of notifications
class LoadInitialNotificationsUseCase {
  const LoadInitialNotificationsUseCase({required this.repository});

  final NotificationRepository repository;

  /// Load initial notifications with cursor-based pagination
  Future<Either<Failure, NotificationPaginationResult>> call({
    int limit = 20,
    NotificationType? type,
  }) {
    return repository.getNotifications(limit: limit, cursor: null, type: type);
  }
}

/// Use case for loading the next page of notifications
class LoadMoreNotificationsUseCase {
  const LoadMoreNotificationsUseCase({required this.repository});

  final NotificationRepository repository;

  /// Load more notifications using the last cursor
  Future<Either<Failure, NotificationPaginationResult>> call({
    required NotificationCursorEntity cursor,
    int limit = 20,
    NotificationType? type,
  }) {
    return repository.getNotifications(limit: limit, cursor: cursor, type: type);
  }
}

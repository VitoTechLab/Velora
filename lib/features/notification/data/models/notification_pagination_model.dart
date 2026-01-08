import 'package:velora/features/notification/data/models/notification_model.dart';
import 'package:velora/features/notification/data/models/notification_cursor.dart';
import 'package:velora/features/notification/domain/entities/notification_cursor.dart';
import 'package:velora/features/notification/domain/entities/notification_pagination_result.dart';

class NotificationPaginationModel {
  final List<NotificationModel> notifications;
  final bool hasMore;
  final NotificationCursor? nextCursor;

  NotificationPaginationModel({
    required this.notifications,
    required this.hasMore,
    this.nextCursor,
  });

  NotificationPaginationResult toEntity() {
    return NotificationPaginationResult(
      notifications: notifications.map((e) => e.toEntity()).toList(),
      hasMore: hasMore,
      cursor: nextCursor != null
          ? NotificationCursorEntity(
              createdAt: nextCursor!.createdAt,
              id: nextCursor!.id,
            )
          : null,
    );
  }
}

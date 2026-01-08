import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'actor_id') String? actorId,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'target_id') String? targetId,
    @JsonKey(name: 'target_type') String? targetType,
    @JsonKey(name: 'group_key') String? groupKey,
    @JsonKey(name: 'group_count') @Default(1) int groupCount,
    @JsonKey(name: 'is_read') @Default(false) bool isRead,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @UtcDateTimeConverter() @JsonKey(name: 'updated_at') DateTime? updatedAt,

    // Actor info (from joined profile - optional)
    @JsonKey(name: 'actor_username') String? actorUsername,
    @JsonKey(name: 'actor_photo_url') String? actorPhotoUrl,

    // Target preview
    @JsonKey(name: 'target_preview_url') String? targetPreviewUrl,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  NotificationEntity toEntity() {
    return NotificationEntity(
      id: id,
      userId: userId,
      actorId: actorId,
      type: _parseNotificationType(type),
      targetId: targetId,
      targetType: _parseTargetType(targetType),
      groupKey: groupKey,
      groupCount: groupCount,
      isRead: isRead,
      createdAt: createdAt,
      updatedAt: updatedAt,
      actorUsername: actorUsername,
      actorPhotoUrl: actorPhotoUrl,
      targetPreviewUrl: targetPreviewUrl,
    );
  }

  static NotificationType _parseNotificationType(String type) {
    switch (type) {
      case 'like':
        return NotificationType.like;
      case 'comment':
        return NotificationType.comment;
      case 'follow':
        return NotificationType.follow;
      case 'follow_request':
        return NotificationType.followRequest;
      case 'follow_accepted':
        return NotificationType.followAccepted;
      case 'donation':
        return NotificationType.donation;
      case 'mention':
        return NotificationType.mention;
      default:
        return NotificationType.like;
    }
  }

  static NotificationTargetType? _parseTargetType(String? type) {
    if (type == null) return null;
    switch (type) {
      case 'post':
        return NotificationTargetType.post;
      case 'comment':
        return NotificationTargetType.comment;
      case 'campaign':
        return NotificationTargetType.campaign;
      case 'user':
        return NotificationTargetType.user;
      default:
        return null;
    }
  }
}

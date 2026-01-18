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
    @JsonKey(name: 'user_id') String? userId,
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

    // Actor info (from joined profile - matches SQL: actor_username, actor_avatar_url)
    @JsonKey(name: 'actor_username') String? actorUsername,
    @JsonKey(name: 'actor_avatar_url') String? actorAvatarUrl,

    // Metadata for rich notification content (thumbnail, preview, title, etc.)
    @JsonKey(name: 'metadata') @Default({}) Map<String, dynamic> metadata,

    // Follow relationship - whether current user follows the actor
    @JsonKey(name: 'is_following_actor') @Default(false) bool isFollowingActor,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  NotificationEntity toEntity() {
    // Extract thumbnail from metadata if available
    final thumbnail = metadata['thumbnail'] as String?;
    
    return NotificationEntity(
      id: id,
      userId: userId ?? '',
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
      actorPhotoUrl: actorAvatarUrl,
      targetPreviewUrl: thumbnail,
      isFollowingActor: isFollowingActor,
      metadata: metadata,
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
      case 'post_share':
        return NotificationType.postShare;
      case 'channel_invite':
        return NotificationType.channelInvite;
      case 'campaign_created':
        return NotificationType.campaignCreated;
      case 'campaign_update':
        return NotificationType.campaignUpdate;
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
      case 'message':
        return NotificationTargetType.message;
      default:
        return null;
    }
  }
}

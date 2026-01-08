import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.notification,
    this.onTap,
    this.onLongPress,
    this.onFollowBack,
  });

  final NotificationEntity notification;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onFollowBack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: notification.isRead
              ? Colors.transparent
              : colorScheme.primary.withValues(alpha: 0.05),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar with notification type indicator
            _buildAvatar(colorScheme),
            const SizedBox(width: 12),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildContent(theme, colorScheme),
                  const SizedBox(height: 4),
                  _buildTimeAgo(theme),
                ],
              ),
            ),
            // Action button or thumbnail
            _buildTrailing(context, colorScheme),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(ColorScheme colorScheme) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: colorScheme.surfaceContainerHighest,
          backgroundImage: notification.actorPhotoUrl != null
              ? CachedNetworkImageProvider(notification.actorPhotoUrl!)
              : null,
          child: notification.actorPhotoUrl == null
              ? Icon(
                  _getNotificationIcon(),
                  color: colorScheme.onSurfaceVariant,
                  size: 24,
                )
              : null,
        ),
        // Notification type badge
        if (notification.type == NotificationType.like ||
            notification.type == NotificationType.comment)
          Positioned(
            right: -2,
            bottom: -2,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: _getNotificationTypeColor(colorScheme),
                shape: BoxShape.circle,
                border: Border.all(
                  color: colorScheme.surface,
                  width: 2,
                ),
              ),
              child: Icon(
                _getNotificationIcon(),
                color: Colors.white,
                size: 10,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildContent(ThemeData theme, ColorScheme colorScheme) {
    return RichText(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: theme.textTheme.bodyMedium,
        children: [
          // Actor username (bold)
          TextSpan(
            text: notification.actorUsername ?? 'Someone',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          // Additional actors if grouped
          if (notification.isGrouped) ...[
            const TextSpan(text: ' and '),
            TextSpan(
              text: '${notification.additionalActors} others',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
          // Action text
          TextSpan(text: ' ${_getActionText()}'),
        ],
      ),
    );
  }

  Widget _buildTimeAgo(ThemeData theme) {
    return Text(
      _formatTimeAgo(notification.createdAt),
      style: theme.textTheme.bodySmall?.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
      ),
    );
  }

  Widget _buildTrailing(BuildContext context, ColorScheme colorScheme) {
    // Show follow button for follow-related notifications
    if (_shouldShowFollowButton()) {
      return FilledButton(
        onPressed: onFollowBack,
        style: FilledButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          minimumSize: const Size(80, 32),
        ),
        child: Text(
          notification.type == NotificationType.follow ? 'Follow back' : 'Follow',
        ),
      );
    }

    // Show thumbnail for post-related notifications
    if (notification.targetPreviewUrl != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: notification.targetPreviewUrl!,
          width: 44,
          height: 44,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            width: 44,
            height: 44,
            color: colorScheme.surfaceContainerHighest,
          ),
          errorWidget: (context, url, error) => Container(
            width: 44,
            height: 44,
            color: colorScheme.surfaceContainerHighest,
            child: Icon(
              Icons.image_not_supported_outlined,
              color: colorScheme.onSurfaceVariant,
              size: 20,
            ),
          ),
        ),
      );
    }

    // Show unread indicator
    if (!notification.isRead) {
      return Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          shape: BoxShape.circle,
        ),
      );
    }

    return const SizedBox.shrink();
  }

  bool _shouldShowFollowButton() {
    return notification.type == NotificationType.follow ||
        notification.type == NotificationType.followRequest;
  }

  IconData _getNotificationIcon() {
    switch (notification.type) {
      case NotificationType.like:
        return Icons.favorite;
      case NotificationType.comment:
        return Icons.chat_bubble;
      case NotificationType.mention:
        return Icons.alternate_email;
      case NotificationType.follow:
      case NotificationType.followRequest:
        return Icons.person_add;
      case NotificationType.followRequestAccepted:
        return Icons.how_to_reg;
      case NotificationType.donation:
        return Icons.volunteer_activism;
      case NotificationType.channelInvite:
        return Icons.group_add;
      case NotificationType.postShare:
        return Icons.share;
    }
  }

  Color _getNotificationTypeColor(ColorScheme colorScheme) {
    switch (notification.type) {
      case NotificationType.like:
        return Colors.red;
      case NotificationType.comment:
        return colorScheme.primary;
      case NotificationType.mention:
        return Colors.blue;
      case NotificationType.follow:
      case NotificationType.followRequest:
      case NotificationType.followRequestAccepted:
        return colorScheme.primary;
      case NotificationType.donation:
        return Colors.green;
      case NotificationType.channelInvite:
        return Colors.purple;
      case NotificationType.postShare:
        return Colors.orange;
    }
  }

  String _getActionText() {
    switch (notification.type) {
      case NotificationType.like:
        return 'liked your ${notification.targetType == NotificationTargetType.post ? 'photo' : 'content'}.';
      case NotificationType.comment:
        return 'commented on your post.';
      case NotificationType.mention:
        return 'mentioned you in a comment.';
      case NotificationType.follow:
        return 'started following you.';
      case NotificationType.followRequest:
        return 'requested to follow you.';
      case NotificationType.followRequestAccepted:
        return 'accepted your follow request.';
      case NotificationType.donation:
        return 'donated to your campaign.';
      case NotificationType.channelInvite:
        return 'invited you to join their channel.';
      case NotificationType.postShare:
        return 'shared your post.';
    }
  }

  String _formatTimeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inSeconds < 60) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d';
    } else if (difference.inDays < 30) {
      return '${(difference.inDays / 7).floor()}w';
    } else {
      return '${(difference.inDays / 30).floor()}mo';
    }
  }
}

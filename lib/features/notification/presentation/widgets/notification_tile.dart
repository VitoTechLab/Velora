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
    this.isFollowLoading = false,
  });

  final NotificationEntity notification;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onFollowBack;
  final bool isFollowLoading;

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
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: notification.isRead
                ? null
                : LinearGradient(
                    colors: [
                      colorScheme.primary.withValues(alpha: 0.6),
                      colorScheme.secondary.withValues(alpha: 0.6),
                    ],
                  ),
            boxShadow: !notification.isRead
                ? [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ]
                : null,
          ),
          padding: notification.isRead ? null : const EdgeInsets.all(2),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: colorScheme.surfaceContainerHighest,
            backgroundImage: notification.actorPhotoUrl != null
                ? CachedNetworkImageProvider(notification.actorPhotoUrl!)
                : null,
            child: notification.actorPhotoUrl == null
                ? ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        colorScheme.primary,
                        colorScheme.secondary,
                      ],
                    ).createShader(bounds),
                    child: Icon(
                      _getNotificationIcon(),
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                : null,
          ),
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
                gradient: LinearGradient(
                  colors: [
                    _getNotificationTypeColor(colorScheme),
                    _getNotificationTypeColor(colorScheme)
                        .withValues(alpha: 0.8),
                  ],
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: colorScheme.surface,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: _getNotificationTypeColor(colorScheme)
                        .withValues(alpha: 0.4),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                ],
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
    // Show follow button for follow notifications
    if (_shouldShowFollowButton()) {
      return _buildFollowButton(colorScheme);
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
          gradient: LinearGradient(
            colors: [
              colorScheme.primary,
              colorScheme.secondary,
            ],
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.5),
              blurRadius: 6,
              spreadRadius: 1,
            ),
          ],
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildFollowButton(ColorScheme colorScheme) {
    // Loading state
    if (isFollowLoading) {
      return SizedBox(
        width: 80,
        height: 32,
        child: Center(
          child: SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: colorScheme.primary,
            ),
          ),
        ),
      );
    }

    // Already following - show "Following" with glass effect
    if (notification.isFollowingActor) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.surfaceContainerHighest.withValues(alpha: 0.8),
              colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onFollowBack,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Following',
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      );
    }

    // Not following - show "Follow back" with gradient
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.primary,
            colorScheme.secondary,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withValues(alpha: 0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onFollowBack,
          borderRadius: BorderRadius.circular(16),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Follow',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _shouldShowFollowButton() {
    // Only show for follow notifications (not follow request or follow accepted)
    return notification.type == NotificationType.follow;
  }

  IconData _getNotificationIcon() {
    return switch (notification.type) {
      NotificationType.like => Icons.favorite,
      NotificationType.comment => Icons.chat_bubble,
      NotificationType.mention => Icons.alternate_email,
      NotificationType.follow => Icons.person_add,
      NotificationType.followRequest => Icons.person_add,
      NotificationType.followAccepted => Icons.how_to_reg,
      NotificationType.donation => Icons.volunteer_activism,
      NotificationType.channelInvite => Icons.group_add,
      NotificationType.postShare => Icons.share,
      NotificationType.campaignCreated => Icons.campaign,
      NotificationType.campaignUpdate => Icons.campaign,
    };
  }

  Color _getNotificationTypeColor(ColorScheme colorScheme) {
    return switch (notification.type) {
      NotificationType.like => Colors.red,
      NotificationType.comment => colorScheme.primary,
      NotificationType.mention => Colors.blue,
      NotificationType.follow => colorScheme.primary,
      NotificationType.followRequest => colorScheme.primary,
      NotificationType.followAccepted => colorScheme.primary,
      NotificationType.donation => Colors.green,
      NotificationType.channelInvite => Colors.purple,
      NotificationType.postShare => Colors.orange,
      NotificationType.campaignCreated => Colors.amber,
      NotificationType.campaignUpdate => Colors.amber,
    };
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
      case NotificationType.followAccepted:
        return 'accepted your follow request.';
      case NotificationType.donation:
        return 'donated to your campaign.';
      case NotificationType.channelInvite:
        return 'invited you to join their channel.';
      case NotificationType.postShare:
        return 'shared your post.';
      case NotificationType.campaignCreated:
        return 'created a new campaign.';
      case NotificationType.campaignUpdate:
        return 'posted an update to their campaign.';
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

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';

class FollowRequestsCard extends StatelessWidget {
  const FollowRequestsCard({
    super.key,
    required this.requests,
    this.onTap,
  });

  final List<NotificationEntity> requests;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    if (requests.isEmpty) return const SizedBox.shrink();

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Get first 3 avatars for stacked display
    final displayAvatars = requests.take(3).toList();
    final hasUnread = requests.any((r) => !r.isRead);

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // Stacked avatars
            SizedBox(
              width: 48 + (displayAvatars.length - 1) * 12.0,
              height: 48,
              child: Stack(
                children: List.generate(displayAvatars.length, (index) {
                  final request = displayAvatars[displayAvatars.length - 1 - index];
                  return Positioned(
                    left: index * 12.0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: colorScheme.surface,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: colorScheme.surfaceContainerHighest,
                        backgroundImage: request.actorPhotoUrl != null
                            ? CachedNetworkImageProvider(request.actorPhotoUrl!)
                            : null,
                        child: request.actorPhotoUrl == null
                            ? Icon(
                                Icons.person,
                                color: colorScheme.onSurfaceVariant,
                                size: 20,
                              )
                            : null,
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(width: 12),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Follow requests',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    _buildSubtitle(),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // Unread indicator and chevron
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (hasUnread)
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _buildSubtitle() {
    if (requests.isEmpty) return '';
    
    final firstRequest = requests.first;
    final username = firstRequest.actorUsername ?? 'Someone';
    
    if (requests.length == 1) {
      return username;
    } else {
      return '$username + ${requests.length - 1} others';
    }
  }
}

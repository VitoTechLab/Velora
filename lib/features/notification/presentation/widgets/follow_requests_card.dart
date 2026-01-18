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

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Transform.scale(
          scale: 0.95 + (0.05 * value),
          child: Opacity(
            opacity: value,
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.primaryContainer.withValues(alpha: 0.3),
              colorScheme.secondaryContainer.withValues(alpha: 0.3),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: colorScheme.outline.withValues(alpha: 0.15),
          ),
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.1),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // Stacked avatars
                  SizedBox(
                    width: 48 + (displayAvatars.length - 1) * 12.0,
                    height: 48,
                    child: Stack(
                      children: List.generate(displayAvatars.length, (index) {
                        final request =
                            displayAvatars[displayAvatars.length - 1 - index];
                        return Positioned(
                          left: index * 12.0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  colorScheme.primary.withValues(alpha: 0.6),
                                  colorScheme.secondary.withValues(alpha: 0.6),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: colorScheme.primary
                                      .withValues(alpha: 0.3),
                                  blurRadius: 6,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: colorScheme.surface,
                                  width: 2,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    colorScheme.surfaceContainerHighest,
                                backgroundImage: request.actorPhotoUrl != null
                                    ? CachedNetworkImageProvider(
                                        request.actorPhotoUrl!)
                                    : null,
                                child: request.actorPhotoUrl == null
                                    ? ShaderMask(
                                        shaderCallback: (bounds) =>
                                            LinearGradient(
                                          colors: [
                                            colorScheme.primary,
                                            colorScheme.secondary,
                                          ],
                                        ).createShader(bounds),
                                        child: const Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      )
                                    : null,
                              ),
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
                            gradient: LinearGradient(
                              colors: [
                                colorScheme.primary,
                                colorScheme.secondary,
                              ],
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    colorScheme.primary.withValues(alpha: 0.5),
                                blurRadius: 6,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        ),
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            colorScheme.primary,
                            colorScheme.secondary,
                          ],
                        ).createShader(bounds),
                        child: const Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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

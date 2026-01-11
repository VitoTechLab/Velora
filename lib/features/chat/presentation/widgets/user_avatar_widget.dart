import 'package:flutter/material.dart';

/// Reusable user avatar widget with consistent styling
/// Prevents code duplication across chat screens
class UserAvatarWidget extends StatelessWidget {
  final String? avatarUrl;
  final String username;
  final double radius;
  final bool showOnlineIndicator;
  final bool isOnline;

  const UserAvatarWidget({
    super.key,
    this.avatarUrl,
    required this.username,
    this.radius = 28,
    this.showOnlineIndicator = false,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: avatarUrl != null && avatarUrl!.isNotEmpty
              ? NetworkImage(avatarUrl!)
              : null,
          backgroundColor: colorScheme.surfaceContainerHighest,
          child: avatarUrl == null || avatarUrl!.isEmpty
              ? Text(
                  username.isNotEmpty ? username[0].toUpperCase() : '?',
                  style: radius > 24
                      ? textTheme.titleLarge
                      : radius > 20
                          ? textTheme.titleMedium
                          : textTheme.titleSmall,
                )
              : null,
        ),
        if (showOnlineIndicator && isOnline)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: radius * 0.35,
              height: radius * 0.35,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(
                  color: colorScheme.surface,
                  width: 2,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

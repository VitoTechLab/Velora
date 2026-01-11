import 'package:flutter/material.dart';

class EmptyNotificationsWidget extends StatelessWidget {
  const EmptyNotificationsWidget({
    super.key,
    this.message,
    this.subtitle,
    this.onRefresh,
  });

  final String? message;
  final String? subtitle;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications_none_rounded,
                size: 64,
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              message ?? 'No notifications yet',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 8),
              Text(
                subtitle!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            if (onRefresh != null) ...[
              const SizedBox(height: 24),
              FilledButton.tonal(
                onPressed: onRefresh,
                child: const Text('Refresh'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

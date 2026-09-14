import 'package:flutter/material.dart';

/// A concise, scroll-safe status for empty and failed content sections.
class ContentState extends StatelessWidget {
  const ContentState({
    super.key,
    required this.title,
    this.message,
    this.icon,
    this.actionLabel,
    this.onAction,
  });
  final String title;
  final String? message;
  final IconData? icon;
  final String? actionLabel;
  final VoidCallback? onAction;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 360),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(
                    icon,
                    size: 32,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 12),
                ],
                Text(
                  title,
                  style: theme.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                if (message?.isNotEmpty == true) ...[
                  const SizedBox(height: 8),
                  Text(
                    message!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                if (onAction != null && actionLabel != null) ...[
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: onAction,
                    child: Text(actionLabel!, textAlign: TextAlign.center),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

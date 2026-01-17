import 'package:flutter/material.dart';

/// Divider with centered text for auth screens
///
/// Usage: Between primary and social auth buttons
/// Supports both light and dark themes
class AuthDivider extends StatelessWidget {
  final String text;
  final bool isDarkTheme;

  const AuthDivider({
    super.key,
    this.text = 'or continue with',
    this.isDarkTheme = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Auto-detect dark theme if background is dark
    final brightness = Theme.of(context).brightness;
    final useDarkStyle = isDarkTheme || brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: useDarkStyle
                  ? Colors.white.withOpacity(0.15)
                  : colorScheme.outline.withValues(alpha: 0.5),
              thickness: 1,
              height: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              style: theme.textTheme.bodySmall?.copyWith(
                color: useDarkStyle
                    ? Colors.white.withOpacity(0.5)
                    : colorScheme.onSurfaceVariant,
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: useDarkStyle
                  ? Colors.white.withOpacity(0.15)
                  : colorScheme.outline.withValues(alpha: 0.5),
              thickness: 1,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}

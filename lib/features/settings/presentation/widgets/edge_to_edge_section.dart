import 'package:flutter/material.dart';

class EdgeToEdgeSection extends StatelessWidget {
  const EdgeToEdgeSection({
    super.key,
    required this.child,
    this.title,
    this.subtitle,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    this.gapBelowTitle = 12,
    this.onTap,
    this.semanticLabel,
  });

  final Widget child;
  final String? title;
  final String? subtitle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  final double gapBelowTitle;

  /// Optional: makes the whole section tappable with pressed state.
  final VoidCallback? onTap;

  /// Optional semantics label when tappable.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final resolvedBackground =
        backgroundColor ?? colorScheme.surfaceContainerHigh;

    final content = Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 4),
              Text(
                subtitle!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
            SizedBox(height: gapBelowTitle),
          ],
          child,
        ],
      ),
    );

    // Non-tappable: same as before

    // Tappable with pressed state
    return Semantics(
      button: true,
      label: semanticLabel ?? title,
      child: Material(

        child: InkWell(
          onTap: onTap,
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return colorScheme.onSurface.withValues(alpha: 0.06);
            }
            if (states.contains(WidgetState.hovered)) {
              return colorScheme.onSurface.withValues(alpha: 0.03);
            }
            if (states.contains(WidgetState.focused)) {
              return colorScheme.onSurface.withValues(alpha: 0.04);
            }
            return null;
          }),
          child: content,
        ),
      ),
    );
  }
}

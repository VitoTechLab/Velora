import 'package:flutter/material.dart';

class ChatGlassSurface extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;
  final bool elevated;
  final bool accent;
  final Gradient? gradient;

  const ChatGlassSurface({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.elevated = false,
    this.accent = false,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: borderRadius,
        border: Border.all(
          color: accent
              ? colorScheme.primary.withValues(alpha: 0.22)
              : colorScheme.outlineVariant.withValues(alpha: 0.42),
        ),
      ),
      child: Padding(padding: padding, child: child),
    );
  }
}

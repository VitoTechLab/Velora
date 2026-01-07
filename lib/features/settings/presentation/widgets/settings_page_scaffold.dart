import 'package:flutter/material.dart';

/// Shared scaffold for secondary settings pages. It keeps the blurred surface
/// background and dense title layout that mimics sheet-like navigation.
class SettingsPageScaffold extends StatelessWidget {
  const SettingsPageScaffold({
    super.key,
    required this.title,
    required this.child,
    this.subtitle,
    this.actions,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  });

  final String title;
  final String? subtitle;
  final Widget child;
  final List<Widget>? actions;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final background = Color.lerp(
      theme.colorScheme.surface,
      theme.colorScheme.surfaceContainerHighest,
      theme.brightness == Brightness.dark ? 0.1 : 0.4,
    );

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Semantics(
          namesRoute: true,
          header: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
            ],
          ),
        ),
        actions: actions,
      ),
      body: SafeArea(
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}

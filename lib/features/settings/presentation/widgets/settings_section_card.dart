import 'package:flutter/material.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';

/// Section that renders bare tiles separated by dividers, mirroring the modern
/// list appearance from the provided reference.
class SettingsSectionCard extends StatelessWidget {
  const SettingsSectionCard({
    super.key,
    required this.title,
    required this.tiles,
    this.subtitle,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
  });

  final String title;
  final String? subtitle;
  final List<SettingsTileData> tiles;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Semantics(
            header: true,
            child: Text(
              title,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(
              subtitle!,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.85),
              ),
            ),
          ],
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                for (int i = 0; i < tiles.length; i++) ...[
                  SettingsTile(data: tiles[i]),
                  if (i != tiles.length - 1)
                    Divider(
                      indent: tiles[i].icon != null ? 72 : 16,
                      endIndent: 16,
                      height: 0,
                      color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                    ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

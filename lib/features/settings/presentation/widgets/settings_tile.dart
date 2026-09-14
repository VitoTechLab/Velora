import 'package:flutter/material.dart';

/// Lightweight model that describes the content of a settings tile.
class SettingsTileData {
  const SettingsTileData({
    required this.title,
    this.subtitle,
    this.icon,
    this.iconColor,
    this.badgeLabel,
    this.trailing,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final IconData? icon;
  final Color? iconColor;
  final String? badgeLabel;
  final Widget? trailing;
  final VoidCallback? onTap;
}

/// Tile that mirrors the updated settings detail design with subtle spacing,
/// rounded icon container, and light typography.
class SettingsTile extends StatelessWidget {
  const SettingsTile({super.key, required this.data});

  final SettingsTileData data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final iconColor = data.iconColor ?? colorScheme.primary;
    final subtitleStyle = textTheme.bodySmall?.copyWith(
      color: colorScheme.onSurfaceVariant,
    );

    return Semantics(
      container: true,
      button: data.onTap != null,
      enabled: data.onTap != null,
      child: MergeSemantics(
        child: InkWell(
          onTap: data.onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (data.icon != null) ...[
                  SizedBox(
                    width: 36,
                    height: 40,
                    child: Center(
                      child: Icon(data.icon, color: iconColor, size: 24),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              data.title,
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          if (data.badgeLabel != null)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: colorScheme.primary.withValues(
                                  alpha: 0.12,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                data.badgeLabel!,
                                style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                      if (data.subtitle != null) ...[
                        const SizedBox(height: 4),
                        Text(data.subtitle!, style: subtitleStyle),
                      ],
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                data.trailing ??
                    Icon(
                      Icons.chevron_right,
                      color: colorScheme.onSurfaceVariant,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

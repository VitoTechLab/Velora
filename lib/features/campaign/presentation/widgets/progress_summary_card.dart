import 'package:flutter/material.dart';
import '../widgets/progress_bar.dart';

String _formatCurrency(double amount) {
  if (amount >= 1000000000) {
    return '${(amount / 1000000000).toStringAsFixed(1)}B';
  } else if (amount >= 1000000) {
    return '${(amount / 1000000).toStringAsFixed(1)}M';
  } else if (amount >= 1000) {
    return '${(amount / 1000).toStringAsFixed(0)}K';
  }
  return amount.toStringAsFixed(0);
}

class ProgressSummaryCard extends StatelessWidget {
  final double raised;
  final double target;
  final double progressPercent;
  final String timeLeftLabel;
  final int donorsCount;
  final int updatesCount;
  final int milestonesCount;

  const ProgressSummaryCard({
    super.key,
    required this.raised,
    required this.target,
    required this.progressPercent,
    required this.timeLeftLabel,
    required this.donorsCount,
    required this.updatesCount,
    required this.milestonesCount,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.08),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp ${_formatCurrency(raised)}',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'raised of Rp ${_formatCurrency(target)}',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.errorContainer.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: colorScheme.error.withValues(alpha: 0.3),
                  ),
                ),
                child: Text(
                  timeLeftLabel,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ProgressBar(progress: progressPercent / 100),
          const SizedBox(height: 12),
          Text(
            '${progressPercent.toStringAsFixed(1)}% funded',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _MetaItem(
                icon: Icons.people_outline,
                value: donorsCount.toString(),
                label: 'Backers',
                colorScheme: colorScheme,
                theme: theme,
              ),
              _MetaItem(
                icon: Icons.campaign_outlined,
                value: updatesCount.toString(),
                label: 'Updates',
                colorScheme: colorScheme,
                theme: theme,
              ),
              _MetaItem(
                icon: Icons.flag_outlined,
                value: milestonesCount.toString(),
                label: 'Milestones',
                colorScheme: colorScheme,
                theme: theme,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MetaItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _MetaItem({
    required this.icon,
    required this.value,
    required this.label,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20, color: colorScheme.primary),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/campaign_milestone_entity.dart';
import 'status_chip.dart';

class MilestonesSection extends StatelessWidget {
  final List<CampaignMilestoneEntity> milestones;

  const MilestonesSection({super.key, required this.milestones});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 4,
          children: [
            Icon(Icons.flag_outlined, color: colorScheme.primary, size: 24),
            const SizedBox(width: 8),
            Text(
              'Milestones & Tranches',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme.secondaryContainer.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 16,
                color: colorScheme.onSecondaryContainer,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Funds are released in tranches upon milestone completion',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        ...milestones.asMap().entries.map((entry) {
          final index = entry.key;
          final milestone = entry.value;
          final isLast = index == milestones.length - 1;
          return _MilestoneItem(
            milestone: milestone,
            isLast: isLast,
            colorScheme: colorScheme,
            theme: theme,
          );
        }),
      ],
    );
  }
}

class _MilestoneItem extends StatelessWidget {
  final CampaignMilestoneEntity milestone;
  final bool isLast;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _MilestoneItem({
    required this.milestone,
    required this.isLast,
    required this.colorScheme,
    required this.theme,
  });

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

  @override
  Widget build(BuildContext context) {
    final isCompleted = milestone.status == 'completed';
    final isInProgress = milestone.status == 'in_progress';

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: isCompleted
                    ? colorScheme.primary
                    : isInProgress
                    ? colorScheme.secondary
                    : colorScheme.surfaceContainerHighest,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isCompleted || isInProgress
                      ? Colors.transparent
                      : colorScheme.outline,
                  width: 2,
                ),
              ),
              child: Icon(
                isCompleted
                    ? Icons.check
                    : isInProgress
                    ? Icons.circle
                    : Icons.circle_outlined,
                color: isCompleted
                    ? colorScheme.onPrimary
                    : isInProgress
                    ? colorScheme.onSecondary
                    : colorScheme.onSurfaceVariant,
                size: 16,
              ),
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 40,
                color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: isLast ? 0 : 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        milestone.title,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ),
                    StatusChip(
                      label: milestone.status,
                      status: milestone.status,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                if (milestone.dueDate != null)
                  Text(
                    DateFormat.yMMMd().format(milestone.dueDate!),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Rp ${_formatCurrency(milestone.targetAmount)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../domain/entities/campaign_detail_model.dart';

class FundBreakdownSection extends StatelessWidget {
  final List<BreakdownItem> items;

  const FundBreakdownSection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.pie_chart_outline, color: colorScheme.primary, size: 24),
            const SizedBox(width: 8),
            Text(
              'Fund Usage Breakdown',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Segmented bar visualization
        Container(
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow.withValues(alpha: 0.08),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Row(
              children: items.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final colors = [
                  colorScheme.primary,
                  colorScheme.secondary,
                  colorScheme.tertiary,
                  colorScheme.primaryContainer,
                  colorScheme.secondaryContainer,
                ];
                return Expanded(
                  flex: item.percent.toInt(),
                  child: Container(color: colors[index % colors.length]),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Breakdown list
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _BreakdownItem(
              item: item,
              colorScheme: colorScheme,
              theme: theme,
            ),
          ),
        ),
      ],
    );
  }
}

class _BreakdownItem extends StatelessWidget {
  final BreakdownItem item;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _BreakdownItem({
    required this.item,
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
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: colorScheme.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            item.label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ),
        Text(
          '${item.percent.toInt()}%',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          'Rp ${_formatCurrency(item.amount)}',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

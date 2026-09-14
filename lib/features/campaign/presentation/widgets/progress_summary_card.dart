import 'package:flutter/material.dart';
import 'campaign_card.dart' show formatCurrency;

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
    final id = Localizations.localeOf(context).languageCode == 'id';
    final secondary = theme.textTheme.bodyMedium?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rp ${formatCurrency(raised)}',
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 4),
          Text(
            '${id ? 'terkumpul dari' : 'raised of'} Rp ${formatCurrency(target)}',
            style: secondary,
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: (progressPercent / 100).clamp(0.0, 1.0),
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 16,
            runSpacing: 4,
            children: [
              Text('${progressPercent.toStringAsFixed(1)}%', style: secondary),
              Text(timeLeftLabel, style: secondary),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              Text(
                '$donorsCount ${id ? 'donatur' : 'supporters'}',
                style: secondary,
              ),
              Text(
                '$updatesCount ${id ? 'kabar' : 'updates'}',
                style: secondary,
              ),
              Text(
                '$milestonesCount ${id ? 'pencapaian' : 'milestones'}',
                style: secondary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

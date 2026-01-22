import 'package:flutter/material.dart';

class OverviewTabContent extends StatelessWidget {
  final String campaignType;
  final String? description;

  const OverviewTabContent({
    super.key,
    required this.campaignType,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isEquityOrDebt = campaignType == 'equity' || campaignType == 'debt';

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Impact Story
          Text(
            'About This Campaign',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description ?? 'No description available.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),

          // Key Highlights
          Text(
            'Key Highlights',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          _HighlightCard(
            icon: Icons.favorite_border,
            title: 'Why It Matters',
            description:
                'Your contribution helps make a real difference in the lives of those who need it most. Every donation counts.',
            colorScheme: colorScheme,
            theme: theme,
          ),
          const SizedBox(height: 12),
          _HighlightCard(
            icon: Icons.lightbulb_outline,
            title: 'What Funding Unlocks',
            description:
                'Funds raised will be used to achieve the campaign goals and milestones outlined by the campaign creator.',
            colorScheme: colorScheme,
            theme: theme,
          ),
          const SizedBox(height: 12),
          _HighlightCard(
            icon: Icons.groups_outlined,
            title: 'Who Benefits',
            description:
                'The beneficiaries of this campaign as specified by the creator. Check the transparency tab for more details.',
            colorScheme: colorScheme,
            theme: theme,
          ),
          const SizedBox(height: 24),

          // Risk Summary (for equity/debt)
          if (isEquityOrDebt) ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.errorContainer.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: colorScheme.error.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: colorScheme.error, size: 24),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Risk Summary',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.error,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Investment carries risk. Returns are not guaranteed and you may lose some or all of your capital. Risk Grade: B (Moderate Risk). Please review full disclosure in Transparency tab.',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _HighlightCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _HighlightCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: colorScheme.primary, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

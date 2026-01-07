import 'package:flutter/material.dart';
import '../routes/campaign_routes.dart';

/// Demo screen untuk preview campaign detail screens
/// Gunakan untuk testing visual dan interaksi
class CampaignDetailDemoScreen extends StatelessWidget {
  const CampaignDetailDemoScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const CampaignDetailDemoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('Campaign Detail Demo'),
        backgroundColor: colorScheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header
          Text(
            'Preview Campaign Detail Screens',
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Klik salah satu untuk melihat preview campaign detail dengan mock data',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 32),

          // Donation Campaign
          _DemoCard(
            title: 'Donation Campaign',
            description:
                'Classic donation campaign with progress tracking and transparency dashboard',
            icon: Icons.volunteer_activism,
            color: Colors.green,
            onTap: () => CampaignRoutes.showDonationDetail(context),
          ),
          const SizedBox(height: 16),

          // Equity Campaign
          _DemoCard(
            title: 'Equity Campaign',
            description:
                'Investment campaign with equity market module, sparkline chart, and 2-step invest flow',
            icon: Icons.trending_up,
            color: Colors.purple,
            onTap: () => CampaignRoutes.showEquityDetail(context),
          ),
          const SizedBox(height: 32),

          // Features List
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: colorScheme.primary.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: colorScheme.primary,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Features Included',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _FeatureBullet('CustomScrollView with SliverAppBar'),
                _FeatureBullet('Expandable cover header dengan gradient'),
                _FeatureBullet(
                  '4 Tabs: Overview, Updates, Discussion, Transparency',
                ),
                _FeatureBullet('Trust Dashboard dengan fund breakdown'),
                _FeatureBullet('Document viewer dan milestone timeline'),
                _FeatureBullet('Proof gallery dengan horizontal scroll'),
                _FeatureBullet('Equity market module dengan sparkline chart'),
                _FeatureBullet('2-step investment flow (amount → risk)'),
                _FeatureBullet('Sticky CTA button dengan floating shadow'),
                _FeatureBullet('Animated title di AppBar saat scroll'),
                _FeatureBullet('Material 3 dengan Theme colors'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DemoCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _DemoCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Material(
      color: colorScheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(20),
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              // Icon
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(width: 16),

              // Content
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
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.4,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              // Arrow
              Icon(
                Icons.arrow_forward_ios,
                color: colorScheme.onSurfaceVariant,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureBullet extends StatelessWidget {
  final String text;

  const _FeatureBullet(this.text);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 4,
            height: 4,
            margin: const EdgeInsets.only(top: 8, right: 8),
            decoration: BoxDecoration(
              color: colorScheme.primary,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

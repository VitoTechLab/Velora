import 'package:flutter/material.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_empty_state.dart';

class ProfileReportsSection extends StatelessWidget {
  const ProfileReportsSection({
    super.key,
    required this.reports,
    required this.onReportTap,
  });

  final List<FeedEntity> reports;
  final ValueChanged<int> onReportTap;

  @override
  Widget build(BuildContext context) {
    if (reports.isEmpty) {
      return const ProfileEmptyState(
        icon: Icons.assignment_outlined,
        title: 'No reports yet',
        message:
            'Reports shared by this profile will appear here with status, location, and campaign context.',
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
      itemCount: reports.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final report = reports[index];
        return _ReportCard(report: report, onTap: () => onReportTap(index));
      },
    );
  }
}

class _ReportCard extends StatelessWidget {
  const _ReportCard({required this.report, required this.onTap});

  final FeedEntity report;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final city = _locationLabel(report.location);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: colorScheme.outline.withValues(alpha: 0.14),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  report.campaignId == null
                      ? Icons.assignment_outlined
                      : Icons.campaign_outlined,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    report.campaignTitle ?? 'Community report',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                _StatusChip(
                  label: report.campaignId == null ? 'Report' : 'Campaign',
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              report.content,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium?.copyWith(height: 1.45),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _MetaChip(
                  icon: Icons.schedule_outlined,
                  label: _dateLabel(report.createdAt),
                ),
                if (city != null)
                  _MetaChip(icon: Icons.location_on_outlined, label: city),
                _MetaChip(
                  icon: Icons.chat_bubble_outline,
                  label: '${report.commentsCount} updates',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String? _locationLabel(Map<String, dynamic>? location) {
    if (location == null || location.isEmpty) return null;
    final city = location['city'] ?? location['name'] ?? location['address'];
    return city?.toString();
  }

  String _dateLabel(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    if (difference.inDays > 0) return '${difference.inDays}d ago';
    if (difference.inHours > 0) return '${difference.inHours}h ago';
    return 'Just now';
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: colorScheme.tertiary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: colorScheme.tertiary,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class _MetaChip extends StatelessWidget {
  const _MetaChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 15, color: colorScheme.onSurfaceVariant),
        const SizedBox(width: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

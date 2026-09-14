import 'package:flutter/material.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_stat_item.dart';

class ProfileContributionStats extends StatelessWidget {
  const ProfileContributionStats({
    super.key,
    required this.reports,
    required this.supported,
    required this.impact,
    this.onReportsTap,
  });

  final int reports;
  final int supported;
  final int impact;
  final VoidCallback? onReportsTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: colorScheme.outlineVariant, width: .75),
          bottom: BorderSide(color: colorScheme.outlineVariant, width: .75),
        ),
      ),
      child: Row(
        children: [
          ProfileStatItem(
            value: reports.toString(),
            label: 'Reports',
            icon: Icons.assignment_outlined,
            onTap: onReportsTap,
          ),
          ProfileStatItem(
            value: supported.toString(),
            label: 'Followers',
            icon: Icons.volunteer_activism_outlined,
          ),
          ProfileStatItem(
            value: impact.toString(),
            label: 'Following',
            icon: Icons.auto_graph_rounded,
          ),
        ],
      ),
    );
  }
}

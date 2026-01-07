import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

class ActivityScreen extends HookWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 5);
    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsAccountActivityTitle,
      subtitle: t.settingsAccountActivitySubtitle,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              tabs: [
                Tab(text: t.settingsAccountActivityTabLikes),
                Tab(text: t.settingsAccountActivityTabComments),
                Tab(text: t.settingsAccountActivityTabDonations),
                Tab(text: t.settingsAccountActivityTabArchive),
                Tab(text: t.settingsAccountActivityTabDeleted),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                _LikesTab(),
                _CommentsTab(),
                _DonationsTab(),
                _ArchiveTab(),
                _DeletedTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LikesTab extends StatelessWidget {
  const _LikesTab();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;
    final likes = [
      (
        'Campaign: Help Budi Recover',
        'jakarta_volunteers',
        '2 hours ago',
        'campaign',
      ),
      (
        'Post: New community center opening',
        'community_id',
        '5 hours ago',
        'post',
      ),
      ('Story: Fundraiser success!', 'sarah_fundraiser', '1 day ago', 'story'),
      (
        'Campaign: Support Local Schools',
        'education_fund',
        '2 days ago',
        'campaign',
      ),
      ('Comment by @andi_helper', 'andi_helper', '3 days ago', 'comment'),
    ];

    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        const SizedBox(height: 12),
        _ActivityTileGroup(
          title: t.settingsAccountActivityRecentLikes,
          tiles: likes.map((like) {
            return SettingsTileData(
              title: like.$1,
              subtitle: '@${like.$2} • ${like.$3}',
              icon: _activityIcon(like.$4),
              iconColor: _activityColor(like.$4, colorScheme),
              trailing: IconButton(
                icon: Icon(Icons.favorite, color: colorScheme.error),
                onPressed: () {},
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _CommentsTab extends StatelessWidget {
  const _CommentsTab();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;
    final comments = [
      (
        'Amazing initiative! Keep it up 🙌',
        'Campaign: Help Budi Recover',
        '1 hour ago',
      ),
      ('How can I volunteer?', 'Post: Community center update', '3 hours ago'),
      ('Shared this with my friends', 'Campaign: Local Schools', '1 day ago'),
      ('This is so inspiring!', 'Story: Success milestone', '2 days ago'),
    ];

    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        const SizedBox(height: 12),
        _ActivityTileGroup(
          title: t.settingsAccountActivityRecentComments,
          tiles: comments.map((comment) {
            return SettingsTileData(
              title: comment.$1,
              subtitle: '${comment.$2}\n${comment.$3}',
              icon: Icons.chat_bubble_outline,
              iconColor: colorScheme.primary,
              trailing: IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _DonationsTab extends StatelessWidget {
  const _DonationsTab();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final donations = [
      ('Help Budi Recover', 'Rp 100,000', 'Feb 20, 2025', true),
      ('Support Local Schools', 'Rp 250,000', 'Feb 15, 2025', false),
      ('Flood Relief Fund', 'Rp 50,000', 'Feb 10, 2025', true),
      ('Medical Emergency: Sarah', 'Rp 150,000', 'Feb 5, 2025', false),
    ];

    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        const SizedBox(height: 12),
        EdgeToEdgeSection(
          title: t.settingsAccountDonationsImpactTitle,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _DonationStat(
                label: t.settingsAccountDonationsTotalLabel,
                value: 'Rp 550,000',
                icon: Icons.volunteer_activism,
              ),
              _DonationStat(
                label: t.settingsAccountDonationsCampaignsLabel,
                value: '4',
                icon: Icons.campaign,
              ),
              _DonationStat(
                label: t.settingsAccountDonationsThisMonthLabel,
                value: 'Rp 100,000',
                icon: Icons.calendar_today,
              ),
            ],
          ),
        ),
        const SizedBox(height: 2),
        ...donations.map(
          (donation) => _DonationEntry(
            campaign: donation.$1,
            amount: donation.$2,
            date: donation.$3,
            isRecurring: donation.$4,
          ),
        ),
      ],
    );
  }
}

class _ArchiveTab extends StatelessWidget {
  const _ArchiveTab();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    final archived = [
      ('Campaign: Earthquake Relief 2024', 'Archived 3 months ago'),
      ('Post: Year-end reflection', 'Archived 2 months ago'),
      ('Story: Volunteer day highlights', 'Archived 1 month ago'),
    ];

    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        const SizedBox(height: 12),
        _ActivityTileGroup(
          title: t.settingsAccountActivityArchived,
          tiles: archived.map((item) {
            return SettingsTileData(
              title: item.$1,
              subtitle: item.$2,
              icon: Icons.archive_outlined,
              iconColor: colorScheme.secondary,
              trailing: OutlinedButton(
                onPressed: () {},
                child: Text(t.settingsAccountActivityRestoreButton),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _DeletedTab extends StatelessWidget {
  const _DeletedTab();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        const SizedBox(height: 12),
        EdgeToEdgeSection(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete_outline, size: 72, color: colorScheme.outline),
              const SizedBox(height: 12),
              Text(
                t.settingsAccountActivityDeletedEmptyTitle,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                t.settingsAccountActivityDeletedEmptySubtitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DonationStat extends StatelessWidget {
  const _DonationStat({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Icon(icon, color: colorScheme.primary),
        const SizedBox(height: 8),
        Text(
          value,
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _DonationEntry extends StatelessWidget {
  const _DonationEntry({
    required this.campaign,
    required this.amount,
    required this.date,
    required this.isRecurring,
  });

  final String campaign;
  final String amount;
  final String date;
  final bool isRecurring;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: EdgeToEdgeSection(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: colorScheme.primaryContainer,
              child: Icon(Icons.volunteer_activism, color: colorScheme.primary),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    campaign,
                    style: textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    amount,
                    style: textTheme.titleMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(date, style: textTheme.bodySmall),
                      if (isRecurring) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: colorScheme.secondaryContainer,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            'RECURRING',
                            style: textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSecondaryContainer,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.receipt_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.share_outlined),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActivityTileGroup extends StatelessWidget {
  const _ActivityTileGroup({required this.title, required this.tiles});

  final String title;
  final List<SettingsTileData> tiles;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return EdgeToEdgeSection(
      title: title,
      child: Column(
        children: [
          for (int i = 0; i < tiles.length; i++) ...[
            SettingsTile(data: tiles[i]),
            if (i != tiles.length - 1)
              Divider(
                height: 0,
                indent: tiles[i].icon != null ? 72 : 16,
                endIndent: 16,
                color: colorScheme.outlineVariant.withValues(alpha: 0.4),
              ),
          ],
        ],
      ),
    );
  }
}

IconData _activityIcon(String type) {
  switch (type) {
    case 'campaign':
      return Icons.campaign_outlined;
    case 'post':
      return Icons.feed_outlined;
    case 'story':
      return Icons.auto_stories;
    case 'comment':
      return Icons.chat_bubble_outline;
    default:
      return Icons.favorite_outline;
  }
}

Color _activityColor(String type, ColorScheme colorScheme) {
  switch (type) {
    case 'campaign':
      return colorScheme.primary;
    case 'post':
      return colorScheme.secondary;
    case 'story':
      return colorScheme.tertiary;
    case 'comment':
      return colorScheme.outline;
    default:
      return colorScheme.primary;
  }
}

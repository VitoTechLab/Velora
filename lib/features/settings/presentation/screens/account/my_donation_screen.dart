import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';

class MyDonationScreen extends HookWidget {
  const MyDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedFilter = useState<String>('all');
    final selectedYear = useState<int>(DateTime.now().year);
    final donations = _mockDonations;

    final filteredDonations = switch (selectedFilter.value) {
      'all' => donations,
      'recurring' => donations.where((d) => d.isRecurring).toList(),
      _ => donations.where((d) => d.isMatched).toList(),
    };

    final totalDonated = donations.fold<int>(0, (sum, d) => sum + d.amount);
    final recurringCount = donations.where((d) => d.isRecurring).length;
    final matchedAmount = donations
        .where((d) => d.isMatched)
        .fold<int>(0, (sum, d) => sum + d.amount);

    final currency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsAccountDonationsTitle,
      subtitle: t.settingsAccountDonationsSubtitle,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          const SizedBox(height: 12),
          EdgeToEdgeSection(
            title: t.settingsAccountDonationsImpactTitle,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _StatPill(
                      label: t.settingsAccountDonationsTotalLabel,
                      value: currency.format(totalDonated),
                      icon: Icons.volunteer_activism,
                    ),
                    _StatPill(
                      label: t.settingsAccountDonationsCampaignsLabel,
                      value: '${donations.length}',
                      icon: Icons.campaign_outlined,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(
                  color: Theme.of(
                    context,
                  ).colorScheme.outlineVariant.withValues(alpha: 0.4),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _StatPill(
                      label: t.settingsAccountDonationsRecurringLabel,
                      value: t.settingsAccountDonationsRecurringValue(
                        recurringCount,
                      ),
                      icon: Icons.autorenew,
                    ),
                    _StatPill(
                      label: t.settingsAccountDonationsMatchedLabel,
                      value: currency.format(matchedAmount),
                      icon: Icons.star_outline,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  _FilterChip(
                    label: t.settingsAccountDonationsFilterAll,
                    selected: selectedFilter.value == 'all',
                    onSelected: () => selectedFilter.value = 'all',
                  ),
                  _FilterChip(
                    label: t.settingsAccountDonationsFilterRecurring,
                    selected: selectedFilter.value == 'recurring',
                    onSelected: () => selectedFilter.value = 'recurring',
                  ),
                  _FilterChip(
                    label: t.settingsAccountDonationsFilterMatched,
                    selected: selectedFilter.value == 'matched',
                    onSelected: () => selectedFilter.value = 'matched',
                  ),
                  FilterChip(
                    label: Text('${selectedYear.value}'),
                    avatar: const Icon(Icons.calendar_today, size: 18),
                    selected: false,
                    onSelected: (_) {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 2),
          Expanded(
            child: filteredDonations.isEmpty
                ? const _EmptyState()
                : ListView.separated(
                    padding: const EdgeInsets.only(bottom: 24),
                    itemCount: filteredDonations.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 2),
                    itemBuilder: (context, index) {
                      final donation = filteredDonations[index];
                      return _DonationCard(
                        donation: donation,
                        currency: currency,
                      );
                    },
                  ),
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(t.settingsAccountDonationsExportingToast),
                    ),
                  );
                },
                icon: const Icon(Icons.download_outlined),
                label: Text(t.settingsAccountDonationsExportButton),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DonationCard extends StatelessWidget {
  const _DonationCard({required this.donation, required this.currency});

  final _DonationData donation;
  final NumberFormat currency;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return EdgeToEdgeSection(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: colorScheme.primaryContainer,
            ),
            child: Icon(Icons.campaign, color: colorScheme.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  donation.campaignTitle,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  currency.format(donation.amount),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 14,
                      color: colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      DateFormat.yMMMd().format(donation.date),
                      style: theme.textTheme.bodySmall,
                    ),
                    if (donation.isRecurring) ...[
                      const SizedBox(width: 8),
                      _StatusPill(
                        label: t.settingsAccountDonationsStatusRecurring,
                        background: colorScheme.secondaryContainer,
                        foreground: colorScheme.onSecondaryContainer,
                      ),
                    ],
                    if (donation.isMatched) ...[
                      const SizedBox(width: 8),
                      _StatusPill(
                        label: t.settingsAccountDonationsStatusMatched,
                        background: colorScheme.tertiaryContainer,
                        foreground: colorScheme.onTertiaryContainer,
                        icon: Icons.star,
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
                icon: const Icon(Icons.receipt_long_outlined),
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
    );
  }
}

class _StatPill extends StatelessWidget {
  const _StatPill({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Column(
      children: [
        Icon(icon, color: colorScheme.primary),
        const SizedBox(height: 8),
        Text(
          value,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
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

class _StatusPill extends StatelessWidget {
  const _StatusPill({
    required this.label,
    required this.background,
    required this.foreground,
    this.icon,
  });

  final String label;
  final Color background;
  final Color foreground;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 12, color: foreground),
            const SizedBox(width: 2),
          ],
          Text(
            label.toUpperCase(),
            style: textTheme.labelSmall?.copyWith(
              color: foreground,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  final String label;
  final bool selected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: selected,
        onSelected: (_) => onSelected(),
        selectedColor: colorScheme.primary.withValues(alpha: 0.12),
        checkmarkColor: colorScheme.primary,
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return EdgeToEdgeSection(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.volunteer_activism_outlined,
            size: 72,
            color: colorScheme.outline,
          ),
          const SizedBox(height: 12),
          Text(
            t.settingsAccountDonationsEmptyTitle,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            t.settingsAccountDonationsEmptySubtitle,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {},
            child: Text(t.settingsAccountDonationsEmptyButton),
          ),
        ],
      ),
    );
  }
}

class _DonationData {
  const _DonationData({
    required this.campaignTitle,
    required this.amount,
    required this.date,
    required this.status,
    required this.isRecurring,
    required this.isMatched,
    required this.receiptId,
  });

  final String campaignTitle;
  final int amount;
  final DateTime date;
  final String status;
  final bool isRecurring;
  final bool isMatched;
  final String receiptId;
}

final _mockDonations = [
  _DonationData(
    campaignTitle: 'Help Budi Recover from Accident',
    amount: 250000,
    date: DateTime(2025, 2, 20),
    status: 'Completed',
    isRecurring: false,
    isMatched: true,
    receiptId: 'RCP-2025-02-001',
  ),
  _DonationData(
    campaignTitle: 'Support Local School Library',
    amount: 100000,
    date: DateTime(2025, 2, 15),
    status: 'Completed',
    isRecurring: true,
    isMatched: false,
    receiptId: 'RCP-2025-02-002',
  ),
  _DonationData(
    campaignTitle: 'Flood Relief Fund - Jakarta',
    amount: 500000,
    date: DateTime(2025, 2, 10),
    status: 'Completed',
    isRecurring: false,
    isMatched: true,
    receiptId: 'RCP-2025-02-003',
  ),
  _DonationData(
    campaignTitle: 'Medical Emergency: Sarah Treatment',
    amount: 150000,
    date: DateTime(2025, 1, 25),
    status: 'Completed',
    isRecurring: false,
    isMatched: false,
    receiptId: 'RCP-2025-01-004',
  ),
];

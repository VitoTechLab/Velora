import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_event.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_state.dart';

/// Campaign Earnings Detail Screen
///
/// Detailed dashboard for a single campaign showing:
/// - Time-based earnings metrics (24h, 7d, 30d, All)
/// - Funding progress
/// - Available balance for withdrawal
/// - List of recent donations
/// - Withdrawal history
class CampaignEarningsDetailScreen extends HookWidget {
  const CampaignEarningsDetailScreen({
    super.key,
    required this.campaignId,
  });

  final String campaignId;

  static final _currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  static final _dateFormat = DateFormat('MMM d, y HH:mm');

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final tabController = useTabController(initialLength: 2);
    final selectedTimeRange = useState(3); // 0: 24h, 1: 7d, 2: 30d, 3: All

    // Load campaign data on init
    useEffect(() {
      context.read<CampaignBloc>().add(
            CampaignEvent.getCampaignDetail(campaignId: campaignId),
          );
      context.read<CampaignBloc>().add(
            CampaignEvent.loadDonations(campaignId: campaignId),
          );
      context.read<CampaignBloc>().add(
            CampaignEvent.loadWithdrawals(campaignId: campaignId),
          );
      return null;
    }, [campaignId]);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('Earnings & Activity'),
        backgroundColor: colorScheme.surface,
        actions: [
          IconButton(
            onPressed: () => context.push(
              '/profile/settings/wallet/my-campaigns/$campaignId/bank-settings',
            ),
            icon: const Icon(Icons.settings_outlined),
            tooltip: 'Bank Settings',
          ),
        ],
      ),
      body: BlocBuilder<CampaignBloc, CampaignState>(
        builder: (context, state) {
          // Find campaign from user campaigns or selected campaign
          final campaign = state.userCampaigns.cast<CampaignEntity?>().firstWhere(
                    (c) => c?.id == campaignId,
                    orElse: () => state.selectedCampaign,
                  );

          if (campaign == null) {
            return const Center(child: CircularProgressIndicator());
          }

          final donations = state.donations;
          final withdrawals = state.withdrawals;

          // Calculate metrics based on selected time range
          // For "All time" (index 3), use campaign.amountRaised since donations list is limited
          final metrics = _calculateMetrics(
            donations, 
            selectedTimeRange.value,
            campaign.amountRaised,
            campaign.donorCount,
          );

          return RefreshIndicator(
            onRefresh: () async {
              context.read<CampaignBloc>().add(
                    CampaignEvent.getCampaignDetail(campaignId: campaignId),
                  );
              context.read<CampaignBloc>().add(
                    CampaignEvent.loadDonations(campaignId: campaignId),
                  );
              context.read<CampaignBloc>().add(
                    CampaignEvent.loadWithdrawals(campaignId: campaignId),
                  );
            },
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Time Range Selector
                        SegmentedButton<int>(
                          segments: const [
                            ButtonSegment(value: 0, label: Text('24h')),
                            ButtonSegment(value: 1, label: Text('7d')),
                            ButtonSegment(value: 2, label: Text('30d')),
                            ButtonSegment(value: 3, label: Text('All')),
                          ],
                          selected: {selectedTimeRange.value},
                          onSelectionChanged: (Set<int> newSelection) {
                            selectedTimeRange.value = newSelection.first;
                          },
                          showSelectedIcon: false,
                        ),
                        const SizedBox(height: 24),

                        // Earnings Card
                        _EarningsCard(
                          amount: metrics.amount,
                          count: metrics.count,
                          label: _getTimeRangeLabel(selectedTimeRange.value),
                          colorScheme: colorScheme,
                          theme: theme,
                        ),
                        const SizedBox(height: 16),

                        // Progress & Balance Row
                        Row(
                          children: [
                            Expanded(
                              child: _InfoCard(
                                title: 'Progress',
                                value: '${campaign.progressPercent.toStringAsFixed(0)}%',
                                subtitle:
                                    'of ${_currencyFormat.format(campaign.targetAmount)}',
                                icon: Icons.trending_up,
                                colorScheme: colorScheme,
                                theme: theme,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _InfoCard(
                                title: 'Available',
                                value: _currencyFormat
                                    .format(campaign.currentBalance),
                                subtitle: 'Ready to withdraw',
                                icon: Icons.account_balance_wallet,
                                colorScheme: colorScheme,
                                theme: theme,
                                onTap: () => context.push(
                                  '/profile/settings/wallet/my-campaigns/$campaignId/withdraw',
                                  extra: campaign,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Tabs
                SliverPersistentHeader(
                  delegate: _SliverTabBarDelegate(
                    TabBar(
                      controller: tabController,
                      labelColor: colorScheme.primary,
                      unselectedLabelColor: colorScheme.onSurfaceVariant,
                      indicatorColor: colorScheme.primary,
                      tabs: const [
                        Tab(text: 'Donations'),
                        Tab(text: 'Withdrawals'),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ],
              body: TabBarView(
                controller: tabController,
                children: [
                  _DonationsList(
                    donations: donations,
                    isLoading: state.isLoadingDonations,
                    currencyFormat: _currencyFormat,
                    dateFormat: _dateFormat,
                  ),
                  _WithdrawalsList(
                    withdrawals: withdrawals,
                    isLoading: state.isLoadingWithdrawals,
                    currencyFormat: _currencyFormat,
                    dateFormat: _dateFormat,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  ({double amount, int count}) _calculateMetrics(
    List<DonationEntity> donations,
    int rangeIndex,
    double totalAmountRaised,
    int totalDonorCount,
  ) {
    // For "All time" (index 3), use campaign totals since donations list is limited
    if (rangeIndex == 3) {
      return (amount: totalAmountRaised, count: totalDonorCount);
    }
    
    if (donations.isEmpty) return (amount: 0.0, count: 0);

    final now = DateTime.now();
    DateTime cutoff;

    switch (rangeIndex) {
      case 0: // 24h
        cutoff = now.subtract(const Duration(hours: 24));
        break;
      case 1: // 7d
        cutoff = now.subtract(const Duration(days: 7));
        break;
      case 2: // 30d
        cutoff = now.subtract(const Duration(days: 30));
        break;
      default: // All
        cutoff = DateTime(2000); // Far past
    }

    final filtered = donations.where((d) => d.createdAt.isAfter(cutoff));

    final amount = filtered.fold<double>(
      0,
      (sum, d) => sum + d.amountTotal,
    );

    return (amount: amount, count: filtered.length);
  }

  String _getTimeRangeLabel(int index) {
    switch (index) {
      case 0:
        return 'Last 24 Hours';
      case 1:
        return 'Last 7 Days';
      case 2:
        return 'Last 30 Days';
      default:
        return 'All Time Earnings';
    }
  }
}

class _EarningsCard extends StatelessWidget {
  const _EarningsCard({
    required this.amount,
    required this.count,
    required this.label,
    required this.colorScheme,
    required this.theme,
  });

  final double amount;
  final int count;
  final String label;
  final ColorScheme colorScheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withValues(alpha: 0.3),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onPrimary.withValues(alpha: 0.8),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            CampaignEarningsDetailScreen._currencyFormat.format(amount),
            style: theme.textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: colorScheme.onPrimary.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$count donations',
              style: theme.textTheme.labelMedium?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.colorScheme,
    required this.theme,
    this.onTap,
  });

  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final ColorScheme colorScheme;
  final ThemeData theme;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 16,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                value,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: onTap != null
                            ? colorScheme.primary
                            : colorScheme.onSurfaceVariant,
                        fontWeight:
                            onTap != null ? FontWeight.w600 : FontWeight.normal,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (onTap != null)
                    Icon(
                      Icons.chevron_right,
                      size: 16,
                      color: colorScheme.primary,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DonationsList extends StatelessWidget {
  const _DonationsList({
    required this.donations,
    required this.isLoading,
    required this.currencyFormat,
    required this.dateFormat,
  });

  final List<DonationEntity> donations;
  final bool isLoading;
  final NumberFormat currencyFormat;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (donations.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.volunteer_activism_outlined,
              size: 64,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            const SizedBox(height: 16),
            const Text('No donations yet'),
          ],
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: donations.length,
      separatorBuilder: (_, __) => const Divider(height: 32),
      itemBuilder: (context, index) {
        final donation = donations[index];
        final isAnonymous = donation.isAnonymous;
        final hasMessage = donation.message != null && donation.message!.isNotEmpty;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Text(
                isAnonymous ? 'A' : (donation.donorDisplayName ?? donation.donorUsername ?? 'U')[0].toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          isAnonymous 
                              ? 'Anonymous Donor' 
                              : (donation.donorDisplayName ?? donation.donorUsername ?? 'Unknown'),
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        currencyFormat.format(donation.amountTotal),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    dateFormat.format(donation.createdAt),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                  if (hasMessage) ...[
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '"${donation.message}"',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontStyle: FontStyle.italic,
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _WithdrawalsList extends StatelessWidget {
  const _WithdrawalsList({
    required this.withdrawals,
    required this.isLoading,
    required this.currencyFormat,
    required this.dateFormat,
  });

  final List<WithdrawalEntity> withdrawals;
  final bool isLoading;
  final NumberFormat currencyFormat;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (withdrawals.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.history,
              size: 64,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            const SizedBox(height: 16),
            const Text('No withdrawal history'),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: withdrawals.length,
      itemBuilder: (context, index) {
        final withdrawal = withdrawals[index];
        final isProcessed = withdrawal.status == WithdrawalStatus.processed;

        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: isProcessed
                ? Colors.green.withValues(alpha: 0.1)
                : Colors.orange.withValues(alpha: 0.1),
            child: Icon(
              isProcessed ? Icons.check : Icons.access_time,
              color: isProcessed ? Colors.green : Colors.orange,
            ),
          ),
          title: Text(
            currencyFormat.format(withdrawal.amount),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dateFormat.format(withdrawal.createdAt)),
              Text(
                'To: ${withdrawal.targetBankName} - ${withdrawal.targetAccountNumber}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          trailing: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isProcessed
                  ? Colors.green.withValues(alpha: 0.1)
                  : Colors.orange.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              isProcessed ? 'Processed' : 'Pending',
              style: TextStyle(
                fontSize: 10,
                color: isProcessed ? Colors.green : Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverTabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.surface,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}

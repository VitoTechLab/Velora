import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_event.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_state.dart';

/// My Campaigns Screen - Dashboard for campaign creators.
///
/// Shows all campaigns owned by the current user with:
/// - Total available balance across all campaigns
/// - List of campaigns with progress and balance info
/// - Navigation to detailed earnings view
class MyCampaignsScreen extends HookWidget {
  const MyCampaignsScreen({super.key});

  static final _currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Get current user ID
    final supabase = getIt<SupabaseClient>();
    final userId = supabase.auth.currentUser?.id;

    // Load user campaigns on first build
    useEffect(() {
      if (userId != null) {
        context.read<CampaignBloc>().add(
              CampaignEvent.loadUserCampaigns(userId: userId),
            );
      }
      return null;
    }, [userId]);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('My Campaigns'),
        backgroundColor: colorScheme.surface,
        surfaceTintColor: Colors.transparent,
      ),
      body: userId == null
          ? _buildLoginPrompt(context, colorScheme)
          : BlocBuilder<CampaignBloc, CampaignState>(
              buildWhen: (prev, curr) =>
                  prev.userCampaigns != curr.userCampaigns ||
                  prev.isLoadingUserCampaigns != curr.isLoadingUserCampaigns ||
                  prev.errorUserCampaigns != curr.errorUserCampaigns,
              builder: (context, state) {
                if (state.isLoadingUserCampaigns) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.errorUserCampaigns != null) {
                  return _buildErrorState(
                    context,
                    state.errorUserCampaigns!,
                    () => context.read<CampaignBloc>().add(
                          CampaignEvent.loadUserCampaigns(userId: userId),
                        ),
                  );
                }

                if (state.userCampaigns.isEmpty) {
                  return _buildEmptyState(context, colorScheme);
                }

                return _buildContent(
                  context,
                  state.userCampaigns,
                  theme,
                  colorScheme,
                );
              },
            ),
    );
  }

  Widget _buildLoginPrompt(BuildContext context, ColorScheme colorScheme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.login,
            size: 64,
            color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'Please log in to view your campaigns',
            style: TextStyle(color: colorScheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(
    BuildContext context,
    String error,
    VoidCallback onRetry,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(error, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, ColorScheme colorScheme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.campaign_outlined,
              size: 80,
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
            ),
            const SizedBox(height: 24),
            Text(
              'No Campaigns Yet',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Create your first campaign to start\nreceiving donations',
              textAlign: TextAlign.center,
              style: TextStyle(color: colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () => context.push('/campaign/create'),
              icon: const Icon(Icons.add),
              label: const Text('Create Campaign'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    List<CampaignEntity> campaigns,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    // Calculate total available balance
    final totalBalance = campaigns.fold<double>(
      0,
      (sum, campaign) => sum + campaign.currentBalance,
    );

    return RefreshIndicator(
      onRefresh: () async {
        final userId = getIt<SupabaseClient>().auth.currentUser?.id;
        if (userId != null) {
          context.read<CampaignBloc>().add(
                CampaignEvent.loadUserCampaigns(userId: userId),
              );
          // Wait for state update
          await Future.delayed(const Duration(milliseconds: 500));
        }
      },
      child: CustomScrollView(
        slivers: [
          // Total Balance Card
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: _TotalBalanceCard(
                totalBalance: totalBalance,
                campaignCount: campaigns.length,
                colorScheme: colorScheme,
                theme: theme,
              ),
            ),
          ),

          // Section header
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Text(
                'Your Campaigns',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Campaign List
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.separated(
              itemCount: campaigns.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final campaign = campaigns[index];
                return _CampaignCard(
                  campaign: campaign,
                  onTap: () => context.push(
                    '/wallet/my-campaigns/${campaign.id}/earnings',
                  ),
                  colorScheme: colorScheme,
                  theme: theme,
                );
              },
            ),
          ),

          // Bottom padding
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
        ],
      ),
    );
  }
}

class _TotalBalanceCard extends StatelessWidget {
  const _TotalBalanceCard({
    required this.totalBalance,
    required this.campaignCount,
    required this.colorScheme,
    required this.theme,
  });

  final double totalBalance;
  final int campaignCount;
  final ColorScheme colorScheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorScheme.primaryContainer,
            colorScheme.primary.withValues(alpha: 0.7),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_balance_wallet,
                color: colorScheme.onPrimaryContainer,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Total Available Balance',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            MyCampaignsScreen._currencyFormat.format(totalBalance),
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'From $campaignCount campaign${campaignCount != 1 ? 's' : ''}',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onPrimaryContainer.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}

class _CampaignCard extends StatelessWidget {
  const _CampaignCard({
    required this.campaign,
    required this.onTap,
    required this.colorScheme,
    required this.theme,
  });

  final CampaignEntity campaign;
  final VoidCallback onTap;
  final ColorScheme colorScheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final progress = campaign.targetAmount > 0
        ? (campaign.amountRaised / campaign.targetAmount).clamp(0.0, 1.0)
        : 0.0;
    final progressPercent = (progress * 100).toStringAsFixed(0);

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Campaign Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: campaign.coverImageUrl != null
                    ? Image.network(
                        campaign.coverImageUrl!,
                        width: 72,
                        height: 72,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => _placeholderImage(),
                      )
                    : _placeholderImage(),
              ),
              const SizedBox(width: 16),

              // Campaign Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title + Status
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            campaign.title,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _StatusBadge(
                          status: campaign.status,
                          colorScheme: colorScheme,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Progress bar
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: progress,
                        backgroundColor: colorScheme.surfaceContainerHighest,
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Stats row
                    Row(
                      children: [
                        Text(
                          '$progressPercent% funded',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '•',
                          style: TextStyle(color: colorScheme.outline),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${campaign.donorCount} donors',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Balance
                    Row(
                      children: [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 14,
                          color: colorScheme.tertiary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Balance: ${MyCampaignsScreen._currencyFormat.format(campaign.currentBalance)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.tertiary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Arrow
              Icon(
                Icons.chevron_right,
                color: colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _placeholderImage() {
    return Container(
      width: 72,
      height: 72,
      color: colorScheme.surfaceContainerHighest,
      child: Icon(
        Icons.campaign,
        color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({
    required this.status,
    required this.colorScheme,
  });

  final CampaignStatus status;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    String label;

    switch (status) {
      case CampaignStatus.active:
        backgroundColor = Colors.green.withValues(alpha: 0.15);
        textColor = Colors.green;
        label = 'Active';
        break;
      case CampaignStatus.paused:
        backgroundColor = Colors.orange.withValues(alpha: 0.15);
        textColor = Colors.orange;
        label = 'Paused';
        break;
      case CampaignStatus.completed:
        backgroundColor = colorScheme.primary.withValues(alpha: 0.15);
        textColor = colorScheme.primary;
        label = 'Completed';
        break;
      case CampaignStatus.withdrawn:
        backgroundColor = Colors.grey.withValues(alpha: 0.15);
        textColor = Colors.grey;
        label = 'Withdrawn';
        break;
      case CampaignStatus.banned:
        backgroundColor = Colors.red.withValues(alpha: 0.15);
        textColor = Colors.red;
        label = 'Banned';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}

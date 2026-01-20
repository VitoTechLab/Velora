import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/campaign_detail_model.dart';
import '../../domain/entities/campaign_model.dart';
import '../../domain/entities/campaign_type.dart';
import '../bloc/campaign_bloc.dart';
import '../bloc/campaign_event.dart';
import '../bloc/campaign_state.dart';
import '../widgets/campaign_list_card.dart';
import '../widgets/campaign_empty_state.dart';
import 'campaign_detail_screen.dart';

/// Screen to display campaigns by category with data from Supabase
class CampaignListScreen extends HookWidget {
  final String categoryName;
  final String categoryFilter;

  const CampaignListScreen({
    super.key,
    required this.categoryName,
    required this.categoryFilter,
  });

  /// Static method to show screen
  static void show(
    BuildContext context, {
    required String categoryName,
    required String categoryFilter,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (_) => getIt<CampaignBloc>()
            ..add(const CampaignEvent.loadCampaigns(limit: 50)),
          child: CampaignListScreen(
            categoryName: categoryName,
            categoryFilter: categoryFilter,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    // Map entity to model
    CampaignModel mapEntityToModel(dynamic entity) {
      final now = DateTime.now();
      String timeLeftLabel;
      if (entity.endDate == null) {
        timeLeftLabel = 'Flexible';
      } else {
        final diff = entity.endDate!.difference(now);
        if (diff.isNegative) {
          timeLeftLabel = 'Ended';
        } else if (diff.inDays >= 1) {
          timeLeftLabel = 'D-${diff.inDays}';
        } else if (diff.inHours >= 1) {
          timeLeftLabel = '${diff.inHours}h';
        } else {
          timeLeftLabel = '${diff.inMinutes}m';
        }
      }

      return CampaignModel(
        id: entity.id,
        title: entity.title,
        creatorName: entity.organizerUsername ?? 'Organizer',
        isVerified: entity.isVerified,
        type: CampaignType.donation,
        category: entity.categoryName ?? 'General',
        raised: entity.amountRaised,
        target: entity.targetAmount,
        donorsCount: entity.donorCount,
        updatesCount: 0,
        milestonesCount: 0,
        timeLeftLabel: timeLeftLabel,
        isFeatured: entity.isVerified,
      );
    }

    // Navigate to campaign detail
    void onCampaignTap(CampaignModel campaign, dynamic entity) {
      final detailModel = CampaignDetailModel(
        id: campaign.id,
        title: campaign.title,
        creatorName: campaign.creatorName,
        isVerified: campaign.isVerified,
        type: campaign.type,
        category: campaign.category,
        raised: campaign.raised,
        target: campaign.target,
        timeLeftLabel: campaign.timeLeftLabel,
        donorsCount: campaign.donorsCount,
        updatesCount: campaign.updatesCount,
        milestonesCount: campaign.milestonesCount,
        commentsCount: 0,
        description: entity?.description,
        coverImageUrl: entity?.coverImageUrl,
      );
      Navigator.push(
        context,
        CampaignDetailScreen.route(campaign: detailModel),
      );
    }

    // Refresh handler
    Future<void> onRefresh() async {
      context.read<CampaignBloc>().add(
            const CampaignEvent.refreshCampaigns(limit: 50),
          );
      await Future.delayed(const Duration(milliseconds: 400));
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          categoryName,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
      ),
      body: BlocBuilder<CampaignBloc, CampaignState>(
        builder: (context, state) {
          // Filter campaigns by category
          final allCampaigns = state.campaigns
              .where((c) => c.categoryName == categoryFilter)
              .toList();
          final campaignModels = allCampaigns.map(mapEntityToModel).toList();

          // Loading initial state
          if (state.isLoadingCampaigns && campaignModels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: colorScheme.primary),
                  const SizedBox(height: 16),
                  Text(
                    'Loading campaigns...',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            );
          }

          // Error state
          if (state.errorCampaigns != null && campaignModels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 64, color: colorScheme.error),
                  const SizedBox(height: 16),
                  Text(
                    state.errorCampaigns!,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: () => context.read<CampaignBloc>().add(
                          const CampaignEvent.loadCampaigns(limit: 50),
                        ),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Try Again'),
                  ),
                ],
              ),
            );
          }

          // Empty state
          if (campaignModels.isEmpty) {
            return RefreshIndicator(
              onRefresh: onRefresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    child: CampaignEmptyState(
                      onRetry: () => context.read<CampaignBloc>().add(
                            const CampaignEvent.loadCampaigns(limit: 50),
                          ),
                    ),
                  ),
                ],
              ),
            );
          }

          // List with campaigns
          return RefreshIndicator(
            onRefresh: onRefresh,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              slivers: [
                // Header with count
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                    child: Text(
                      '${campaignModels.length} campaign${campaignModels.length != 1 ? 's' : ''} found',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),

                // Campaign list
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final campaign = campaignModels[index];
                        final entity = allCampaigns[index];
                        return CampaignListCard(
                          key: ValueKey('campaign_${campaign.id}'),
                          campaign: campaign,
                          onTap: () => onCampaignTap(campaign, entity),
                        );
                      },
                      childCount: campaignModels.length,
                    ),
                  ),
                ),

                // End of list indicator
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
                    child: Center(
                      child: Text(
                        l10n?.campaignEndOfList ?? 'End of list',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                ),

                // Bottom spacing
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
              ],
            ),
          );
        },
      ),
    );
  }
}

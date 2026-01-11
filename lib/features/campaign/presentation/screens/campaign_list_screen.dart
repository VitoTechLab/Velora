import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/campaign_model.dart';
import '../../data/mock_campaigns.dart';
import '../widgets/campaign_list_card.dart';
import '../widgets/campaign_empty_state.dart';

/// Screen to display campaigns by category with pagination
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
        builder: (context) => CampaignListScreen(
          categoryName: categoryName,
          categoryFilter: categoryFilter,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);
    final scrollController = useScrollController();

    // State management
    final campaigns = useState<List<CampaignModel>>([]);
    final isLoading = useState(false);
    final isLoadingMore = useState(false);
    final hasMore = useState(true);
    final cursor = useState<String?>(null);
    final error = useState<String?>(null);

    // Pagination config
    const int pageSize = 20;

    // Load initial data
    Future<void> loadCampaigns({bool isRefresh = false}) async {
      if (isRefresh) {
        cursor.value = null;
        hasMore.value = true;
        campaigns.value = [];
      }

      if (!hasMore.value) return;

      if (isRefresh || campaigns.value.isEmpty) {
        isLoading.value = true;
      } else {
        isLoadingMore.value = true;
      }

      error.value = null;

      try {
        // Simulate API call with delay
        await Future.delayed(const Duration(milliseconds: 800));

        // Filter campaigns by category
        final allCampaigns = mockCampaigns
            .where((c) => c.category == categoryFilter)
            .toList();

        // Simulate pagination
        final startIndex = cursor.value != null
            ? int.tryParse(cursor.value!) ?? 0
            : 0;
        final endIndex = (startIndex + pageSize).clamp(0, allCampaigns.length);
        final newCampaigns = allCampaigns.sublist(startIndex, endIndex);

        // Update state
        if (isRefresh || campaigns.value.isEmpty) {
          campaigns.value = newCampaigns;
        } else {
          campaigns.value = [...campaigns.value, ...newCampaigns];
        }

        // Update cursor and hasMore
        if (endIndex >= allCampaigns.length) {
          hasMore.value = false;
          cursor.value = null;
        } else {
          cursor.value = endIndex.toString();
        }
      } catch (e) {
        error.value = 'Failed to load campaigns';
      } finally {
        isLoading.value = false;
        isLoadingMore.value = false;
      }
    }

    // Scroll listener for infinite scroll
    void onScroll() {
      if (!scrollController.hasClients) return;

      final maxScroll = scrollController.position.maxScrollExtent;
      final currentScroll = scrollController.position.pixels;
      const threshold = 200.0;

      if (currentScroll >= maxScroll - threshold) {
        if (!isLoadingMore.value && !isLoading.value && hasMore.value) {
          loadCampaigns();
        }
      }
    }

    // Refresh handler
    Future<void> onRefresh() async {
      await loadCampaigns(isRefresh: true);
    }

    // Campaign tap handler
    void onCampaignTap(CampaignModel campaign) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('Campaign Detail'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    campaign.title,
                    style: theme.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'ID: ${campaign.id}',
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    // Initialize
    useEffect(() {
      loadCampaigns();
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, []);

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
      body: Builder(
        builder: (context) {
          // Loading initial state
          if (isLoading.value && campaigns.value.isEmpty) {
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
          if (error.value != null && campaigns.value.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 64, color: colorScheme.error),
                  const SizedBox(height: 16),
                  Text(
                    error.value!,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: () => loadCampaigns(isRefresh: true),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Try Again'),
                  ),
                ],
              ),
            );
          }

          // Empty state
          if (campaigns.value.isEmpty) {
            return RefreshIndicator(
              onRefresh: onRefresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    child: CampaignEmptyState(
                      onRetry: () => loadCampaigns(isRefresh: true),
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
              controller: scrollController,
              slivers: [
                // Header with count
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                    child: Text(
                      '${campaigns.value.length} campaign${campaigns.value.length != 1 ? 's' : ''} found',
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
                        final campaign = campaigns.value[index];
                        return CampaignListCard(
                          key: ValueKey('campaign_${campaign.id}'),
                          campaign: campaign,
                          onTap: () => onCampaignTap(campaign),
                        );
                      },
                      childCount: campaigns.value.length,
                      semanticIndexCallback: (widget, localIndex) => localIndex,
                    ),
                  ),
                ),

                // Loading more indicator
                if (isLoadingMore.value)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                  ),

                // End of list indicator
                if (!hasMore.value && campaigns.value.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
                      child: Center(
                        child: Text(
                          l10n?.campaignEndOfList ?? 'No more campaigns',
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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../../routes/app_router.dart';
import '../../domain/entities/campaign_detail_model.dart';
import '../../domain/entities/campaign_entity.dart';
import '../../domain/entities/campaign_model.dart';
import '../../domain/entities/campaign_type.dart';
import '../../domain/entities/sort_option.dart';
import '../bloc/campaign_bloc.dart';
import '../bloc/campaign_event.dart';
import '../bloc/campaign_state.dart';
import '../widgets/campaign_search_field.dart';
import '../widgets/campaign_chips.dart';
import '../widgets/elegant_featured_carousel.dart';
import '../widgets/campaign_category_section.dart';
import '../widgets/campaign_empty_state.dart';
import 'campaign_detail_screen.dart';
import 'campaign_list_screen.dart';

// ============================================================================
// MAIN SCREEN
// ============================================================================

class CampaignScreen extends HookWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Filter: null = All, 'mine' = My Campaigns, otherwise categoryId
    final selectedFilter = useState<String?>(null);
    final selectedSort = useState(SortOption.trending);
    final searchQuery = useState<String>('');
    final searchController = useTextEditingController();
    final debouncer = useRef<Timer?>(null);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    final authState = context.read<AuthBloc>().state;
    final currentUserId = authState.userId;

    useEffect(() {
      final bloc = context.read<CampaignBloc>();
      bloc.add(const CampaignEvent.loadCampaigns(limit: 50));
      bloc.add(const CampaignEvent.loadCategories());
      if (currentUserId != null) {
        bloc.add(CampaignEvent.loadUserCampaigns(userId: currentUserId));
      }
      return () {
        debouncer.value?.cancel();
      };
    }, const []);

    void onSearchChanged(String query) {
      debouncer.value?.cancel();
      debouncer.value = Timer(const Duration(milliseconds: 400), () {
        searchQuery.value = query;
        if (query.trim().isNotEmpty) {
          context.read<CampaignBloc>().add(
            CampaignEvent.searchCampaigns(query: query.trim(), limit: 20),
          );
        }
      });
    }

    CampaignModel mapEntityToModel(CampaignEntity entity) {
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
        investorsCount: null,
        equityChangePct: null,
        timeLeftLabel: timeLeftLabel,
        isFeatured: entity.isVerified,
        imageUrl: entity.coverImageUrl,
      );
    }

    List<CampaignModel> applyFilters(
      List<CampaignEntity> allCampaigns,
      List<CampaignEntity> userCampaigns,
      String? filter,
      SortOption sort,
    ) {
      List<CampaignEntity> source;

      // Determine source based on filter
      if (filter == 'mine') {
        source = userCampaigns;
      } else if (filter != null) {
        // Filter by categoryId
        source = allCampaigns.where((c) => c.categoryId == filter).toList();
      } else {
        source = allCampaigns;
      }

      var models = source.map(mapEntityToModel).toList();

      // Apply sort
      switch (sort) {
        case SortOption.newest:
          models = models.reversed.toList();
          break;
        case SortOption.endingSoon:
          models = models
              .where(
                (c) =>
                    c.timeLeftLabel.contains('h') ||
                    (int.tryParse(
                              c.timeLeftLabel.replaceAll(RegExp(r'[^0-9]'), ''),
                            ) ??
                            100) <
                        7,
              )
              .toList();
          break;
        case SortOption.mostFunded:
          models = models.toList()
            ..sort((a, b) => b.progressPercent.compareTo(a.progressPercent));
          break;
        case SortOption.verified:
          models = models.where((c) => c.isVerified).toList();
          break;
        case SortOption.trending:
          break;
      }

      return models;
    }

    Future<void> onRefresh(BuildContext context) async {
      final bloc = context.read<CampaignBloc>();
      bloc.add(const CampaignEvent.refreshCampaigns(limit: 50));
      bloc.add(const CampaignEvent.loadCategories());
      if (currentUserId != null) {
        bloc.add(CampaignEvent.loadUserCampaigns(userId: currentUserId));
      }

      await bloc.stream.firstWhere((state) => !state.isRefreshingCampaigns);
    }

    // Navigate to campaign detail
    void onCampaignTap(
      BuildContext ctx,
      CampaignModel campaign,
      List<CampaignEntity> entities,
    ) {
      // Find the original entity to get full data
      final entity = entities.firstWhere(
        (e) => e.id == campaign.id,
        orElse: () => entities.first,
      );

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
        description: entity.description,
        coverImageUrl: entity.coverImageUrl,
      );

      Navigator.push(
        ctx,
        CampaignDetailScreen.route(
          campaign: detailModel,
          bloc: ctx.read<CampaignBloc>(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: BlocBuilder<CampaignBloc, CampaignState>(
        builder: (context, state) {
          // If actively searching, use search results; otherwise use regular campaigns
          final isSearching = searchQuery.value.trim().isNotEmpty;
          List<CampaignModel> campaignsToShow;

          if (isSearching && state.searchResults.isNotEmpty) {
            // Map search results to CampaignModel
            campaignsToShow = state.searchResults
                .map((e) => mapEntityToModel(e))
                .toList();
          } else {
            campaignsToShow = applyFilters(
              state.campaigns,
              state.userCampaigns,
              selectedFilter.value,
              selectedSort.value,
            );
          }

          final featuredCampaigns = campaignsToShow
              .where((c) => c.isFeatured)
              .toList();

          // Group by category dynamically
          final campaignsByCategory = <String, List<CampaignModel>>{};
          final uncategorizedCampaigns = <CampaignModel>[];

          for (final campaign in campaignsToShow) {
            final catName = campaign.category;
            if (catName.isNotEmpty && catName != 'General') {
              campaignsByCategory.putIfAbsent(catName, () => []);
              campaignsByCategory[catName]!.add(campaign);
            } else {
              uncategorizedCampaigns.add(campaign);
            }
          }

          // If no category sections but campaigns exist, show all as "All Campaigns"
          final showAllCampaignsSection =
              campaignsByCategory.isEmpty &&
              (campaignsToShow.isNotEmpty || uncategorizedCampaigns.isNotEmpty);

          return RefreshIndicator(
            onRefresh: () => onRefresh(context),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  backgroundColor: colorScheme.surface,
                  elevation: 0,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: IconButton(
                      onPressed: () {
                        context.pushNamed(AppRouteName.createCampaignPost);
                      },
                      tooltip: l10n?.chatSearchScopeCampaigns ?? 'Campaigns',
                      icon: Icon(Icons.add_rounded, color: colorScheme.primary),
                    ),
                  ),
                  title: Text(
                    l10n?.chatSearchScopeCampaigns ?? 'Campaigns',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Search Field with real functionality
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                        child: CampaignSearchField(
                          controller: searchController,
                          onChanged: onSearchChanged,
                        ),
                      ),

                      // Filter/Sort Chips
                      CampaignChips(
                        selectedFilter: selectedFilter.value,
                        categories: state.categories,
                        isLoadingCategories: state.isLoadingCategories,
                        selectedSort: selectedSort.value,
                        onFilterSelected: (filter) {
                          selectedFilter.value = filter;
                          // Clear search when changing filters
                          if (searchQuery.value.isNotEmpty) {
                            searchController.clear();
                            searchQuery.value = '';
                          }
                        },
                        onSortSelected: (sort) {
                          selectedSort.value = sort;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Show search results indicator
                      if (isSearching) ...[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 16,
                                color: colorScheme.primary,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Search results for "${searchQuery.value}"',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '${campaignsToShow.length} found',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],

                      // Featured Carousel (only when not searching)
                      if (!isSearching && featuredCampaigns.isNotEmpty) ...[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 8),
                          child: Text(
                            l10n?.campaignFeaturedTitle ?? 'Featured Campaigns',
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onSurface,
                            ),
                          ),
                        ),
                        ElegantFeaturedCarousel(
                          campaigns: featuredCampaigns,
                          onCampaignTap: (campaign) =>
                              onCampaignTap(context, campaign, state.campaigns),
                        ),
                      ],

                      // Dynamic Category Sections
                      ...campaignsByCategory.entries.map(
                        (entry) => CampaignCategorySection(
                          categoryName: entry.key,
                          campaigns: entry.value,
                          onCampaignTap: (campaign) =>
                              onCampaignTap(context, campaign, state.campaigns),
                          onSeeMore: () {
                            CampaignListScreen.show(
                              context,
                              categoryName: entry.key,
                              categoryFilter: entry.key,
                            );
                          },
                        ),
                      ),

                      if (showAllCampaignsSection) ...[
                        CampaignCategorySection(
                          categoryName: isSearching
                              ? 'Search Results'
                              : 'All Campaigns',
                          campaigns: campaignsToShow,
                          onCampaignTap: (campaign) =>
                              onCampaignTap(context, campaign, state.campaigns),
                          onSeeMore: () {
                            CampaignListScreen.show(
                              context,
                              categoryName: 'All Campaigns',
                              categoryFilter: '', // Empty to show all
                            );
                          },
                        ),
                      ],

                      if (uncategorizedCampaigns.isNotEmpty &&
                          !showAllCampaignsSection) ...[
                        CampaignCategorySection(
                          categoryName: 'General',
                          campaigns: uncategorizedCampaigns,
                          onCampaignTap: (campaign) =>
                              onCampaignTap(context, campaign, state.campaigns),
                          onSeeMore: () {
                            CampaignListScreen.show(
                              context,
                              categoryName: 'General',
                              categoryFilter: 'General',
                            );
                          },
                        ),
                      ],

                      const SizedBox(height: 24),
                    ],
                  ),
                ),

                // Loading indicator
                if (state.isLoadingCampaigns || state.isSearching)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),

                // Empty state
                if (campaignsToShow.isEmpty &&
                    !state.isLoadingCampaigns &&
                    !state.isSearching)
                  SliverFillRemaining(
                    child: CampaignEmptyState(
                      onRetry: () {
                        selectedFilter.value = null;
                        selectedSort.value = SortOption.trending;
                        searchController.clear();
                        searchQuery.value = '';
                        context.read<CampaignBloc>().add(
                          const CampaignEvent.loadCampaigns(limit: 50),
                        );
                      },
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

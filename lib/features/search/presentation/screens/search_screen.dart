import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/features/campaign/presentation/screens/campaign_list_screen.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_event.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_state.dart';
import 'package:velora/features/search/domain/entities/campaign_category.dart';
import 'package:velora/features/search/presentation/bloc/search_bloc.dart';
import 'package:velora/features/search/presentation/bloc/search_event.dart';
import 'package:velora/features/search/presentation/bloc/search_state.dart';
import 'package:velora/features/search/presentation/mappers/campaign_search_result_mapper.dart';
import 'package:velora/features/search/presentation/widgets/category_card.dart';
import 'package:velora/features/search/presentation/widgets/search_user_card.dart';
import 'package:velora/features/search/presentation/widgets/search_campaign_card.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    final scrollController = useScrollController();
    final showStickyHeader = useState(false);
    final searchController = useTextEditingController();
    final selectedTab = useState(0); // 0 = All, 1 = Users, 2 = Campaigns

    // Track scroll position for sticky header
    void onScroll() {
      if (!scrollController.hasClients) return;

      final offset = scrollController.offset;
      final shouldShow = offset > 100;

      if (shouldShow != showStickyHeader.value) {
        showStickyHeader.value = shouldShow;
      }
    }

    useEffect(() {
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    // Handle search
    void onSearchSubmit(String query, SearchBloc bloc) {
      if (query.trim().isEmpty) {
        bloc.add(const SearchEvent.clearSearch());
        return;
      }

      if (selectedTab.value == 1) {
        bloc.add(SearchEvent.searchUsers(query: query));
      } else if (selectedTab.value == 2) {
        bloc.add(SearchEvent.searchCampaigns(query: query));
      } else {
        bloc.add(SearchEvent.searchAll(query: query));
      }
    }

    // Handle category tap
    void onCategoryTap(CampaignCategory category) {
      CampaignListScreen.show(
        context,
        categoryName: category.name,
        categoryFilter: category.id,
      );
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(
          create: (context) =>
              getIt<CampaignBloc>()
                ..add(const CampaignEvent.loadCampaigns(limit: 10)),
        ),
      ],
      child: Builder(
        builder: (context) {
          final bloc = context.read<SearchBloc>();

          return Scaffold(
            backgroundColor: colorScheme.surface,
            body: Stack(
              children: [
                CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverAppBar(
                      floating: false,
                      pinned: false,
                      expandedHeight: 200,
                      backgroundColor: colorScheme.surface,
                      elevation: 0,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n?.searchTitle ?? 'Search',
                                style: theme.textTheme.displaySmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.onSurface,
                                ),
                              ),
                              const SizedBox(height: 16),
                              _SearchField(
                                controller: searchController,
                                onSubmit: (query) =>
                                    onSearchSubmit(query, bloc),
                                isSticky: false,
                              ),
                              const SizedBox(height: 12),
                              _SearchTabs(
                                selectedTab: selectedTab.value,
                                onTabChanged: (index) {
                                  selectedTab.value = index;
                                  if (searchController.text.isNotEmpty) {
                                    onSearchSubmit(searchController.text, bloc);
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {
                        if (state.lastQuery != null &&
                            state.lastQuery!.isNotEmpty) {
                          if (state.isLoadingUsers ||
                              state.isLoadingCampaigns) {
                            return const SliverFillRemaining(
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          return SliverList(
                            delegate: SliverChildListDelegate([
                              if (state.users.isNotEmpty) ...[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20,
                                    24,
                                    20,
                                    12,
                                  ),
                                  child: Text(
                                    'Users',
                                    style: theme.textTheme.titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: colorScheme.onSurface,
                                        ),
                                  ),
                                ),
                                ...state.users.map(
                                  (user) =>
                                      SearchUserCard(user: user, onTap: () {}),
                                ),
                              ],
                              if (state.campaigns.isNotEmpty) ...[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20,
                                    24,
                                    20,
                                    12,
                                  ),
                                  child: Text(
                                    'Campaigns',
                                    style: theme.textTheme.titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: colorScheme.onSurface,
                                        ),
                                  ),
                                ),
                                ...state.campaigns.map(
                                  (campaign) => SearchCampaignCard(
                                    campaign: campaign,
                                    onTap: () {},
                                  ),
                                ),
                              ],
                              if (state.users.isEmpty &&
                                  state.campaigns.isEmpty)
                                Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.search_off,
                                          size: 64,
                                          color: colorScheme.onSurfaceVariant
                                              .withValues(alpha: 0.5),
                                        ),
                                        const SizedBox(height: 16),
                                        Text(
                                          'No results found',
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                                color: colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ]),
                          );
                        }

                        // Default content: Discover campaigns from real data
                        return BlocBuilder<CampaignBloc, CampaignState>(
                          builder: (context, campaignState) {
                            return SliverList(
                              delegate: SliverChildListDelegate([
                                // Discover section with real campaigns
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20,
                                    24,
                                    20,
                                    16,
                                  ),
                                  child: Text(
                                    l10n?.searchDiscoverTitle ??
                                        'Discover something new',
                                    style: theme.textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: colorScheme.onSurface,
                                    ),
                                  ),
                                ),
                                if (campaignState.isLoadingCampaigns)
                                  const SizedBox(
                                    height: 200,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  )
                                else if (campaignState.campaigns.isNotEmpty)
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      itemCount: campaignState.campaigns
                                          .take(10)
                                          .length,
                                      itemBuilder: (context, index) {
                                        final campaign =
                                            campaignState.campaigns[index];
                                        return Container(
                                          width: 280,
                                          margin: const EdgeInsets.only(
                                            right: 16,
                                          ),
                                          child: SearchCampaignCard(
                                            campaign: campaign
                                                .toSearchResultModel(),
                                            onTap: () {
                                              // Navigate to campaign detail
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),

                                // Browse all categories
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20,
                                    32,
                                    20,
                                    16,
                                  ),
                                  child: Text(
                                    l10n?.searchBrowseAllTitle ?? 'Browse all',
                                    style: theme.textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: colorScheme.onSurface,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20,
                                    0,
                                    20,
                                    24,
                                  ),
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 12,
                                          mainAxisSpacing: 12,
                                          childAspectRatio: 1.5,
                                        ),
                                    itemCount: campaignCategories.length,
                                    itemBuilder: (context, index) {
                                      final category =
                                          campaignCategories[index];
                                      return CategoryCard(
                                        category: category,
                                        onTap: () => onCategoryTap(category),
                                      );
                                    },
                                  ),
                                ),
                              ]),
                            );
                          },
                        );
                      },
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 100)),
                  ],
                ),
                if (showStickyHeader.value)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(color: colorScheme.surface),
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

/// Search field widget with modern design
class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmit;
  final bool isSticky;

  const _SearchField({
    required this.controller,
    required this.onSubmit,
    required this.isSticky,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.2)),
      ),
      child: TextField(
        controller: controller,
        onSubmitted: onSubmit,
        style: theme.textTheme.bodyLarge?.copyWith(
          color: colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          hintText: l10n?.searchHint ?? 'Search users and campaigns...',
          hintStyle: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
          ),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: colorScheme.onSurfaceVariant,
            size: 24,
          ),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(
                    Icons.clear_rounded,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  onPressed: () {
                    controller.clear();
                    onSubmit('');
                  },
                )
              : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}

/// Search tabs widget
class _SearchTabs extends StatelessWidget {
  final int selectedTab;
  final Function(int) onTabChanged;

  const _SearchTabs({required this.selectedTab, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        _TabChip(
          label: 'All',
          isSelected: selectedTab == 0,
          onTap: () => onTabChanged(0),
          colorScheme: colorScheme,
          theme: theme,
        ),
        const SizedBox(width: 8),
        _TabChip(
          label: 'Users',
          isSelected: selectedTab == 1,
          onTap: () => onTabChanged(1),
          colorScheme: colorScheme,
          theme: theme,
        ),
        const SizedBox(width: 8),
        _TabChip(
          label: 'Campaigns',
          isSelected: selectedTab == 2,
          onTap: () => onTabChanged(2),
          colorScheme: colorScheme,
          theme: theme,
        ),
      ],
    );
  }
}

class _TabChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _TabChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? colorScheme.primaryContainer
              : colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: isSelected
                ? colorScheme.onPrimaryContainer
                : colorScheme.onSurfaceVariant,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

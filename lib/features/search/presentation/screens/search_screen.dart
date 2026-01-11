import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../campaign/presentation/screens/campaign_list_screen.dart';
import '../../../campaign/data/mock_campaigns.dart';
import '../../domain/entities/campaign_category.dart';
import '../widgets/category_card.dart';
import '../widgets/discover_card.dart';

/// Search screen with sticky search bar and category browsing
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

    // Track scroll position for sticky header
    void onScroll() {
      if (!scrollController.hasClients) return;

      final offset = scrollController.offset;
      final shouldShow = offset > 100; // Show sticky header after 100px scroll

      if (shouldShow != showStickyHeader.value) {
        showStickyHeader.value = shouldShow;
      }
    }

    useEffect(() {
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    // Handle search
    void onSearchSubmit(String query) {
      if (query.trim().isEmpty) return;

      // Note: Navigation to search results will be implemented
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Search: $query'),
          duration: const Duration(seconds: 1),
        ),
      );
    }

    // Handle category tap
    void onCategoryTap(CampaignCategory category) {
      CampaignListScreen.show(
        context,
        categoryName: category.name,
        categoryFilter: category.id,
      );
    }

    // Handle discover card tap
    void onDiscoverTap(String campaignId) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Campaign Detail'),
            ),
            body: Center(
              child: Text(
                'Campaign ID: $campaignId',
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Stack(
        children: [
          // Main scrollable content
          CustomScrollView(
            controller: scrollController,
            slivers: [
              // App Bar with search
              SliverAppBar(
                floating: false,
                pinned: false,
                expandedHeight: 160,
                backgroundColor: colorScheme.surface,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          l10n?.searchTitle ?? 'Search',
                          style: theme.textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Search field
                        _SearchField(
                          controller: searchController,
                          onSubmit: onSearchSubmit,
                          isSticky: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Discover something new section
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
                      child: Text(
                        l10n?.searchDiscoverTitle ?? 'Discover something new',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ),

                    // Horizontal scroll of discover cards
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: mockCampaigns.take(10).length,
                        itemBuilder: (context, index) {
                          final campaign = mockCampaigns[index];
                          return DiscoverCard(
                            title: campaign.title,
                            imageUrl: '',
                            onTap: () => onDiscoverTap(campaign.id),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // Browse all section
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
                  child: Text(
                    l10n?.searchBrowseAllTitle ?? 'Browse all',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
              ),

              // Category grid
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.5,
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final category = campaignCategories[index];
                    return CategoryCard(
                      category: category,
                      onTap: () => onCategoryTap(category),
                    );
                  }, childCount: campaignCategories.length),
                ),
              ),

              // Bottom spacing
              const SliverToBoxAdapter(child: SizedBox(height: 100)),
            ],
          ),

          // Sticky search bar when scrolling
          if (showStickyHeader.value)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.shadow.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.fromLTRB(20, 48, 20, 12),
                child: _SearchField(
                  controller: searchController,
                  onSubmit: onSearchSubmit,
                  isSticky: true,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Search field widget
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
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        onSubmitted: onSubmit,
        style: theme.textTheme.bodyLarge?.copyWith(
          color: colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          hintText: l10n?.searchHint ?? 'What do you want to find?',
          hintStyle: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: colorScheme.onSurfaceVariant,
            size: 28,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear, color: colorScheme.onSurfaceVariant),
            onPressed: () {
              controller.clear();
            },
          ),
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

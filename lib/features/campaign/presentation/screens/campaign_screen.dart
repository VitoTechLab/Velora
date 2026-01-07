import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../domain/entities/campaign_type.dart';
import '../../domain/entities/sort_option.dart';
import '../../data/mock_campaigns.dart';
import '../widgets/campaign_search_field.dart';
import '../widgets/campaign_chips.dart';
import '../widgets/featured_campaign_carousel.dart';
import '../widgets/campaign_card.dart';
import '../widgets/campaign_empty_state.dart';

// ============================================================================
// MAIN SCREEN
// ============================================================================

class CampaignScreen extends HookWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final selectedType = useState(CampaignType.all);
    final selectedSort = useState(SortOption.trending);
    final campaigns = useState(mockCampaigns);

    void filterCampaigns() {
      var filtered = mockCampaigns;

      if (selectedType.value != CampaignType.all) {
        if (selectedType.value == CampaignType.verified) {
          filtered = filtered.where((c) => c.isVerified).toList();
        } else {
          filtered = filtered
              .where((c) => c.type == selectedType.value)
              .toList();
        }
      }

      switch (selectedSort.value) {
        case SortOption.newest:
          filtered = filtered.reversed.toList();
          break;
        case SortOption.endingSoon:
          filtered = filtered
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
          filtered = filtered.toList()
            ..sort((a, b) => b.progressPercent.compareTo(a.progressPercent));
          break;
        case SortOption.verified:
          filtered = filtered.where((c) => c.isVerified).toList();
          break;
        case SortOption.trending:
          break;
      }

      campaigns.value = filtered;
    }

    useEffect(() {
      filterCampaigns();
      return null;
    }, [selectedType.value, selectedSort.value]);

    final featuredCampaigns = campaigns.value
        .where((c) => c.isFeatured)
        .toList();
    final regularCampaigns = campaigns.value
        .where((c) => !c.isFeatured)
        .toList();

    Future<void> onRefresh() async {
      await Future.delayed(const Duration(seconds: 1));
      filterCampaigns();
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              backgroundColor: colorScheme.surface,
              elevation: 0,
              title: Text(
                'Campaigns',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                    child: CampaignSearchField(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Search campaigns...'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                    ),
                  ),
                  CampaignChips(
                    selectedType: selectedType.value,
                    selectedSort: selectedSort.value,
                    onTypeSelected: (type) {
                      selectedType.value = type;
                    },
                    onSortSelected: (sort) {
                      selectedSort.value = sort;
                    },
                  ),
                  if (featuredCampaigns.isNotEmpty)
                    FeaturedCampaignCarousel(campaigns: featuredCampaigns),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
                    child: Text(
                      'All Campaigns',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (regularCampaigns.isEmpty)
              SliverFillRemaining(
                child: CampaignEmptyState(
                  onRetry: () {
                    selectedType.value = CampaignType.all;
                    selectedSort.value = SortOption.trending;
                  },
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CampaignCard(campaign: regularCampaigns[index]),
                    ),
                    childCount: regularCampaigns.length,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

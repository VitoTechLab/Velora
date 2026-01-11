import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/campaign_type.dart';
import '../../domain/entities/sort_option.dart';
import '../../data/mock_campaigns.dart';
import '../widgets/campaign_search_field.dart';
import '../widgets/campaign_chips.dart';
import '../widgets/elegant_featured_carousel.dart';
import '../widgets/campaign_category_section.dart';
import '../widgets/campaign_empty_state.dart';
import 'campaign_list_screen.dart';

// ============================================================================
// MAIN SCREEN
// ============================================================================

class CampaignScreen extends HookWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

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

    // Group campaigns by category
    final emergencyCampaigns = campaigns.value
        .where((c) => c.category == 'Emergency')
        .toList();
    final socialImpactCampaigns = campaigns.value
        .where((c) => c.category == 'Social Impact')
        .toList();
    final technologyCampaigns = campaigns.value
        .where((c) => c.category == 'Technology')
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
                l10n?.chatSearchScopeCampaigns ?? 'Campaigns',
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
                  const SizedBox(height: 16),

                  // Featured Carousel
                  if (featuredCampaigns.isNotEmpty) ...[
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
                    ElegantFeaturedCarousel(campaigns: featuredCampaigns),
                  ],

                  // Emergency Campaigns
                  if (emergencyCampaigns.isNotEmpty)
                    CampaignCategorySection(
                      categoryName:
                          l10n?.campaignEmergencyTitle ??
                          'Emergency Fundraisers',
                      campaigns: emergencyCampaigns,
                      onSeeMore: () {
                        CampaignListScreen.show(
                          context,
                          categoryName:
                              l10n?.campaignEmergencyTitle ??
                              'Emergency Fundraisers',
                          categoryFilter: 'Emergency',
                        );
                      },
                    ),

                  // Social Impact Campaigns
                  if (socialImpactCampaigns.isNotEmpty)
                    CampaignCategorySection(
                      categoryName:
                          l10n?.campaignSocialImpactTitle ?? 'Social Impact',
                      campaigns: socialImpactCampaigns,
                      onSeeMore: () {
                        CampaignListScreen.show(
                          context,
                          categoryName:
                              l10n?.campaignSocialImpactTitle ??
                              'Social Impact',
                          categoryFilter: 'Social Impact',
                        );
                      },
                    ),

                  // Technology Campaigns
                  if (technologyCampaigns.isNotEmpty)
                    CampaignCategorySection(
                      categoryName:
                          l10n?.campaignTechnologyTitle ?? 'Technology',
                      campaigns: technologyCampaigns,
                      onSeeMore: () {
                        CampaignListScreen.show(
                          context,
                          categoryName:
                              l10n?.campaignTechnologyTitle ?? 'Technology',
                          categoryFilter: 'Technology',
                        );
                      },
                    ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
            if (campaigns.value.isEmpty)
              SliverFillRemaining(
                child: CampaignEmptyState(
                  onRetry: () {
                    selectedType.value = CampaignType.all;
                    selectedSort.value = SortOption.trending;
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

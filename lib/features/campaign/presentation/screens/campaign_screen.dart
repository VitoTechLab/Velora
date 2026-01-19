import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../../routes/app_router.dart';
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
import 'campaign_list_screen.dart';

// ============================================================================
// MAIN SCREEN
// ============================================================================

class CampaignScreen extends HookWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedType = useState(CampaignType.all);
    final selectedSort = useState(SortOption.trending);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    useEffect(() {
      context.read<CampaignBloc>().add(
            const CampaignEvent.loadCampaigns(limit: 50),
          );
      return null;
    }, const []);

    List<CampaignModel> _applyFilters(
      List<CampaignModel> source,
      CampaignType type,
      SortOption sort,
    ) {
      var filtered = List<CampaignModel>.from(source);

      if (type != CampaignType.all) {
        if (type == CampaignType.verified) {
          filtered = filtered.where((c) => c.isVerified).toList();
        } else {
          filtered =
              filtered.where((c) => c.type == type).toList();
        }
      }

      switch (sort) {
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

      return filtered;
    }

    CampaignModel _mapEntityToModel(CampaignEntity entity) {
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
      );
    }

    Future<void> onRefresh(BuildContext context) async {
      context.read<CampaignBloc>().add(
            const CampaignEvent.refreshCampaigns(limit: 50),
          );
      await Future.delayed(const Duration(milliseconds: 400));
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: BlocBuilder<CampaignBloc, CampaignState>(
        builder: (context, state) {
          final allModels = state.campaigns
              .map(_mapEntityToModel)
              .toList();
          final filteredCampaigns = _applyFilters(
            allModels,
            selectedType.value,
            selectedSort.value,
          );

          final featuredCampaigns =
              filteredCampaigns.where((c) => c.isFeatured).toList();

          // Group campaigns by category
          final emergencyCampaigns = filteredCampaigns
              .where((c) => c.category == 'Emergency')
              .toList();
          final socialImpactCampaigns = filteredCampaigns
              .where((c) => c.category == 'Social Impact')
              .toList();
          final technologyCampaigns = filteredCampaigns
              .where((c) => c.category == 'Technology')
              .toList();

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
                      icon: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: colorScheme.primary
                              .withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add_rounded,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
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
                        padding:
                            const EdgeInsets.fromLTRB(20, 8, 20, 16),
                        child: CampaignSearchField(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Search campaigns...'),
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
                          padding: const EdgeInsets.only(
                            left: 20,
                            bottom: 8,
                          ),
                          child: Text(
                            l10n?.campaignFeaturedTitle ??
                                'Featured Campaigns',
                            style:
                                theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onSurface,
                            ),
                          ),
                        ),
                        ElegantFeaturedCarousel(
                          campaigns: featuredCampaigns,
                        ),
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
                              l10n?.campaignSocialImpactTitle ??
                                  'Social Impact',
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
                              l10n?.campaignTechnologyTitle ??
                                  'Technology',
                          campaigns: technologyCampaigns,
                          onSeeMore: () {
                            CampaignListScreen.show(
                              context,
                              categoryName:
                                  l10n?.campaignTechnologyTitle ??
                                      'Technology',
                              categoryFilter: 'Technology',
                            );
                          },
                        ),

                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                if (filteredCampaigns.isEmpty &&
                    !state.isLoadingCampaigns)
                  SliverFillRemaining(
                    child: CampaignEmptyState(
                      onRetry: () {
                        selectedType.value = CampaignType.all;
                        selectedSort.value = SortOption.trending;
                        context.read<CampaignBloc>().add(
                              const CampaignEvent.loadCampaigns(
                                limit: 50,
                              ),
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

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_event.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_state.dart';

import 'package:velora/features/campaign/domain/entities/campaign_detail_model.dart';
import 'package:velora/features/campaign/domain/entities/campaign_type.dart';
import 'package:velora/features/campaign/presentation/widgets/campaign_cover_header.dart';
import 'package:velora/features/campaign/presentation/widgets/creator_row_header.dart';
import 'package:velora/features/campaign/presentation/widgets/progress_summary_card.dart';
import 'package:velora/features/campaign/presentation/widgets/equity_market_module.dart';
import 'package:velora/features/campaign/presentation/widgets/overview_tab_content.dart';
import 'package:velora/features/campaign/presentation/widgets/updates_tab_content.dart';
import 'package:velora/features/campaign/presentation/widgets/discussion_tab_content.dart';
import 'package:velora/features/campaign/presentation/widgets/transparency_tab_content.dart';
import 'package:velora/features/campaign/presentation/widgets/primary_cta_button.dart';
import 'package:velora/features/campaign/presentation/widgets/invest_bottom_sheet.dart';
import 'package:velora/features/campaign/presentation/widgets/donate_bottom_sheet.dart';

class CampaignDetailScreen extends HookWidget {
  final CampaignDetailModel campaign;

  const CampaignDetailScreen({super.key, required this.campaign});

  // Static route helper - requires campaign data
  // Static route helper - requires campaign data and BLoC
  static Route<void> route({
    required CampaignDetailModel campaign,
    required CampaignBloc bloc,
  }) {
    return MaterialPageRoute(
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: CampaignDetailScreen(campaign: campaign),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final tabController = useTabController(initialLength: 4);
    final scrollController = useScrollController();
    final showTitle = useState(false);

    final bloc = context.read<CampaignBloc>();

    useEffect(() {
      void listener() {
        if (scrollController.hasClients) {
          showTitle.value = scrollController.offset > 200;
        }
      }

      scrollController.addListener(listener);

      // Fetch data for tabs
      bloc.add(CampaignEvent.loadCampaignUpdates(campaignId: campaign.id));
      bloc.add(CampaignEvent.loadComments(campaignId: campaign.id));
      bloc.add(
        CampaignEvent.loadCampaignTransparencyData(campaignId: campaign.id),
      );

      return () => scrollController.removeListener(listener);
    }, [scrollController, campaign.id]);

    final isEquity = campaign.type == CampaignType.equity;
    final isDebt = campaign.type == CampaignType.debt;
    final isDonation = campaign.type == CampaignType.donation;
    final showRiskDisclaimer = isEquity || isDebt;

    void handleCTAPress() {
      if (isEquity) {
        // Equity investment flow
        InvestBottomSheet.show(
          context,
          campaign.unitPrice ?? 0,
          campaign.minBuyUnits ?? 1,
        );
      } else if (isDonation) {
        // Donation flow with Bank Transfer gateway
        final supabase = getIt<SupabaseClient>();
        final userId = supabase.auth.currentUser?.id;

        if (userId == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please login to donate'),
              behavior: SnackBarBehavior.floating,
            ),
          );
          return;
        }

        DonateBottomSheet.show(
          context,
          campaignId: campaign.id,
          campaignTitle: campaign.title,
          userId: userId,
        );
      } else {
        // Other types - mock action
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${campaign.ctaLabel} (mock action)'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: BlocBuilder<CampaignBloc, CampaignState>(
        builder: (context, state) {
          return CustomScrollView(
            controller: scrollController,
            slivers: [
              // SliverAppBar with cover
              SliverAppBar(
                expandedHeight: 280,
                pinned: true,
                backgroundColor: colorScheme.surface,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.black.withValues(alpha: 0.5),
                    foregroundColor: Colors.white,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Share (mock)'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    icon: Icon(Icons.share_outlined),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black.withValues(alpha: 0.5),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Bookmark (mock)'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    icon: Icon(Icons.bookmark_border),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black.withValues(alpha: 0.5),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('More options (mock)'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    icon: Icon(Icons.more_vert),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black.withValues(alpha: 0.5),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.zero,
                  centerTitle: false,
                  title: AnimatedOpacity(
                    opacity: showTitle.value ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(56, 0, 56, 16),
                      child: Text(
                        campaign.title,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  background: CampaignCoverHeader(
                    category: campaign.category,
                    imageUrl: campaign.coverImageUrl,
                  ),
                ),
              ),

              // Title
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                  child: Text(
                    campaign.title,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                      height: 1.2,
                    ),
                  ),
                ),
              ),

              // Creator Row
              SliverToBoxAdapter(
                child: CreatorRowHeader(
                  creatorName: campaign.creatorName,
                  isVerified: campaign.isVerified,
                  category: campaign.category,
                ),
              ),

              // Equity Market Module (only for equity type)
              if (isEquity) ...[
                SliverToBoxAdapter(
                  child: EquityMarketModule(
                    unitPrice: campaign.unitPrice!,
                    minBuyUnits: campaign.minBuyUnits!,
                    riskGrade: campaign.riskGrade!,
                    investorsCount: campaign.donorsCount,
                    equityChangePct: campaign.equityChangePct,
                    onInvestTap: handleCTAPress,
                  ),
                ),
              ],

              // Progress Summary - Use updated values from selectedCampaign if available
              SliverToBoxAdapter(
                child: ProgressSummaryCard(
                  raised:
                      state.selectedCampaign?.amountRaised ?? campaign.raised,
                  target:
                      state.selectedCampaign?.targetAmount ?? campaign.target,
                  progressPercent: state.selectedCampaign != null
                      ? (state.selectedCampaign!.amountRaised /
                                state.selectedCampaign!.targetAmount *
                                100)
                            .clamp(0, 100)
                      : campaign.progressPercent,
                  timeLeftLabel: campaign.timeLeftLabel,
                  donorsCount:
                      state.selectedCampaign?.donorCount ??
                      campaign.donorsCount,
                  updatesCount: campaign.updatesCount,
                  milestonesCount: campaign.milestonesCount,
                ),
              ),

              // TabBar
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverTabBarDelegate(
                  TabBar(
                    controller: tabController,
                    labelColor: colorScheme.primary,
                    unselectedLabelColor: colorScheme.onSurfaceVariant,
                    indicatorColor: colorScheme.primary,
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: theme.textTheme.titleSmall,
                    tabs: const [
                      Tab(text: 'Overview'),
                      Tab(text: 'Updates'),
                      Tab(text: 'Discussion'),
                      Tab(text: 'Transparency'),
                    ],
                  ),
                ),
              ),

              // TabBarView Content
              SliverFillRemaining(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    // Overview Tab
                    OverviewTabContent(
                      campaignType: campaign.type.name,
                      description: campaign.description,
                    ),

                    // Updates Tab
                    UpdatesTabContent(updates: state.campaignUpdates),

                    // Discussion Tab
                    DiscussionTabContent(
                      comments: state.comments,
                      campaignId: campaign.id,
                    ),

                    // Transparency Tab
                    TransparencyTabContent(
                      fundBreakdown: state.campaignFundBreakdown,
                      documents: state.campaignDocuments,
                      milestones: state.campaignMilestones,
                      proofItems: state.campaignProofItems,
                      showRiskDisclaimer: showRiskDisclaimer,
                      riskGrade: campaign.riskGrade,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),

      // Floating CTA Button
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: colorScheme.surface),
        child: SafeArea(
          child: PrimaryCTAButton(
            label: campaign.ctaLabel,
            onPressed: handleCTAPress,
          ),
        ),
      ),
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
    return Container(color: colorScheme.surface, child: tabBar);
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}

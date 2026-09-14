import 'package:flutter/material.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_empty_state.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_skeleton.dart';
import 'package:velora/features/profile/presentation/widgets/molecules/profile_header_panel.dart';
import 'package:velora/features/profile/presentation/widgets/molecules/profile_impact_tabs.dart';
import 'package:velora/features/profile/presentation/widgets/organisms/profile_overview_panel.dart';
import 'package:velora/features/profile/presentation/widgets/organisms/profile_reports_section.dart';
import 'package:velora/features/profile/presentation/widgets/organisms/profile_saved_section.dart';
import 'package:velora/features/profile/presentation/widgets/organisms/profile_supported_section.dart';

class ProfileImpactBody extends StatelessWidget {
  const ProfileImpactBody({
    super.key,
    required this.tabController,
    required this.profile,
    required this.reports,
    required this.isMe,
    required this.isFollowing,
    required this.isFollowRequestPending,
    required this.isLoading,
    required this.error,
    required this.onRefresh,
    required this.onCreateReport,
    required this.onEditProfile,
    required this.onSettings,
    required this.onFollowToggle,
    required this.onMessage,
    required this.onReportTap,
  });

  final TabController tabController;
  final UserProfileEntity? profile;
  final List<FeedEntity> reports;
  final bool isMe;
  final bool isFollowing;
  final bool isFollowRequestPending;
  final bool isLoading;
  final String? error;
  final Future<void> Function() onRefresh;
  final VoidCallback? onCreateReport;
  final VoidCallback? onEditProfile;
  final VoidCallback? onSettings;
  final VoidCallback? onFollowToggle;
  final VoidCallback? onMessage;
  final ValueChanged<int> onReportTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: isLoading
            ? const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: ProfileSkeleton(),
              )
            : error != null
            ? _ProfileErrorState(message: error!, onRefresh: onRefresh)
            : profile == null
            ? SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.82,
                  child: const ProfileEmptyState(
                    icon: Icons.person_search_outlined,
                    title: 'Profile unavailable',
                    message:
                        'We could not load this impact profile yet. Pull to refresh and try again.',
                  ),
                ),
              )
            : NestedScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      pinned: true,
                      elevation: 0,
                      backgroundColor: colorScheme.surface.withValues(
                        alpha: 0.94,
                      ),
                      title: Text(
                        profile!.username.isNotEmpty
                            ? '@${profile!.username}'
                            : 'Impact profile',
                      ),
                      actions: [
                        if (isMe)
                          IconButton(
                            tooltip: 'Create report',
                            icon: const Icon(Icons.add_circle_outline_rounded),
                            onPressed: onCreateReport,
                          ),
                      ],
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                        child: ProfileHeaderPanel(
                          profile: profile!,
                          reportsCount: reports.length,
                          isMe: isMe,
                          isFollowing: isFollowing,
                          isFollowRequestPending: isFollowRequestPending,
                          onEditProfile: onEditProfile,
                          onSettings: onSettings,
                          onFollowToggle: onFollowToggle,
                          onMessage: onMessage,
                          onReportsTap: () => tabController.animateTo(1),
                        ),
                      ),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _ProfileTabsHeader(
                        child: ProfileImpactTabs(controller: tabController),
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  controller: tabController,
                  children: [
                    ProfileOverviewPanel(
                      profile: profile!,
                      isMe: isMe,
                      reports: reports,
                    ),
                    ProfileReportsSection(
                      reports: reports,
                      onReportTap: onReportTap,
                    ),
                    const ProfileSupportedSection(),
                    const ProfileSavedSection(),
                  ],
                ),
              ),
      ),
    );
  }
}

class _ProfileErrorState extends StatelessWidget {
  const _ProfileErrorState({required this.message, required this.onRefresh});

  final String message;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.28),
        Icon(Icons.error_outline_rounded, size: 54, color: colorScheme.error),
        const SizedBox(height: 14),
        Text(
          message,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge?.copyWith(color: colorScheme.error),
        ),
        const SizedBox(height: 18),
        Center(
          child: FilledButton.icon(
            onPressed: () {
              onRefresh();
            },
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Try again'),
          ),
        ),
      ],
    );
  }
}

class _ProfileTabsHeader extends SliverPersistentHeaderDelegate {
  const _ProfileTabsHeader({required this.child});

  final Widget child;

  @override
  double get minExtent => 62;

  @override
  double get maxExtent => 62;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.96),
        boxShadow: overlapsContent
            ? [
                BoxShadow(
                  color: colorScheme.shadow.withValues(alpha: 0.08),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ]
            : null,
      ),
      child: Center(child: child),
    );
  }

  @override
  bool shouldRebuild(covariant _ProfileTabsHeader oldDelegate) {
    return oldDelegate.child != child;
  }
}

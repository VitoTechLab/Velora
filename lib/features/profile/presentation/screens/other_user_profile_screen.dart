import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/profile/presentation/widgets/profile_header.dart';
import 'package:velora/features/profile/presentation/widgets/profile_stats.dart';
import 'package:velora/features/profile/presentation/widgets/profile_actions.dart';
import 'package:velora/features/profile/presentation/widgets/profile_tabs.dart';
import 'package:velora/features/profile/presentation/widgets/profile_grid.dart';

/// Screen for displaying other user's profile (not the current logged-in user)
class OtherUserProfileScreen extends StatelessWidget {
  final String userId;

  const OtherUserProfileScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    // Create isolated FeedBloc instance for this user's posts
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<ProfileBloc>()..add(LoadProfileEvent(userId: userId)),
        ),
        BlocProvider(
          create: (_) =>
              getIt<FeedBloc>()
                ..add(FeedEvent.loadInitialFeed(limit: 20, userId: userId)),
        ),
      ],
      child: const _UserProfileContent(),
    );
  }
}

class _UserProfileContent extends HookWidget {
  const _UserProfileContent();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final tabController = useTabController(initialLength: 4);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        final profile = profileState.profile;

        return Scaffold(
          backgroundColor: colorScheme.surface,
          appBar: AppBar(
            backgroundColor: colorScheme.surface,
            elevation: 0,
            leading: const BackButton(),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (profile?.isPrivate == true)
                  const Icon(Icons.lock_outline, size: 16),
                const SizedBox(width: 4),
                Text(
                  profile?.username ?? '...',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  // TODO: Show user options menu (report, block, etc)
                },
              ),
            ],
          ),
          body: profileState.isLoading
              ? const Center(child: CircularProgressIndicator())
              : profileState.error != null
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 64,
                        color: colorScheme.error,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        profileState.error!,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: colorScheme.error,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: () async {
                    context.read<ProfileBloc>().add(
                      LoadProfileEvent(userId: profile!.id),
                    );
                    context.read<FeedBloc>().add(
                      FeedEvent.loadInitialFeed(limit: 20, userId: profile.id),
                    );
                  },
                  child: NestedScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      return [
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              // Profile Header Section
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    ProfileHeader(
                                      imageUrl: profile?.avatarUrl,
                                      showAddButton: false,
                                    ),
                                    const SizedBox(width: 24),
                                    Expanded(
                                      child: ProfileStats(
                                        postsCount:
                                            profile?.followersCount ?? 0,
                                        followersCount:
                                            profile?.followersCount ?? 0,
                                        followingCount:
                                            profile?.followingCount ?? 0,
                                        onPostsTap: () {},
                                        onFollowersTap: () {
                                          // TODO: Navigate to followers list
                                        },
                                        onFollowingTap: () {
                                          // TODO: Navigate to following list
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),

                              // Profile Info Section
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (profile?.fullName?.isNotEmpty == true)
                                      Text(
                                        profile!.fullName!,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.alternate_email,
                                          size: 14,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          profile?.username ?? '',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),

                              // Action Buttons Section (Follow/Message)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: ProfileActions(
                                  isMe: false,
                                  isFollowing: profileState.isFollowing,
                                  isFollowRequestPending:
                                      profileState.isFollowRequestPending,
                                  onEditProfile: () {},
                                  onFollowToggle: () {
                                    if (profile != null) {
                                      context.read<ProfileBloc>().add(
                                        ToggleFollowEvent(
                                          targetUserId: profile.id,
                                          isPrivate: profile.isPrivate,
                                        ),
                                      );
                                    }
                                  },
                                  onShareProfile: () {
                                    // TODO: Share profile
                                  },
                                  onAddFriend: () {
                                    // TODO: Add friend
                                  },
                                ),
                              ),
                              const SizedBox(height: 16),

                              // Tabs Section
                              ProfileTabs(controller: tabController),
                            ],
                          ),
                        ),
                      ];
                    },
                    body: TabBarView(
                      controller: tabController,
                      children: [
                        // Posts Grid Tab
                        BlocBuilder<FeedBloc, FeedState>(
                          builder: (context, feedState) {
                            if (feedState.isLoadingInitial) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (feedState.posts.isEmpty) {
                              return CustomScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                slivers: [
                                  SliverFillRemaining(
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.photo_library_outlined,
                                            size: 64,
                                            color: colorScheme.onSurfaceVariant,
                                          ),
                                          const SizedBox(height: 16),
                                          Text(
                                            'No posts yet',
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
                                ],
                              );
                            }
                            return ProfileGrid(
                              posts: feedState.posts
                                  .expand((p) => p.imageUrls)
                                  .toList(),
                              onPostTap: (index) {
                                // TODO: Navigate to post detail
                              },
                            );
                          },
                        ),

                        // Reels Tab (placeholder)
                        const Center(
                          child: Icon(
                            Icons.video_collection_outlined,
                            size: 64,
                          ),
                        ),

                        // Tagged Tab (placeholder)
                        const Center(
                          child: Icon(Icons.person_pin_outlined, size: 64),
                        ),

                        // Saved Tab (placeholder)
                        const Center(
                          child: Icon(Icons.bookmark_outline, size: 64),
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}

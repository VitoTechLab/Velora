import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/widgets/profile_header.dart';
import 'package:velora/features/profile/presentation/widgets/profile_stats.dart';
import 'package:velora/features/profile/presentation/widgets/profile_actions.dart';
import 'package:velora/features/profile/presentation/widgets/profile_tabs.dart';
import 'package:velora/features/profile/presentation/widgets/profile_grid.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/core/di/service_locator.dart';

/// Screen for displaying the current logged-in user's profile (My Profile)
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get current user's ID from AuthBloc
    final authState = context.watch<AuthBloc>().state;
    final currentUserId = authState.userId;

    if (currentUserId == null) {
      return const Scaffold(
        body: Center(child: Text('Please log in to view your profile')),
      );
    }

    // Create isolated FeedBloc instance for current user's posts
    return BlocProvider(
      create: (_) =>
          getIt<FeedBloc>()
            ..add(FeedEvent.loadInitialFeed(limit: 20, userId: currentUserId)),
      child: _ProfileScreenContent(userId: currentUserId),
    );
  }
}

class _ProfileScreenContent extends HookWidget {
  final String userId;

  const _ProfileScreenContent({required this.userId});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final tabController = useTabController(initialLength: 4);

    useEffect(() {
      // Load profile data when screen mounts
      context.read<ProfileBloc>().add(LoadProfileEvent(userId: userId));
      return null;
    }, [userId]);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        final profile = profileState.profile;

        return Scaffold(
          backgroundColor: colorScheme.surface,
          appBar: AppBar(
            backgroundColor: colorScheme.surface,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {
                context.pushNamed(AppRouteName.mediaGallery);
              },
            ),
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
                const SizedBox(width: 4),
                const Icon(Icons.keyboard_arrow_down, size: 20),
              ],
            ),
            actions: [
              IconButton(
                icon: Badge(
                  label: const Text('9+'),
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.favorite_border),
                ),
                onPressed: () {
                  // Note: Navigation to notifications will be implemented
                },
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  context.pushNamed(AppRouteName.settings);
                },
              ),
            ],
          ),
          body: profileState.isLoading
              ? const Center(child: CircularProgressIndicator())
              : profileState.error != null
              ? Center(child: Text(profileState.error!))
              : RefreshIndicator(
                  onRefresh: () async {
                    context.read<ProfileBloc>().add(
                      LoadProfileEvent(userId: userId),
                    );
                    context.read<FeedBloc>().add(
                      FeedEvent.loadInitialFeed(limit: 20, userId: userId),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    ProfileHeader(
                                      imageUrl: profile?.avatarUrl,
                                      showAddButton: profile?.isMe ?? false,
                                    ),
                                    const SizedBox(width: 24),
                                    Expanded(
                                      child: BlocBuilder<FeedBloc, FeedState>(
                                        builder: (context, feedState) {
                                          return ProfileStats(
                                            postsCount: feedState.posts.length,
                                            followersCount:
                                                profile?.followersCount ?? 0,
                                            followingCount:
                                                profile?.followingCount ?? 0,
                                            onPostsTap: () {},
                                            onFollowersTap: () {
                                              context.pushNamed(
                                                AppRouteName.relationDetail,
                                                pathParameters: {
                                                  'userId': userId
                                                },
                                                queryParameters: {'tab': '0'},
                                              );
                                            },
                                            onFollowingTap: () {
                                              context.pushNamed(
                                                AppRouteName.relationDetail,
                                                pathParameters: {
                                                  'userId': userId
                                                },
                                                queryParameters: {'tab': '1'},
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      profile?.fullName ?? '',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    if (profile?.bio != null &&
                                        profile!.bio!.isNotEmpty) ...[
                                      const SizedBox(height: 4),
                                      Text(
                                        profile.bio!,
                                        style: const TextStyle(fontSize: 14),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
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
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: ProfileActions(
                                  isMe: true,
                                  isFollowing: false,
                                  isFollowRequestPending: false,
                                  onEditProfile: () {
                                    context.pushNamed(
                                      AppRouteName.settingsEditProfile,
                                    );
                                  },
                                  onFollowToggle: () {},
                                  onShareProfile: () {
                                    // Note: Profile sharing will be implemented when share feature is ready
                                  },
                                  onAddFriend: () {},
                                ),
                              ),
                              const SizedBox(height: 16),
                              ProfileTabs(controller: tabController),
                            ],
                          ),
                        ),
                      ];
                    },
                    body: TabBarView(
                      controller: tabController,
                      children: [
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
                                // Note: Navigation to post detail will be implemented
                              },
                            );
                          },
                        ),
                        const Center(
                          child: Icon(
                            Icons.video_collection_outlined,
                            size: 64,
                          ),
                        ),
                        const Center(
                          child: Icon(Icons.sync_outlined, size: 64),
                        ),
                        const Center(
                          child: Icon(Icons.person_pin_outlined, size: 64),
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

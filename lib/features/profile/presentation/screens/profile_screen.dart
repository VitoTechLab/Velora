import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart'
    as feed_event;
import 'package:velora/features/feed/presentation/bloc/feed_state.dart'
    as feed_state;
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/profile/presentation/widgets/profile_header.dart';
import 'package:velora/features/profile/presentation/widgets/profile_stats.dart';
import 'package:velora/features/profile/presentation/widgets/profile_actions.dart';
import 'package:velora/features/profile/presentation/widgets/profile_tabs.dart';
import 'package:velora/features/profile/presentation/widgets/profile_grid.dart';
import 'package:velora/routes/app_router.dart';

class ProfileScreen extends HookWidget {
  final String? userId;

  const ProfileScreen({super.key, this.userId});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final tabController = useTabController(initialLength: 4);

    final authState = context.watch<AuthBloc>().state;
    final effectiveUserId = userId ?? authState.userId;

    useEffect(() {
      if (effectiveUserId != null) {
        context.read<ProfileBloc>().add(
          LoadProfileEvent(userId: effectiveUserId),
        );
        context.read<FeedBloc>().add(
          feed_event.FeedEvent.loadInitialFeed(
            limit: 20,
            userId: effectiveUserId,
          ),
        );
      }
      return null;
    }, [effectiveUserId]);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        final profile = profileState.profile;

        return Scaffold(
          backgroundColor: colorScheme.surface,
          appBar: AppBar(
            backgroundColor: colorScheme.surface,
            elevation: 0,
            leading: profileState.profile?.isMe == true
                ? IconButton(
                    icon: const Icon(Icons.add_box_outlined),
                    onPressed: () {
                      context.pushNamed(AppRouteName.mediaGallery);
                    },
                  )
                : const BackButton(),
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
                if (profileState.profile?.isMe == true) ...[
                  const SizedBox(width: 4),
                  const Icon(Icons.keyboard_arrow_down, size: 20),
                ],
              ],
            ),
            actions: [
              if (profileState.profile?.isMe == true)
                IconButton(
                  icon: Badge(
                    label: const Text('9+'),
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.favorite_border),
                  ),
                  onPressed: () {
                    // TODO: Navigate to notifications
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
                    if (effectiveUserId != null) {
                      context.read<ProfileBloc>().add(
                        LoadProfileEvent(userId: effectiveUserId),
                      );
                      context.read<FeedBloc>().add(
                        feed_event.FeedEvent.loadInitialFeed(
                          limit: 20,
                          userId: effectiveUserId,
                        ),
                      );
                    }
                  },
                  child: NestedScrollView(
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
                                      child: ProfileStats(
                                        postsCount:
                                            profile?.followersCount ??
                                            0, // Should be posts count, but for now we follow migration tables
                                        followersCount:
                                            profile?.followersCount ?? 0,
                                        followingCount:
                                            profile?.followingCount ?? 0,
                                        onPostsTap: () {},
                                        onFollowersTap: () {},
                                        onFollowingTap: () {},
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
                                    const SizedBox(height: 2),
                                    const Text(
                                      '💥',
                                      style: TextStyle(fontSize: 14),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: ProfileActions(
                                  isMe: profile?.isMe ?? false,
                                  isFollowing: profileState.isFollowing,
                                  isFollowRequestPending:
                                      profileState.isFollowRequestPending,
                                  onEditProfile: () {
                                    context.pushNamed(
                                      AppRouteName.settingsEditProfile,
                                    );
                                  },
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
                                    // TODO: Add friend action
                                  },
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
                        BlocBuilder<FeedBloc, feed_state.FeedState>(
                          builder: (context, feedState) {
                            if (feedState.isLoadingInitial) {
                              return const Center(
                                child: CircularProgressIndicator(),
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

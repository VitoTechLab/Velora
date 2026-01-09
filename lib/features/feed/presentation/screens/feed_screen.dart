import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/ui/native_ad_widget.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/feed/presentation/screens/comment_screen.dart';
import 'package:velora/features/feed/presentation/widgets/feed_card.dart';
import 'package:velora/features/feed/presentation/widgets/feed_loading_shimmer.dart';
import 'package:velora/features/feed/presentation/widgets/empty_feed_widget.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_cubit.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_state.dart';
import 'package:velora/features/post/presentation/widgets/upload_status_card.dart';
import 'package:velora/features/post/services/post_draft_service.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:velora/features/notification/presentation/bloc/notification_event.dart';
import 'package:velora/features/notification/presentation/bloc/notification_state.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/shared/widgets/notification_badge.dart';

class FeedScreen extends HookWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final t = AppLocalizations.of(context)!;

    void loadFeed() {
      context.read<FeedBloc>().add(const FeedEvent.loadInitialFeed());
    }

    void onScroll() {
      if (!scrollController.hasClients) return;

      final maxScroll = scrollController.position.maxScrollExtent;
      final currentScroll = scrollController.position.pixels;
      const threshold = 200.0;

      if (currentScroll >= maxScroll - threshold) {
        final bloc = context.read<FeedBloc>();
        final state = bloc.state;
        if (state.isLoadingMore ||
            state.isLoadingInitial ||
            state.isRefreshing ||
            !state.hasMore ||
            state.cursor == null) {
          return;
        }
        bloc.add(const FeedEvent.loadMoreFeed());
      }
    }

    Future<void> onRefresh() async {
      context.read<FeedBloc>().add(const FeedEvent.refreshFeed());
    }

    void onPostTap(FeedEntity post) {
      Navigator.pushNamed(context, '/post-detail', arguments: post);
    }

    void onCommentsTap(FeedEntity post) {
      CommentScreen.show(context, post);
    }

    useEffect(() {
      loadFeed();
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    // Reload unread count on every build (when returning from notification screen)
    useEffect(() {
      context.read<NotificationBloc>().add(
        const NotificationEvent.loadUnreadCount(),
      );
      return null;
    });

    // Track if upload is in progress
    final showUploadStatus = useState(false);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: t.feedCreatePostTooltip,
          icon: const Icon(Icons.add_box_outlined, size: 32),
          onPressed: () {
            context.pushNamed(AppRouteName.mediaGallery);
          },
        ),
        title: Text('Velora', style: Theme.of(context).textTheme.displayMedium),
        actions: [
          BlocBuilder<NotificationBloc, NotificationState>(
            buildWhen: (previous, current) =>
                previous.unreadCount != current.unreadCount,
            builder: (context, notificationState) {
              return IconButton(
                tooltip: 'Notifications',
                icon: NotificationBadge(
                  count: notificationState.unreadCount,
                  child: const Icon(Icons.favorite_border, size: 32),
                ),
                onPressed: () {
                  context.pushNamed(AppRouteName.notification);
                },
              );
            },
          ),
        ],
      ),
      body: BlocListener<MediaUploadCubit, MediaUploadState>(
        listener: (context, uploadState) {
          final currentUserId = context.read<AuthBloc>().state.userId ?? '';
          final isMyPost = PostDraftService.isMyPost(currentUserId);

          // Only show upload status for current user's post
          if (!isMyPost) {
            showUploadStatus.value = false;
            return;
          }

          uploadState.when(
            initial: () {
              showUploadStatus.value = true;
            },
            uploading: () {
              showUploadStatus.value = true;
            },
            success: (_) {
              showUploadStatus.value = true;
            },
            failure: (_) {
              showUploadStatus.value = false;
            },
          );
        },
        child: BlocListener<FeedBloc, FeedState>(
          listenWhen: (previous, next) => previous.errorFeed != next.errorFeed,
          listener: (context, state) {
            if (state.errorFeed != null) {
              AppMessenger.showToast(
                message: state.errorFeed!,
                icon: Icons.warning_amber_outlined,
                isError: true,
                duration: const Duration(seconds: 3),
              );
            }
          },
          child: BlocBuilder<FeedBloc, FeedState>(
            buildWhen: (previous, next) =>
                previous.posts != next.posts ||
                previous.isLoadingInitial != next.isLoadingInitial ||
                previous.isRefreshing != next.isRefreshing ||
                previous.isLoadingMore != next.isLoadingMore ||
                previous.errorFeed != next.errorFeed,
            builder: (context, state) {
              final posts = state.posts;

              if (state.isLoadingInitial && posts.isEmpty) {
                return const FeedLoadingShimmer();
              }

              if (state.errorFeed != null && posts.isEmpty) {
                return EmptyFeedWidget(
                  message: t.feedErrorLoading,
                  subtitle: state.errorFeed,
                  onRefresh: loadFeed,
                );
              }

              if (posts.isEmpty) {
                return RefreshIndicator(
                  onRefresh: onRefresh,
                  child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      // Upload status card even when empty
                      if (showUploadStatus.value)
                        SliverToBoxAdapter(
                          child: UploadStatusCard(
                            onComplete: () {
                              showUploadStatus.value = false;
                            },
                          ),
                        ),

                      // Empty feed widget
                      SliverFillRemaining(child: const EmptyFeedWidget()),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: onRefresh,
                child: CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  controller: scrollController,
                  slivers: [
                    // Upload status card at the top
                    if (showUploadStatus.value)
                      SliverToBoxAdapter(
                        child: UploadStatusCard(
                          onComplete: () {
                            showUploadStatus.value = false;
                          },
                        ),
                      ),

                    // Feed items
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          // Calculate ad positions and adjust post index
                          final adjustedIndex = _getPostIndex(
                            index,
                            posts.length,
                          );

                          // Show loading indicator at the end
                          if (adjustedIndex == -2 && state.isLoadingMore) {
                            return const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }

                          // Show ad at specific positions
                          if (adjustedIndex == -1) {
                            return NativeAdWidget(
                              key: ValueKey('native_ad_$index'),
                              height: 380,
                              useTestAds: false,
                            );
                          }

                          // Show regular post
                          final post = posts[adjustedIndex];
                          return FeedCard(
                            key: ValueKey('feed_post_${post.id}'),
                            post: post,
                            onTap: () => onPostTap(post),
                            onCommentTap: () => onCommentsTap(post),
                          );
                        },
                        childCount: _calculateItemCount(
                          posts.length,
                          state.isLoadingMore,
                        ),
                        semanticIndexCallback: (widget, localIndex) {
                          final adjustedIndex = _getPostIndex(
                            localIndex,
                            posts.length,
                          );
                          if (adjustedIndex < 0) return null;
                          return adjustedIndex;
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  /// Calculate total item count including ads
  /// First ad after 2 posts (index 2), then every 20 posts
  int _calculateItemCount(int postCount, bool isLoadingMore) {
    if (postCount < 2) return postCount + (isLoadingMore ? 1 : 0);

    int adCount = 0;
    if (postCount >= 2) {
      adCount = 1; // First ad after 2 posts
      final remaining = postCount - 2;
      adCount += (remaining / 20).floor(); // Additional ads every 20 posts
    }

    return postCount + adCount + (isLoadingMore ? 1 : 0);
  }

  /// Get post index from list index, accounting for ads
  /// Returns -1 if this index should show an ad
  /// Returns -2 if this index should show loading indicator
  int _getPostIndex(int index, int postCount) {
    // First ad at index 2 (after 2 posts)
    if (index == 2 && postCount >= 2) return -1;

    // Before first ad
    if (index < 2) return index;

    // After first ad, calculate position accounting for subsequent ads
    int postIndex = index - 1; // Account for first ad
    int adsBeforeThisIndex = 1; // First ad already counted

    // Check for additional ads every 20 posts (after the first 2)
    final postsAfterFirstAd = postIndex - 1; // Posts after first ad position
    if (postsAfterFirstAd > 0) {
      final additionalAdSlots = ((postsAfterFirstAd + 1) / 20).floor();

      // Check if current index is an ad slot
      for (int i = 1; i <= additionalAdSlots; i++) {
        final adPosition =
            2 + (i * 20) + (i - 1); // First ad at 2, then +20, +20...
        if (index == adPosition && postIndex < postCount) {
          return -1; // This is an ad position
        }
        if (index > adPosition) {
          adsBeforeThisIndex++;
        }
      }
    }

    postIndex = index - adsBeforeThisIndex;

    // Check if this is loading indicator
    if (postIndex >= postCount) return -2;

    return postIndex;
  }
}

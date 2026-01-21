import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/ui/native_ad_widget.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/feed/presentation/screens/comment_screen.dart';
import 'package:velora/features/feed/presentation/utils/feed_layout_constants.dart';
import 'package:velora/features/feed/presentation/widgets/empty_feed_widget.dart';
import 'package:velora/features/feed/presentation/widgets/feed_card.dart';
import 'package:velora/features/feed/presentation/widgets/feed_loading_shimmer.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_state.dart';
import 'package:velora/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:velora/features/notification/presentation/bloc/notification_event.dart';
import 'package:velora/features/notification/presentation/bloc/notification_state.dart';
import 'package:velora/features/post/presentation/widgets/upload_status_card.dart';
import 'package:velora/features/post/services/post_draft_service.dart';
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

      if (currentScroll >= maxScroll - FeedLayoutConstants.loadMoreThreshold) {
        final bloc = context.read<FeedBloc>();
        final state = bloc.state;
        final canLoadMore = !state.isLoadingMore &&
            !state.isLoadingInitial &&
            !state.isRefreshing &&
            state.hasMore &&
            state.cursor != null;

        if (canLoadMore) {
          bloc.add(const FeedEvent.loadMoreFeed());
        }
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
      // Start realtime feed watching
      context.read<FeedBloc>().add(const FeedEvent.startWatchFeed());
      scrollController.addListener(onScroll);
      return () {
        scrollController.removeListener(onScroll);
        // Stop realtime feed watching on dispose
        context.read<FeedBloc>().add(const FeedEvent.stopWatchFeed());
      };
    }, [scrollController]);

    // Load unread count once on mount
    useEffect(() {
      context.read<NotificationBloc>().add(
            const NotificationEvent.loadUnreadCount(),
          );
      return null;
    }, const []);

    // Track if upload is in progress
    final showUploadStatus = useState(false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pushNamed(AppRouteName.mediaGallery);
          },
          icon: Icon(
            Icons.add_box_outlined,
            size: 28,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        title: Text(
          'Velora',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        actions: [
          BlocBuilder<NotificationBloc, NotificationState>(
            buildWhen: (previous, current) =>
                previous.unreadCount != current.unreadCount,
            builder: (context, notificationState) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(AppRouteName.notification);
                    },
                    customBorder: const CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: NotificationBadge(
                        count: notificationState.unreadCount,
                        child: Icon(
                          Icons.notifications_none_outlined,
                          size: 28,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocListener<MediaUploadBloc, MediaUploadState>(
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
                          final postIndex =
                              FeedAdPositionCalculator.getPostIndex(
                            index,
                            posts.length,
                          );

                          // Show loading indicator at the end
                          if (postIndex == -2 && state.isLoadingMore) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 24.0,
                                horizontal: 16.0,
                              ),
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest
                                        .withValues(alpha: 0.5),
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .shadow
                                            .withValues(alpha: 0.05),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: SizedBox(
                                    width: 32,
                                    height: 32,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.5,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withValues(alpha: 0.8),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }

                          // Show ad at specific positions
                          if (postIndex == -1) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 0,
                              ),
                              child: NativeAdWidget(
                                key: ValueKey('native_ad_$index'),
                                height: FeedLayoutConstants.nativeAdHeight,
                                useTestAds: false,
                              ),
                            );
                          }

                          // Show regular post
                          final post = posts[postIndex];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: FeedCard(
                              key: ValueKey('feed_post_${post.id}'),
                              post: post,
                              onTap: () => onPostTap(post),
                              onCommentTap: () => onCommentsTap(post),
                            ),
                          );
                        },
                        childCount: FeedAdPositionCalculator.calculateItemCount(
                          posts.length,
                          hasLoadingIndicator: state.isLoadingMore,
                        ),
                        semanticIndexCallback: (widget, localIndex) {
                          final postIndex =
                              FeedAdPositionCalculator.getPostIndex(
                            localIndex,
                            posts.length,
                          );
                          return postIndex < 0 ? null : postIndex;
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
}

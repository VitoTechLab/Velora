import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/notification/domain/entities/notification_entity.dart';
import 'package:velora/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:velora/features/notification/presentation/bloc/notification_event.dart';
import 'package:velora/features/notification/presentation/bloc/notification_state.dart';
import 'package:velora/features/notification/presentation/widgets/notification_loading_shimmer.dart';
import 'package:velora/features/notification/presentation/widgets/notification_tile.dart';
import 'package:velora/features/notification/presentation/widgets/follow_requests_card.dart';
import 'package:velora/features/notification/presentation/widgets/notification_section_header.dart';
import 'package:velora/features/notification/presentation/widgets/empty_notifications_widget.dart';

class NotificationScreen extends HookWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final theme = Theme.of(context);

    void loadNotifications() {
      context
          .read<NotificationBloc>()
          .add(const NotificationEvent.loadInitial());
    }

    void onScroll() {
      if (!scrollController.hasClients) return;

      final maxScroll = scrollController.position.maxScrollExtent;
      final currentScroll = scrollController.position.pixels;
      const threshold = 200.0;

      if (currentScroll >= maxScroll - threshold) {
        final bloc = context.read<NotificationBloc>();
        final state = bloc.state;
        if (state.isLoadingMore ||
            state.isLoadingInitial ||
            state.isRefreshing ||
            !state.hasMore ||
            state.cursor == null) {
          return;
        }
        bloc.add(const NotificationEvent.loadMore());
      }
    }

    Future<void> onRefresh() async {
      context.read<NotificationBloc>().add(const NotificationEvent.refresh());
    }

    useEffect(() {
      loadNotifications();
      final bloc = context.read<NotificationBloc>();
      bloc.add(const NotificationEvent.startWatching());
      scrollController.addListener(onScroll);
      return () {
        scrollController.removeListener(onScroll);
        if (context.mounted) {
          bloc.add(const NotificationEvent.stopWatching());
        }
      };
    }, [scrollController]);

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.colorScheme.surface.withValues(alpha: 0.98),
                theme.colorScheme.surfaceContainerHighest
                    .withValues(alpha: 0.95),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.15),
                width: 1,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.primary.withValues(alpha: 0.08),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [
              theme.colorScheme.primary,
              theme.colorScheme.secondary,
            ],
          ).createShader(bounds),
          child: Text(
            'Notifications',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  theme.colorScheme.primaryContainer.withValues(alpha: 0.6),
                  theme.colorScheme.secondaryContainer.withValues(alpha: 0.6),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: theme.colorScheme.onPrimaryContainer,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onSelected: (value) {
                if (value == 'mark_all_read') {
                  context.read<NotificationBloc>().add(
                        const NotificationEvent.markAllAsRead(),
                      );
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'mark_all_read',
                  child: Row(
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            theme.colorScheme.primary,
                            theme.colorScheme.secondary,
                          ],
                        ).createShader(bounds),
                        child: const Icon(
                          Icons.done_all,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Mark all as read'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: BlocListener<NotificationBloc, NotificationState>(
        listenWhen: (previous, next) =>
            previous.error != next.error || previous.message != next.message,
        listener: (context, state) {
          if (state.error != null) {
            AppMessenger.showToast(
              message: state.error!,
              icon: Icons.warning_amber_outlined,
              isError: true,
              duration: const Duration(seconds: 3),
            );
          }
          if (state.message != null) {
            AppMessenger.showToast(
              message: state.message!,
              icon: Icons.check_circle_outline,
              duration: const Duration(seconds: 2),
            );
          }
        },
        child: BlocBuilder<NotificationBloc, NotificationState>(
          buildWhen: (previous, next) =>
              previous.notifications != next.notifications ||
              previous.isLoadingInitial != next.isLoadingInitial ||
              previous.isRefreshing != next.isRefreshing ||
              previous.isLoadingMore != next.isLoadingMore ||
              previous.error != next.error,
          builder: (context, state) {
            final notifications = state.notifications;

            if (state.isLoadingInitial && notifications.isEmpty) {
              return const NotificationLoadingShimmer();
            }

            if (state.error != null && notifications.isEmpty) {
              return EmptyNotificationsWidget(
                message: 'Failed to load notifications',
                subtitle: state.error,
                onRefresh: loadNotifications,
              );
            }

            if (notifications.isEmpty) {
              return RefreshIndicator(
                onRefresh: onRefresh,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: const EmptyNotificationsWidget(),
                      ),
                    );
                  },
                ),
              );
            }

            // Group notifications by time category
            final groupedNotifications = _groupNotifications(notifications);
            final followRequests = notifications
                .where((n) => n.type == NotificationType.followRequest)
                .toList();

            return RefreshIndicator(
              onRefresh: onRefresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                controller: scrollController,
                slivers: [
                  // Follow requests card at top
                  if (followRequests.isNotEmpty)
                    SliverToBoxAdapter(
                      child: TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeOutCubic,
                        builder: (context, value, child) {
                          return Transform.translate(
                            offset: Offset(0, 20 * (1 - value)),
                            child: Opacity(
                              opacity: value,
                              child: child,
                            ),
                          );
                        },
                        child: FollowRequestsCard(
                          requests: followRequests,
                          onTap: () {
                            // Navigate to follow requests screen
                          },
                        ),
                      ),
                    ),

                  // Today section
                  if (groupedNotifications.today.isNotEmpty) ...[
                    const SliverToBoxAdapter(
                      child: NotificationSectionHeader(title: 'Today'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final notification =
                              groupedNotifications.today[index];
                          return TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0.0, end: 1.0),
                            duration: Duration(
                              milliseconds: 300 + (index * 50).clamp(0, 500),
                            ),
                            curve: Curves.easeOutCubic,
                            builder: (context, value, child) {
                              return Transform.translate(
                                offset: Offset(20 * (1 - value), 0),
                                child: Opacity(
                                  opacity: value,
                                  child: child,
                                ),
                              );
                            },
                            child:
                                _buildNotificationTile(context, notification),
                          );
                        },
                        childCount: groupedNotifications.today.length,
                      ),
                    ),
                  ],

                  // Yesterday section
                  if (groupedNotifications.yesterday.isNotEmpty) ...[
                    const SliverToBoxAdapter(
                      child: NotificationSectionHeader(title: 'Yesterday'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final notification =
                              groupedNotifications.yesterday[index];
                          return TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0.0, end: 1.0),
                            duration: Duration(
                              milliseconds: 300 + (index * 50).clamp(0, 500),
                            ),
                            curve: Curves.easeOutCubic,
                            builder: (context, value, child) {
                              return Transform.translate(
                                offset: Offset(20 * (1 - value), 0),
                                child: Opacity(
                                  opacity: value,
                                  child: child,
                                ),
                              );
                            },
                            child:
                                _buildNotificationTile(context, notification),
                          );
                        },
                        childCount: groupedNotifications.yesterday.length,
                      ),
                    ),
                  ],

                  // Last 7 days section
                  if (groupedNotifications.last7Days.isNotEmpty) ...[
                    const SliverToBoxAdapter(
                      child: NotificationSectionHeader(title: 'Last 7 days'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final notification =
                              groupedNotifications.last7Days[index];
                          return _buildNotificationTile(context, notification);
                        },
                        childCount: groupedNotifications.last7Days.length,
                      ),
                    ),
                  ],

                  // Last 30 days section
                  if (groupedNotifications.last30Days.isNotEmpty) ...[
                    const SliverToBoxAdapter(
                      child: NotificationSectionHeader(title: 'Last 30 days'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final notification =
                              groupedNotifications.last30Days[index];
                          return _buildNotificationTile(context, notification);
                        },
                        childCount: groupedNotifications.last30Days.length,
                      ),
                    ),
                  ],

                  // Older section
                  if (groupedNotifications.older.isNotEmpty) ...[
                    const SliverToBoxAdapter(
                      child: NotificationSectionHeader(title: 'Older'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final notification =
                              groupedNotifications.older[index];
                          return _buildNotificationTile(context, notification);
                        },
                        childCount: groupedNotifications.older.length,
                      ),
                    ),
                  ],

                  // Loading more indicator
                  if (state.isLoadingMore)
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0.0, end: 1.0),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeOut,
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: Opacity(
                                  opacity: value,
                                  child: child,
                                ),
                              );
                            },
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  // Bottom padding
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 24),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNotificationTile(
      BuildContext context, NotificationEntity notification) {
    // Skip follow requests since they're shown in the card
    if (notification.type == NotificationType.followRequest) {
      return const SizedBox.shrink();
    }

    return BlocBuilder<NotificationBloc, NotificationState>(
      buildWhen: (previous, next) =>
          previous.followLoadingIds.contains(notification.id) !=
          next.followLoadingIds.contains(notification.id),
      builder: (context, state) {
        final isFollowLoading =
            state.followLoadingIds.contains(notification.id);

        return Dismissible(
          key: Key('notification_${notification.id}'),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.error.withValues(alpha: 0.8),
                  Theme.of(context).colorScheme.error,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(height: 4),
                Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          onDismissed: (_) {
            if (context.mounted) {
              context.read<NotificationBloc>().add(
                    NotificationEvent.delete(notification.id),
                  );
            }
          },
          child: NotificationTile(
            notification: notification,
            isFollowLoading: isFollowLoading,
            onTap: () {
              if (!context.mounted) return;
              // Mark as read
              if (!notification.isRead) {
                context.read<NotificationBloc>().add(
                      NotificationEvent.markAsRead(notification.id),
                    );
              }
              // Navigate based on notification type
              _handleNotificationTap(context, notification);
            },
            onFollowBack: notification.actorId != null
                ? () {
                    if (!context.mounted) return;
                    context.read<NotificationBloc>().add(
                          NotificationEvent.toggleFollowActor(
                            notificationId: notification.id,
                            actorId: notification.actorId!,
                          ),
                        );
                  }
                : null,
          ),
        );
      },
    );
  }

  void _handleNotificationTap(
      BuildContext context, NotificationEntity notification) {
    switch (notification.type) {
      case NotificationType.like:
      case NotificationType.comment:
      case NotificationType.mention:
      case NotificationType.postShare:
        // Navigate to post detail
        if (notification.targetId != null) {
          // context.pushNamed(AppRouteName.postDetail, pathParameters: {'id': notification.targetId!});
        }
        break;
      case NotificationType.follow:
      case NotificationType.followRequest:
      case NotificationType.followAccepted:
        // Navigate to profile
        if (notification.actorId != null) {
          // context.pushNamed(AppRouteName.profile, pathParameters: {'id': notification.actorId!});
        }
        break;
      case NotificationType.donation:
      case NotificationType.campaignCreated:
      case NotificationType.campaignUpdate:
        // Navigate to campaign
        if (notification.targetId != null) {
          // context.pushNamed(AppRouteName.campaignDetail, pathParameters: {'id': notification.targetId!});
        }
        break;
      case NotificationType.channelInvite:
        // Navigate to channel
        break;
    }
  }

  _GroupedNotifications _groupNotifications(
      List<NotificationEntity> notifications) {
    final today = <NotificationEntity>[];
    final yesterday = <NotificationEntity>[];
    final last7Days = <NotificationEntity>[];
    final last30Days = <NotificationEntity>[];
    final older = <NotificationEntity>[];

    for (final notification in notifications) {
      switch (notification.timeCategory) {
        case NotificationTimeCategory.today:
          today.add(notification);
          break;
        case NotificationTimeCategory.yesterday:
          yesterday.add(notification);
          break;
        case NotificationTimeCategory.last7Days:
          last7Days.add(notification);
          break;
        case NotificationTimeCategory.last30Days:
          last30Days.add(notification);
          break;
        case NotificationTimeCategory.older:
          older.add(notification);
          break;
      }
    }

    return _GroupedNotifications(
      today: today,
      yesterday: yesterday,
      last7Days: last7Days,
      last30Days: last30Days,
      older: older,
    );
  }
}

class _GroupedNotifications {
  final List<NotificationEntity> today;
  final List<NotificationEntity> yesterday;
  final List<NotificationEntity> last7Days;
  final List<NotificationEntity> last30Days;
  final List<NotificationEntity> older;

  _GroupedNotifications({
    required this.today,
    required this.yesterday,
    required this.last7Days,
    required this.last30Days,
    required this.older,
  });
}

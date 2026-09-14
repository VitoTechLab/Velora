import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/feed/presentation/screens/comment_screen.dart';
import 'package:velora/features/feed/presentation/widgets/feed_card.dart';
import 'package:velora/features/feed/presentation/widgets/feed_loading_shimmer.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_bloc.dart';

class UserPostsScreen extends StatelessWidget {
  final String userId;
  final int initialPostIndex;
  final String? username;

  const UserPostsScreen({
    super.key,
    required this.userId,
    required this.initialPostIndex,
    this.username,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<FeedBloc>()
            ..add(FeedEvent.loadInitialFeed(limit: 50, userId: userId)),
        ),
        BlocProvider(
          create: (_) => getIt<SocialRelationBloc>(),
        ),
      ],
      child: _UserPostsContent(
        userId: userId,
        initialPostIndex: initialPostIndex,
        username: username,
      ),
    );
  }
}

class _UserPostsContent extends HookWidget {
  final String userId;
  final int initialPostIndex;
  final String? username;

  const _UserPostsContent({
    required this.userId,
    required this.initialPostIndex,
    this.username,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final scrollController = useScrollController();
    final hasScrolledToInitial = useState(false);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: const BackButton(),
        title: Text(
          username != null ? 'Impact updates' : 'Updates',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: BlocConsumer<FeedBloc, FeedState>(
        listenWhen: (previous, current) =>
            previous.isLoadingInitial && !current.isLoadingInitial,
        listener: (context, state) {
          if (!hasScrolledToInitial.value && state.posts.isNotEmpty) {
            hasScrolledToInitial.value = true;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (scrollController.hasClients && initialPostIndex > 0) {
                final estimatedPosition = initialPostIndex * 500.0;
                scrollController.animateTo(
                  estimatedPosition.clamp(
                    0.0,
                    scrollController.position.maxScrollExtent,
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic,
                );
              }
            });
          }
        },
        builder: (context, state) {
          if (state.isLoadingInitial) {
            return const FeedLoadingShimmer();
          }

          if (state.posts.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.assignment_outlined,
                    size: 64,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No impact updates yet',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              context.read<FeedBloc>().add(
                    FeedEvent.loadInitialFeed(limit: 50, userId: userId),
                  );
            },
            child: ListView.builder(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              itemCount: state.posts.length + (state.isLoadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == state.posts.length) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.0),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                final post = state.posts[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: FeedCard(
                    key: ValueKey('user_post_${post.id}'),
                    post: post,
                    onCommentTap: () {
                      CommentScreen.show(context, post);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/ui/app_bottom_sheet.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/format_utils.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_state.dart';
import 'package:velora/l10n/app_localizations.dart';

class CommentScreen {
  CommentScreen._();

  static Future<void> show(BuildContext context, FeedEntity post) {
    final t = AppLocalizations.of(context)!;
    return AppBottomSheet.showDraggable(
      title: t.feedCommentsTitle,
      showCloseButton: false,
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      isDismissible: true,
      enableDrag: true,
      contentPadding: EdgeInsets.zero,
      builder: (scrollController) {
        return BlocProvider(
          create: (_) =>
              getIt<FeedCommentBloc>()
                ..add(LoadFeedCommentsEvent(postId: post.id, limit: 20)),
          child: _CommentBottomSheetContent(
            post: post,
            scrollController: scrollController,
          ),
        );
      },
    );
  }
}

class _CommentBottomSheetContent extends HookWidget {
  const _CommentBottomSheetContent({
    required this.post,
    required this.scrollController,
  });

  final FeedEntity post;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final commentController = useTextEditingController();
    final replyingTo = useState<CommentEntity?>(null);
    final t = AppLocalizations.of(context)!;

    // Watch for scroll events to load more comments
    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) return;

        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          final bloc = context.read<FeedCommentBloc>();
          final state = bloc.state;
          if (state.hasMore && !state.isLoadingMore && !state.isLoading) {
            bloc.add(LoadMoreFeedCommentsEvent(postId: post.id, limit: 20));
          }
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    void onSendComment() {
      final content = commentController.text.trim();
      if (content.isEmpty) return;

      context.read<FeedCommentBloc>().add(
        AddFeedCommentEvent(
          postId: post.id,
          content: content,
          parentCommentId: replyingTo.value?.id,
        ),
      );
      commentController.clear();
      replyingTo.value = null;
    }

    void onReply(CommentEntity comment) {
      replyingTo.value = comment;
    }

    void onCancelReply() {
      replyingTo.value = null;
    }

    void onLikeComment(CommentEntity comment) {
      context.read<FeedCommentBloc>().add(
        ToggleFeedCommentLikeEvent(comment.id),
      );
    }

    return BlocListener<FeedCommentBloc, FeedCommentState>(
      listenWhen: (prev, next) =>
          prev.message != next.message ||
          prev.errorMessage != next.errorMessage ||
          prev.addError != next.addError,
      listener: (context, state) {
        final error = state.errorMessage ?? state.addError;
        if (error != null) {
          AppMessenger.showToast(
            message: error,
            icon: Icons.error_outline,
            isError: true,
            duration: const Duration(seconds: 2),
          );
          context.read<FeedCommentBloc>().add(
            const ClearFeedCommentMessagesEvent(),
          );
        } else if (state.message != null) {
          context.read<FeedCommentBloc>().add(
            const ClearFeedCommentMessagesEvent(),
          );
        }
      },
      child: Column(
        children: [
          // Comments list with scroll
          Expanded(
            child: BlocBuilder<FeedCommentBloc, FeedCommentState>(
              buildWhen: (prev, curr) =>
                  prev.comments != curr.comments ||
                  prev.isLoading != curr.isLoading ||
                  prev.isLoadingMore != curr.isLoadingMore,
              builder: (context, state) {
                return _CommentsList(
                  scrollController: scrollController,
                  comments: state.comments,
                  isLoading: state.isLoading,
                  isLoadingMore: state.isLoadingMore,
                  onLike: onLikeComment,
                  onReply: onReply,
                );
              },
            ),
          ),

          // Emoji bar + Input field (Refactored to separate widget)
          _CommentInputArea(
            controller: commentController,
            onSend: onSendComment,
            replyingTo: replyingTo.value,
            onCancelReply: onCancelReply,
            commentHint: t.feedAddCommentHint(
              post.username ?? t.feedUnknownUser,
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentInputArea extends StatelessWidget {
  const _CommentInputArea({
    required this.controller,
    required this.onSend,
    required this.replyingTo,
    required this.onCancelReply,
    required this.commentHint,
  });

  final TextEditingController controller;
  final VoidCallback onSend;
  final CommentEntity? replyingTo;
  final VoidCallback onCancelReply;
  final String commentHint;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<FeedCommentBloc, FeedCommentState>(
      buildWhen: (prev, curr) => prev.isAdding != curr.isAdding,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            border: Border(
              top: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Reply banner
              if (replyingTo != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  color: colorScheme.surfaceContainerHighest,
                  child: Row(
                    children: [
                      Icon(Icons.reply, size: 16, color: colorScheme.primary),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          t.feedReplyingTo(
                            replyingTo!.userFullName ?? t.feedUnknownUser,
                          ),
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: onCancelReply,
                        child: Icon(
                          Icons.close,
                          size: 18,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),

              // Input row
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    // Avatar
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: colorScheme.surfaceContainerHighest,
                      child: Icon(
                        Icons.person,
                        size: 18,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Input field
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: colorScheme.outlineVariant,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: TextField(
                          controller: controller,
                          enabled: !state.isAdding,
                          decoration: InputDecoration(
                            hintText: commentHint,
                            hintStyle: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            isDense: true,
                          ),
                          style: textTheme.bodyMedium?.copyWith(fontSize: 14),
                          maxLines: 3,
                          minLines: 1,
                          textCapitalization: TextCapitalization.sentences,
                          onSubmitted: (_) => onSend(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),

                    // Send button
                    if (state.isAdding)
                      const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    else
                      IconButton(
                        onPressed: onSend,
                        icon: Icon(
                          Icons.send_rounded,
                          color: colorScheme.primary,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// FIXED: Removed 'void' from extends
class _CommentsList extends StatelessWidget {
  const _CommentsList({
    required this.scrollController,
    required this.comments,
    required this.isLoading,
    required this.isLoadingMore,
    required this.onLike,
    required this.onReply,
  });

  final ScrollController scrollController;
  final List<CommentEntity> comments;
  final bool isLoading;
  final bool isLoadingMore;
  final Function(CommentEntity) onLike;
  final Function(CommentEntity) onReply;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    if (isLoading && comments.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (comments.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.comment_outlined,
              size: 64,
              color: colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              t.feedNoCommentsTitle,
              style: textTheme.titleMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t.feedNoCommentsSubtitle,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: comments.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == comments.length) {
          return const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final comment = comments[index];
        return _CommentItem(
          comment: comment,
          onLike: () => onLike(comment),
          onReply: () => onReply(comment),
        );
      },
    );
  }
}

// FIXED: Removed 'void' from extends
class _CommentItem extends StatelessWidget {
  const _CommentItem({
    required this.comment,
    required this.onLike,
    required this.onReply,
  });

  final CommentEntity comment;
  final VoidCallback onLike;
  final VoidCallback onReply;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar
          CircleAvatar(
            radius: 18,
            backgroundColor: colorScheme.surfaceContainerHighest,
            child: Icon(
              Icons.person,
              size: 18,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(width: 12),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Username + time
                Row(
                  children: [
                    Text(
                      comment.userFullName ?? t.feedUnknownUser,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const SizedBox(width: 8),
                    Text(
                      FormatUtils.formatTimeAgo(
                        comment.createdAt,
                        context: context,
                      ),
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),

                // Comment text
                Text(
                  comment.content,
                  style: textTheme.bodyMedium?.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 8),

                // Action buttons row
                Row(
                  children: [
                    InkWell(
                      onTap: onReply,
                      child: Text(
                        t.feedReplyAction,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    InkWell(
                      onTap: () {
                        // TODO: Implement translation
                      },
                      child: Text(
                        t.feedSeeTranslation,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),

                // View replies (if has replies)
                if (comment.replies.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: InkWell(
                      onTap: () {
                        // Show replies
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 24,
                            height: 1,
                            color: colorScheme.outlineVariant,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            t.feedViewReplies(comment.replies.length),
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // Like button + count
          Column(
            children: [
              InkWell(
                onTap: onLike,
                child: Icon(
                  comment.isLiked ? Icons.favorite : Icons.favorite_border,
                  size: 14,
                  color: comment.isLiked
                      ? colorScheme.error
                      : colorScheme.onSurfaceVariant,
                ),
              ),
              if (comment.likesCount > 0)
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    comment.likesCount.toString(),
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontSize: 11,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

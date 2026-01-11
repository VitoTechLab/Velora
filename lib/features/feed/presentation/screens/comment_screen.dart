import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/ui/app_bottom_sheet.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_state.dart';
import 'package:velora/features/feed/presentation/widgets/comment_content_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Comment screen shown as a draggable bottom sheet
///
/// Usage:
/// ```dart
/// CommentScreen.show(context, post);
/// ```
class CommentScreen {
  CommentScreen._();

  /// Show the comment bottom sheet for a post
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
          create: (_) => getIt<FeedCommentBloc>()
            ..add(LoadFeedCommentsEvent(postId: post.id, limit: 20))
            ..add(StartWatchCommentsEvent(postId: post.id)),
          child: _CommentSheetContent(
            post: post,
            scrollController: scrollController,
          ),
        );
      },
    );
  }
}

// ============================================================================
// Main Content Widget
// ============================================================================

class _CommentSheetContent extends HookWidget {
  const _CommentSheetContent({
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

    // Setup scroll listener for pagination
    _useScrollPagination(
      context: context,
      scrollController: scrollController,
      postId: post.id,
    );

    // Cleanup on dispose
    useEffect(() {
      return () {
        context.read<FeedCommentBloc>().add(const StopWatchCommentsEvent());
      };
    }, const []);

    void handleSendComment() {
      final content = commentController.text.trim();
      if (content.isEmpty) return;

      // For nested replies, use the root parent ID
      String? targetParentId = replyingTo.value?.id;
      if (replyingTo.value?.parentCommentId != null) {
        targetParentId = replyingTo.value!.parentCommentId;
      }

      context.read<FeedCommentBloc>().add(
        AddFeedCommentEvent(
          postId: post.id,
          content: content,
          parentCommentId: targetParentId,
        ),
      );

      commentController.clear();
      replyingTo.value = null;
    }

    void handleLikeComment(CommentEntity comment) {
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
        _handleStateMessages(context, state);
      },
      child: Column(
        children: [
          // Comments list
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
                  onLike: handleLikeComment,
                  onReply: (comment) => replyingTo.value = comment,
                );
              },
            ),
          ),

          // Input field
          _CommentInputField(
            controller: commentController,
            onSend: handleSendComment,
            replyingTo: replyingTo.value,
            onCancelReply: () => replyingTo.value = null,
            isPostOwner: post.isMe,
            postUsername: post.username ?? t.feedUnknownUser,
          ),
        ],
      ),
    );
  }

  void _handleStateMessages(BuildContext context, FeedCommentState state) {
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
  }
}

/// Hook for setting up scroll-based pagination
void _useScrollPagination({
  required BuildContext context,
  required ScrollController scrollController,
  required String postId,
}) {
  useEffect(() {
    void onScroll() {
      if (!scrollController.hasClients) return;

      final isNearBottom = scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 200;

      if (isNearBottom) {
        final bloc = context.read<FeedCommentBloc>();
        final state = bloc.state;
        final canLoadMore = state.hasMore && !state.isLoadingMore && !state.isLoading;

        if (canLoadMore) {
          bloc.add(LoadMoreFeedCommentsEvent(postId: postId, limit: 20));
        }
      }
    }

    scrollController.addListener(onScroll);
    return () => scrollController.removeListener(onScroll);
  }, [scrollController]);
}

// ============================================================================
// Comments List Widget
// ============================================================================

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
  final ValueChanged<CommentEntity> onLike;
  final ValueChanged<CommentEntity> onReply;

  @override
  Widget build(BuildContext context) {
    if (isLoading && comments.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (comments.isEmpty) {
      return const _EmptyCommentsView();
    }

    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: comments.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        // Loading indicator at the end
        if (index == comments.length) {
          return const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final comment = comments[index];
        return _CommentItemWithReplies(
          comment: comment,
          onLike: onLike,
          onReply: () => onReply(comment),
        );
      },
    );
  }
}

class _EmptyCommentsView extends StatelessWidget {
  const _EmptyCommentsView();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

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
}

// ============================================================================
// Comment Item with Replies
// ============================================================================

class _CommentItemWithReplies extends HookWidget {
  const _CommentItemWithReplies({
    required this.comment,
    required this.onLike,
    required this.onReply,
  });

  final CommentEntity comment;
  final ValueChanged<CommentEntity> onLike;
  final VoidCallback onReply;

  @override
  Widget build(BuildContext context) {
    final showReplies = useState(false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Root comment
          CommentContentTile(
            comment: comment,
            onLike: () => onLike(comment),
            onReply: onReply,
            onToggleReplies: comment.replies.isNotEmpty
                ? () => showReplies.value = !showReplies.value
                : null,
            showReplies: showReplies.value,
          ),

          // Replies list (expanded)
          if (showReplies.value && comment.replies.isNotEmpty)
            ...comment.replies.map(
              (reply) => CommentContentTile(
                key: ValueKey(reply.id),
                comment: reply,
                onLike: () => onLike(reply),
                isReply: true,
              ),
            ),
        ],
      ),
    );
  }
}

// ============================================================================
// Comment Input Field
// ============================================================================

class _CommentInputField extends StatelessWidget {
  const _CommentInputField({
    required this.controller,
    required this.onSend,
    required this.replyingTo,
    required this.onCancelReply,
    required this.isPostOwner,
    required this.postUsername,
  });

  final TextEditingController controller;
  final VoidCallback onSend;
  final CommentEntity? replyingTo;
  final VoidCallback onCancelReply;
  final bool isPostOwner;
  final String postUsername;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;

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
                _ReplyBanner(
                  username: replyingTo!.userFullName ?? t.feedUnknownUser,
                  onCancel: onCancelReply,
                ),

              // Input row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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

                    // Text field
                    Expanded(
                      child: _InputTextField(
                        controller: controller,
                        enabled: !state.isAdding,
                        hintText: isPostOwner
                            ? t.feedCommentAsUser(postUsername)
                            : t.feedAddCommentHint(postUsername),
                        onSubmitted: onSend,
                      ),
                    ),
                    const SizedBox(width: 8),

                    // Send button
                    _SendButton(
                      isLoading: state.isAdding,
                      onSend: onSend,
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

class _ReplyBanner extends StatelessWidget {
  const _ReplyBanner({
    required this.username,
    required this.onCancel,
  });

  final String username;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: colorScheme.surfaceContainerHighest,
      child: Row(
        children: [
          Icon(Icons.reply, size: 16, color: colorScheme.primary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              t.feedReplyingTo(username),
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          InkWell(
            onTap: onCancel,
            child: Icon(
              Icons.close,
              size: 18,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _InputTextField extends StatelessWidget {
  const _InputTextField({
    required this.controller,
    required this.enabled,
    required this.hintText,
    required this.onSubmitted,
  });

  final TextEditingController controller;
  final bool enabled;
  final String hintText;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.outlineVariant, width: 1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextField(
        controller: controller,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: hintText,
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
        onSubmitted: (_) => onSubmitted(),
      ),
    );
  }
}

class _SendButton extends StatelessWidget {
  const _SendButton({
    required this.isLoading,
    required this.onSend,
  });

  final bool isLoading;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (isLoading) {
      return const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return IconButton(
      onPressed: onSend,
      icon: Icon(Icons.send_rounded, color: colorScheme.primary),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
    );
  }
}

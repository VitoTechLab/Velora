import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/services/translation_service.dart';
import 'package:velora/core/ui/app_bottom_sheet.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/format_utils.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
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
          create: (_) => getIt<FeedCommentBloc>()
            ..add(LoadFeedCommentsEvent(postId: post.id, limit: 20))
            ..add(StartWatchCommentsEvent(postId: post.id)),
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
      return () {
        scrollController.removeListener(onScroll);
        // Stop watching when screen closes
        context.read<FeedCommentBloc>().add(const StopWatchCommentsEvent());
      };
    }, [scrollController]);

    void onSendComment() {
      final content = commentController.text.trim();
      if (content.isEmpty) return;

      // Determine the correct parent ID (Root ID)
      // If we reply to a reply, use its parent ID.
      // If we reply to a root, use its ID.
      String? targetParentId = replyingTo.value?.id;
      if (replyingTo.value != null &&
          replyingTo.value!.parentCommentId != null) {
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
            isPostOwner: post.isMe,
            postUsername: post.username ?? t.feedUnknownUser,
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
                            hintText: isPostOwner
                                ? t.feedCommentAsUser(postUsername)
                                : t.feedAddCommentHint(postUsername),
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
          onLike: onLike,
          onReply: () => onReply(comment),
        );
      },
    );
  }
}

// Converted to HookWidget for cleaner lifecycle management
class _CommentItem extends HookWidget {
  const _CommentItem({
    required this.comment,
    required this.onLike,
    required this.onReply,
  });

  final CommentEntity comment;
  final Function(CommentEntity) onLike;
  final VoidCallback onReply;

  @override
  Widget build(BuildContext context) {
    // Using useState instead of StatefulWidget's setState
    // This only rebuilds when showReplies changes
    final showReplies = useState(false);

    // Translation state
    final translationState = useState<_TranslationState>(
      _TranslationState.original,
    );
    final translatedText = useState<String?>(null);

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    Future<void> handleTranslation() async {
      if (translationState.value == _TranslationState.loading) return;

      if (translationState.value == _TranslationState.translated) {
        translationState.value = _TranslationState.original;
        return;
      }

      translationState.value = _TranslationState.loading;

      try {
        final translationService = getIt<TranslationService>();
        final locale = Localizations.localeOf(context);
        final targetLang = locale.languageCode;

        final result = await translationService.translate(
          text: comment.content,
          targetLanguageCode: targetLang,
        );

        if (result != null) {
          translatedText.value = result.translatedText;
          translationState.value = _TranslationState.translated;
        } else {
          // Same language or not supported
          translationState.value = _TranslationState.original;
        }
      } catch (e) {
        translationState.value = _TranslationState.original;
      }
    }

    String getTranslationButtonText() {
      switch (translationState.value) {
        case _TranslationState.original:
          return t.feedSeeTranslation;
        case _TranslationState.loading:
          return t.feedTranslating;
        case _TranslationState.translated:
          return t.feedSeeOriginal;
      }
    }

    final displayText = translationState.value == _TranslationState.translated
        ? translatedText.value ?? comment.content
        : comment.content;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar - Larger for root comment
          CircleAvatar(
            radius: 20,
            backgroundColor: colorScheme.surfaceContainerHighest,
            child: Icon(
              Icons.person,
              size: 20,
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

                // Comment text with animation
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  switchInCurve: Curves.easeInOut,
                  switchOutCurve: Curves.easeInOut,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: SizeTransition(
                        sizeFactor: animation,
                        axisAlignment: -1,
                        child: child,
                      ),
                    );
                  },
                  child: Text(
                    displayText,
                    key: ValueKey(displayText),
                    style: textTheme.bodyMedium?.copyWith(fontSize: 14),
                  ),
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
                      onTap: handleTranslation,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child: Text(
                          getTranslationButtonText(),
                          key: ValueKey(translationState.value),
                          style: textTheme.bodySmall?.copyWith(
                            color:
                                translationState.value ==
                                    _TranslationState.loading
                                ? colorScheme.primary
                                : colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // View replies (if has replies) - Instagram style
                if (comment.replies.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: InkWell(
                      onTap: () {
                        showReplies.value = !showReplies.value;
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 32,
                            height: 1,
                            color: colorScheme.outlineVariant,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            showReplies.value
                                ? t.feedHideReplies
                                : t.feedViewReplies(comment.replies.length),
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                // Replies list
                if (showReplies.value && comment.replies.isNotEmpty)
                  ...comment.replies.map(
                    (reply) => _ReplyItem(reply: reply, onLike: onLike),
                  ),
              ],
            ),
          ),

          // Like button + count
          Column(
            children: [
              InkWell(
                onTap: () => onLike(comment),
                child: Icon(
                  comment.isLiked ? Icons.favorite : Icons.favorite_border,
                  size: 20,
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

// Reply item with smaller avatar - now with HookWidget for translation
class _ReplyItem extends HookWidget {
  const _ReplyItem({required this.reply, required this.onLike});

  final CommentEntity reply;
  final Function(CommentEntity) onLike;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    // Translation state
    final translationState = useState<_TranslationState>(
      _TranslationState.original,
    );
    final translatedText = useState<String?>(null);

    Future<void> handleTranslation() async {
      if (translationState.value == _TranslationState.loading) return;

      if (translationState.value == _TranslationState.translated) {
        translationState.value = _TranslationState.original;
        return;
      }

      translationState.value = _TranslationState.loading;

      try {
        final translationService = getIt<TranslationService>();
        final locale = Localizations.localeOf(context);
        final targetLang = locale.languageCode;

        final result = await translationService.translate(
          text: reply.content,
          targetLanguageCode: targetLang,
        );

        if (result != null) {
          translatedText.value = result.translatedText;
          translationState.value = _TranslationState.translated;
        } else {
          translationState.value = _TranslationState.original;
        }
      } catch (e) {
        translationState.value = _TranslationState.original;
      }
    }

    String getTranslationButtonText() {
      switch (translationState.value) {
        case _TranslationState.original:
          return t.feedSeeTranslation;
        case _TranslationState.loading:
          return t.feedTranslating;
        case _TranslationState.translated:
          return t.feedSeeOriginal;
      }
    }

    final displayText = translationState.value == _TranslationState.translated
        ? translatedText.value ?? reply.content
        : reply.content;

    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar - Smaller for replies
          CircleAvatar(
            radius: 14,
            backgroundColor: colorScheme.surfaceContainerHighest,
            child: Icon(
              Icons.person,
              size: 14,
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
                      reply.userFullName ?? t.feedUnknownUser,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      FormatUtils.formatTimeAgo(
                        reply.createdAt,
                        context: context,
                      ),
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),

                // Comment text with animation
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  switchInCurve: Curves.easeInOut,
                  switchOutCurve: Curves.easeInOut,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: SizeTransition(
                        sizeFactor: animation,
                        axisAlignment: -1,
                        child: child,
                      ),
                    );
                  },
                  child: Text(
                    displayText,
                    key: ValueKey(displayText),
                    style: textTheme.bodyMedium?.copyWith(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 4),

                // Translation button
                InkWell(
                  onTap: handleTranslation,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: Text(
                      getTranslationButtonText(),
                      key: ValueKey(translationState.value),
                      style: textTheme.bodySmall?.copyWith(
                        color:
                            translationState.value == _TranslationState.loading
                            ? colorScheme.primary
                            : colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
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
                onTap: () => onLike(reply),
                child: Icon(
                  reply.isLiked ? Icons.favorite : Icons.favorite_border,
                  size: 18,
                  color: reply.isLiked
                      ? colorScheme.error
                      : colorScheme.onSurfaceVariant,
                ),
              ),
              if (reply.likesCount > 0)
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    reply.likesCount.toString(),
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

/// Translation state for comment items
enum _TranslationState { original, loading, translated }

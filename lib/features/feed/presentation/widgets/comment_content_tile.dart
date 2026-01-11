import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/utils/format_utils.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/hooks/use_translation.dart';

/// Reusable comment content widget with translation support
///
/// Used by both root comments and replies in comment screens.
/// Supports:
/// - User avatar with configurable size
/// - Username and timestamp
/// - Translatable content text
/// - Like button with count
/// - Optional reply action
/// - Optional "view replies" toggle
class CommentContentTile extends HookWidget {
  const CommentContentTile({
    super.key,
    required this.comment,
    required this.onLike,
    this.onReply,
    this.onToggleReplies,
    this.showReplies = false,
    this.isReply = false,
  });

  /// The comment entity to display
  final CommentEntity comment;

  /// Callback when like button is tapped
  final VoidCallback onLike;

  /// Callback when reply action is tapped (null hides the reply button)
  final VoidCallback? onReply;

  /// Callback when "view replies" is tapped (only for root comments with replies)
  final VoidCallback? onToggleReplies;

  /// Whether replies are currently shown (controls toggle text)
  final bool showReplies;

  /// Whether this is a reply (smaller avatar, indented)
  final bool isReply;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    // Use the translation hook for clean state management
    final translation = useTranslation(comment.content);

    // Avatar and font sizes based on whether this is a reply
    final avatarRadius = isReply ? 14.0 : 20.0;
    final iconSize = isReply ? 14.0 : 20.0;
    final likeIconSize = isReply ? 18.0 : 20.0;
    final actionFontSize = isReply ? 12.0 : 13.0;

    return Padding(
      padding: EdgeInsets.only(
        left: isReply ? 32.0 : 0.0,
        top: isReply ? 12.0 : 0.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar
          CircleAvatar(
            radius: avatarRadius,
            backgroundColor: colorScheme.surfaceContainerHighest,
            child: Icon(
              Icons.person,
              size: iconSize,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(width: 12),

          // Content column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Username + timestamp row
                _UserInfoRow(
                  username: comment.userFullName ?? t.feedUnknownUser,
                  createdAt: comment.createdAt,
                ),
                const SizedBox(height: 4),

                // Comment text with animation
                _AnimatedText(text: translation.displayText),
                const SizedBox(height: 8),

                // Action buttons row
                _ActionButtonsRow(
                  onReply: onReply,
                  translation: translation,
                  actionFontSize: actionFontSize,
                ),

                // View replies toggle (only for root comments with replies)
                if (!isReply && comment.replies.isNotEmpty && onToggleReplies != null)
                  _ViewRepliesToggle(
                    replyCount: comment.replies.length,
                    showReplies: showReplies,
                    onTap: onToggleReplies!,
                  ),
              ],
            ),
          ),

          // Like button column
          _LikeButton(
            isLiked: comment.isLiked,
            likesCount: comment.likesCount,
            iconSize: likeIconSize,
            onTap: onLike,
          ),
        ],
      ),
    );
  }
}

/// User info row with username and timestamp
class _UserInfoRow extends StatelessWidget {
  const _UserInfoRow({
    required this.username,
    required this.createdAt,
  });

  final String username;
  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Text(
          username,
          style: textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          FormatUtils.formatTimeAgo(createdAt, context: context),
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

/// Animated text widget for smooth translation transitions
class _AnimatedText extends StatelessWidget {
  const _AnimatedText({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AnimatedSwitcher(
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
        text,
        key: ValueKey(text),
        style: textTheme.bodyMedium?.copyWith(fontSize: 14),
      ),
    );
  }
}

/// Action buttons row (Reply + Translate)
class _ActionButtonsRow extends StatelessWidget {
  const _ActionButtonsRow({
    required this.onReply,
    required this.translation,
    required this.actionFontSize,
  });

  final VoidCallback? onReply;
  final TranslationResult translation;
  final double actionFontSize;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    final actionStyle = textTheme.bodySmall?.copyWith(
      color: colorScheme.onSurfaceVariant,
      fontWeight: FontWeight.w600,
      fontSize: actionFontSize,
    );

    return Row(
      children: [
        // Reply button (optional)
        if (onReply != null) ...[
          InkWell(
            onTap: onReply,
            child: Text(t.feedReplyAction, style: actionStyle),
          ),
          const SizedBox(width: 16),
        ],

        // Translate button - only show if source != target language
        if (translation.shouldShowButton)
          InkWell(
            onTap: translation.toggle,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: Text(
                translation.getButtonText(
                  t.feedSeeTranslation,
                  t.feedTranslating,
                  t.feedSeeOriginal,
                ),
                key: ValueKey(translation.status),
                style: textTheme.bodySmall?.copyWith(
                  color: translation.isLoading
                      ? colorScheme.primary
                      : colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                  fontSize: actionFontSize,
                ),
            ),
          ),
        ),
      ],
    );
  }
}

/// View replies toggle button (Instagram style)
class _ViewRepliesToggle extends StatelessWidget {
  const _ViewRepliesToggle({
    required this.replyCount,
    required this.showReplies,
    required this.onTap,
  });

  final int replyCount;
  final bool showReplies;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 32,
              height: 1,
              color: colorScheme.outlineVariant,
            ),
            const SizedBox(width: 12),
            Text(
              showReplies
                  ? t.feedHideReplies
                  : t.feedViewReplies(replyCount),
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Like button with count
class _LikeButton extends StatelessWidget {
  const _LikeButton({
    required this.isLiked,
    required this.likesCount,
    required this.iconSize,
    required this.onTap,
  });

  final bool isLiked;
  final int likesCount;
  final double iconSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            size: iconSize,
            color: isLiked ? colorScheme.error : colorScheme.onSurfaceVariant,
          ),
        ),
        if (likesCount > 0)
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              likesCount.toString(),
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontSize: 11,
              ),
            ),
          ),
      ],
    );
  }
}

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
        top: isReply ? 12.0 : 0.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Indent spacer for replies (only indent content, not like button)
          if (isReply) const SizedBox(width: 32),

          // Avatar with gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  colorScheme.primaryContainer.withValues(alpha: 0.3),
                  colorScheme.secondaryContainer.withValues(alpha: 0.2),
                ],
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: colorScheme.shadow.withValues(alpha: 0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.person,
                size: iconSize,
                color: colorScheme.onSurfaceVariant,
              ),
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
                  username: comment.username ?? t.feedUnknownUser,
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
                if (!isReply &&
                    comment.replies.isNotEmpty &&
                    onToggleReplies != null)
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
            fontWeight: FontWeight.w700,
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            FormatUtils.formatTimeAgo(createdAt, context: context),
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontSize: 11,
              letterSpacing: 0.1,
            ),
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
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onReply,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(t.feedReplyAction, style: actionStyle),
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],

        // Translate button - only show if source != target language
        if (translation.shouldShowButton)
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: translation.toggle,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 32,
                  height: 1.5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colorScheme.outlineVariant,
                        colorScheme.outlineVariant.withValues(alpha: 0.3),
                      ],
                    ),
                  ),
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
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
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
        AnimatedScale(
          scale: isLiked ? 1.0 : 0.95,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: isLiked
                  ? LinearGradient(
                      colors: [
                        colorScheme.error.withValues(alpha: 0.15),
                        colorScheme.error.withValues(alpha: 0.05),
                      ],
                    )
                  : null,
              boxShadow: isLiked
                  ? [
                      BoxShadow(
                        color: colorScheme.error.withValues(alpha: 0.2),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    size: iconSize,
                    color: isLiked
                        ? colorScheme.error
                        : colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (likesCount > 0)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              likesCount.toString(),
              style: textTheme.bodySmall?.copyWith(
                color:
                    isLiked ? colorScheme.error : colorScheme.onSurfaceVariant,
                fontSize: 11,
                fontWeight: isLiked ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ),
      ],
    );
  }
}

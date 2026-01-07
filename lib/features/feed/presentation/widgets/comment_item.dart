import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:velora/core/utils/format_utils.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/l10n/app_localizations.dart';

class CommentItem extends StatelessWidget {
  final CommentEntity comment;
  final VoidCallback? onLike;
  final VoidCallback? onReply;
  final VoidCallback? onDelete;
  final bool isReply;

  const CommentItem({
    super.key,
    required this.comment,
    this.onLike,
    this.onReply,
    this.onDelete,
    this.isReply = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.only(
        left: isReply ? 48.0 : 12.0,
        right: 12.0,
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: isReply ? 16 : 20,
            backgroundImage: comment.userPhotoUrl != null
                ? CachedNetworkImageProvider(comment.userPhotoUrl!)
                : null,
            child: comment.userPhotoUrl == null
                ? Icon(Icons.person, size: isReply ? 16 : 20)
                : null,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCommentContent(context, colorScheme, textTheme, t),
                const SizedBox(height: 4),
                _buildActionBar(context, colorScheme, textTheme, t),
                if (comment.replies.isNotEmpty) _buildReplies(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentContent(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            comment.userFullName ?? t.feedUnknownUser,
            style: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(comment.content, style: textTheme.bodyMedium),
        ],
      ),
    );
  }

  Widget _buildActionBar(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: [
          Text(
            FormatUtils.formatTimeAgo(comment.createdAt, context: context),
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(width: 16),
          InkWell(
            onTap: onLike,
            child: Row(
              children: [
                Icon(
                  comment.isLiked ? Icons.favorite : Icons.favorite_border,
                  size: 14,
                  color: comment.isLiked
                      ? colorScheme.error
                      : colorScheme.onSurfaceVariant,
                ),
                if (comment.likesCount > 0) ...[
                  const SizedBox(width: 4),
                  Text(
                    comment.likesCount.toString(),
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (!isReply) ...[
            const SizedBox(width: 16),
            InkWell(
              onTap: onReply,
              child: Text(
                t.feedReplyAction,
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
          if (onDelete != null) ...[
            const SizedBox(width: 16),
            InkWell(
              onTap: onDelete,
              child: Text(
                t.feedDeleteAction,
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: colorScheme.error,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildReplies(BuildContext context) {
    return Column(
      children: comment.replies.map((reply) {
        return CommentItem(
          comment: reply,
          onLike: () {
            // Handle reply like
          },
          isReply: true,
        );
      }).toList(),
    );
  }
}

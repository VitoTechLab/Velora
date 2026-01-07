import 'package:flutter/material.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/widgets/skeleton_loader.dart';
import 'comment_item.dart';

class CommentsList extends StatelessWidget {
  final List<CommentEntity> comments;
  final Function(CommentEntity)? onLike;
  final Function(CommentEntity)? onReply;
  final Function(CommentEntity)? onDelete;
  final bool isLoading;
  final String? emptyMessage;

  const CommentsList({
    super.key,
    required this.comments,
    this.onLike,
    this.onReply,
    this.onDelete,
    this.isLoading = false,
    this.emptyMessage,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    if (isLoading) {
      return const SkeletonCommentsList(itemCount: 5);
    }

    if (comments.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                emptyMessage ?? t.feedNoCommentsTitle,
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
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return CommentItem(
          comment: comment,
          onLike: () => onLike?.call(comment),
          onReply: () => onReply?.call(comment),
          onDelete: () => onDelete?.call(comment),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/verified_badge.dart';
import '../widgets/category_pill.dart';

class CreatorRowHeader extends StatelessWidget {
  final String creatorName;
  final bool isVerified;
  final String category;

  const CreatorRowHeader({
    super.key,
    required this.creatorName,
    required this.isVerified,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: colorScheme.outlineVariant.withValues(alpha: 0.5),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: colorScheme.primaryContainer,
            child: Icon(
              Icons.person,
              size: 24,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        creatorName,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (isVerified) ...[
                      const SizedBox(width: 4),
                      const VerifiedBadge(),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                CategoryPill(category: category),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

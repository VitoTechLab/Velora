import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/widgets/skeleton_loader.dart';
import 'thread_post_layout.dart';

class FeedLoadingShimmer extends StatelessWidget {
  const FeedLoadingShimmer({super.key});
  @override
  Widget build(BuildContext context) => Semantics(
    label: AppLocalizations.of(context)!.feedLoadingLabel,
    child: ExcludeSemantics(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => const ThreadPostLayout(
          avatar: SkeletonAvatar(size: 40),
          header: Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: SkeletonLine(width: 120, height: 14),
          ),
          content: SkeletonParagraph(lines: 3, lastLineWidth: 120),
          actions: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: SkeletonLine(width: 140, height: 12),
          ),
        ),
      ),
    ),
  );
}

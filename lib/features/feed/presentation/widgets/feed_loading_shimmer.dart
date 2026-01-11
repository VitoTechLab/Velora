import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/widgets/skeleton_loader.dart';

class FeedLoadingShimmer extends StatelessWidget {
  const FeedLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: AppLocalizations.of(context)!.feedLoadingLabel,
      child: const ExcludeSemantics(child: SkeletonFeedList(itemCount: 3)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:velora/shared/widgets/skeleton_loader.dart';

/// Loading uses the same square footprint as a gallery tile.
class MediaSkeletonTile extends StatelessWidget {
  const MediaSkeletonTile({super.key});
  @override
  Widget build(BuildContext context) =>
      const AspectRatio(aspectRatio: 1, child: SkeletonBox());
}

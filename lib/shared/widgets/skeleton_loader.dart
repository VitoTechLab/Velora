import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Base skeleton box widget with shimmer animation
class SkeletonBox extends HookWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? margin;

  const SkeletonBox({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1500),
    )..repeat();

    final animation = useAnimation(
      Tween<double>(
        begin: -1.0,
        end: 2.0,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut)),
    );

    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(4),
        gradient: LinearGradient(
          begin: Alignment(animation - 1, 0),
          end: Alignment(animation, 0),
          colors: [Colors.grey[300]!, Colors.grey[200]!, Colors.grey[300]!],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
    );
  }
}

/// Skeleton for circular avatar
class SkeletonAvatar extends StatelessWidget {
  final double size;
  final EdgeInsetsGeometry? margin;

  const SkeletonAvatar({super.key, this.size = 40, this.margin});

  @override
  Widget build(BuildContext context) {
    return SkeletonBox(
      width: size,
      height: size,
      borderRadius: BorderRadius.circular(size / 2),
      margin: margin,
    );
  }
}

/// Skeleton for text line
class SkeletonLine extends StatelessWidget {
  final double? width;
  final double height;
  final EdgeInsetsGeometry? margin;

  const SkeletonLine({super.key, this.width, this.height = 14, this.margin});

  @override
  Widget build(BuildContext context) {
    return SkeletonBox(
      width: width,
      height: height,
      borderRadius: BorderRadius.circular(4),
      margin: margin,
    );
  }
}

/// Skeleton for paragraph (multiple lines)
class SkeletonParagraph extends StatelessWidget {
  final int lines;
  final double lineHeight;
  final double lineSpacing;
  final double? lastLineWidth;

  const SkeletonParagraph({
    super.key,
    this.lines = 3,
    this.lineHeight = 14,
    this.lineSpacing = 8,
    this.lastLineWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(lines, (index) {
        final isLastLine = index == lines - 1;
        return SkeletonLine(
          width: isLastLine ? (lastLineWidth ?? 200) : double.infinity,
          height: lineHeight,
          margin: index < lines - 1
              ? EdgeInsets.only(bottom: lineSpacing)
              : null,
        );
      }),
    );
  }
}

/// Skeleton for image/media container
class SkeletonImage extends StatelessWidget {
  final double? width;
  final double height;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? margin;

  const SkeletonImage({
    super.key,
    this.width,
    this.height = 200,
    this.borderRadius,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SkeletonBox(
      width: width ?? double.infinity,
      height: height,
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      margin: margin,
    );
  }
}

/// Skeleton for button/action
class SkeletonButton extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry? margin;

  const SkeletonButton({
    super.key,
    this.width = 60,
    this.height = 32,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SkeletonBox(
      width: width,
      height: height,
      borderRadius: BorderRadius.circular(16),
      margin: margin,
    );
  }
}

/// Preset: Feed post card skeleton
class SkeletonFeedCard extends StatelessWidget {
  const SkeletonFeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Avatar + Name + Time
            Row(
              children: [
                const SkeletonAvatar(size: 40),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SkeletonLine(width: 120, height: 14),
                      SizedBox(height: 4),
                      SkeletonLine(width: 80, height: 12),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Content text
            const SkeletonParagraph(lines: 3, lastLineWidth: 200),
            const SizedBox(height: 12),
            // Image
            const SkeletonImage(height: 200),
            const SizedBox(height: 12),
            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                4,
                (index) => const SkeletonButton(width: 60, height: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Preset: Comment item skeleton
class SkeletonCommentItem extends StatelessWidget {
  final bool hasReplies;

  const SkeletonCommentItem({super.key, this.hasReplies = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SkeletonAvatar(size: 32),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name and time
                Row(
                  children: const [
                    SkeletonLine(width: 100, height: 12),
                    SizedBox(width: 8),
                    SkeletonLine(width: 60, height: 10),
                  ],
                ),
                const SizedBox(height: 6),
                // Comment content
                const SkeletonParagraph(
                  lines: 2,
                  lineHeight: 12,
                  lineSpacing: 4,
                  lastLineWidth: 150,
                ),
                const SizedBox(height: 8),
                // Actions (like, reply)
                Row(
                  children: const [
                    SkeletonLine(width: 40, height: 10),
                    SizedBox(width: 16),
                    SkeletonLine(width: 40, height: 10),
                  ],
                ),
                if (hasReplies) ...[
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SkeletonCommentItem(hasReplies: false),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Preset: List of comment skeletons
class SkeletonCommentsList extends StatelessWidget {
  final int itemCount;

  const SkeletonCommentsList({super.key, this.itemCount = 5});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        // Randomly show some with replies for variety
        final hasReplies = index % 3 == 0;
        return SkeletonCommentItem(hasReplies: hasReplies);
      },
    );
  }
}

/// Preset: List of feed post skeletons
class SkeletonFeedList extends StatelessWidget {
  final int itemCount;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;

  const SkeletonFeedList({
    super.key,
    this.itemCount = 3,
    this.physics,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      physics: physics,
      padding: padding ?? const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) => const SkeletonFeedCard(),
    );
  }
}

/// Preset: Profile header skeleton
class SkeletonProfileHeader extends StatelessWidget {
  const SkeletonProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SkeletonAvatar(size: 80, margin: EdgeInsets.only(bottom: 12)),
        const SkeletonLine(
          width: 150,
          height: 16,
          margin: EdgeInsets.only(bottom: 6),
        ),
        const SkeletonLine(
          width: 100,
          height: 12,
          margin: EdgeInsets.only(bottom: 16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SkeletonButton(
              width: 100,
              height: 36,
              margin: EdgeInsets.symmetric(horizontal: 4),
            ),
            SkeletonButton(
              width: 100,
              height: 36,
              margin: EdgeInsets.symmetric(horizontal: 4),
            ),
          ],
        ),
      ],
    );
  }
}

/// Preset: List item skeleton (generic)
class SkeletonListItem extends StatelessWidget {
  final bool hasLeading;
  final bool hasTrailing;
  final int contentLines;

  const SkeletonListItem({
    super.key,
    this.hasLeading = true,
    this.hasTrailing = false,
    this.contentLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          if (hasLeading) ...[
            const SkeletonAvatar(size: 48),
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SkeletonLine(width: 140, height: 14),
                const SizedBox(height: 6),
                if (contentLines > 1)
                  const SkeletonLine(width: 200, height: 12),
              ],
            ),
          ),
          if (hasTrailing) ...[
            const SizedBox(width: 12),
            const SkeletonBox(width: 24, height: 24),
          ],
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Chat media bubble with elegant tail design
///
/// Pure UI widget for media messages (images/videos).
/// Avatar and user info should be handled by parent widget.
///
/// Features:
/// - Smooth curved tail
/// - Subtle shadow for depth
/// - Multi-image grid layout
/// - Video play indicator
/// - Optional caption
class ChatMediaWidget extends StatelessWidget {
  final List<String> mediaUrls;
  final String? caption;
  final String time;
  final bool isSender;
  final bool isRead;
  final bool isVideo;

  const ChatMediaWidget({
    super.key,
    required this.mediaUrls,
    this.caption,
    required this.time,
    required this.isSender,
    this.isRead = false,
    this.isVideo = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final bubbleColor = isSender
        ? colorScheme.primaryContainer
        : colorScheme.surfaceContainerHigh;

    final textColor = isSender
        ? colorScheme.onPrimaryContainer
        : colorScheme.onSurface;

    return Semantics(
      label: isSender ? t.chatMediaYourLabel : t.chatMediaReceivedLabel,
      hint: t.chatMediaHint(time),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.75,
            minWidth: 200,
          ),
          child: CustomPaint(
            painter: _BubbleTailPainter(
              color: bubbleColor,
              isSender: isSender,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: bubbleColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Media content
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: const Radius.circular(16),
                      bottom: caption != null
                          ? Radius.zero
                          : const Radius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        _buildMediaGrid(context),

                        // Video play button overlay
                        if (isVideo)
                          Positioned.fill(
                            child: Container(
                              color: Colors.black.withValues(alpha: 0.2),
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withValues(alpha: 0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.play_arrow_rounded,
                                    color: Colors.white,
                                    size: 36,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        // Media count badge (for multiple images)
                        if (mediaUrls.length > 1)
                          Positioned(
                            right: 12,
                            top: 12,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.collections_rounded,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${mediaUrls.length}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),

                  // Caption
                  if (caption != null && caption!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 10, 14, 4),
                      child: Text(
                        caption!,
                        style: textTheme.bodyMedium?.copyWith(
                          color: textColor,
                          height: 1.4,
                        ),
                      ),
                    ),

                  // Time and read receipt
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      14,
                      caption != null ? 4 : 10,
                      14,
                      10,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          time,
                          style: textTheme.bodySmall?.copyWith(
                            color: textColor.withValues(alpha: 0.65),
                            fontSize: 11,
                          ),
                        ),
                        if (isSender) ...[
                          const SizedBox(width: 4),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: Icon(
                              isRead
                                  ? Icons.done_all_rounded
                                  : Icons.check_rounded,
                              key: ValueKey(isRead),
                              size: 16,
                              color: isRead
                                  ? colorScheme.primary
                                  : textColor.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMediaGrid(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (mediaUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    // Single image
    if (mediaUrls.length == 1) {
      return AspectRatio(
        aspectRatio: 4 / 5,
        child: _buildMediaItem(mediaUrls[0], colorScheme),
      );
    }

    // Two images side by side
    if (mediaUrls.length == 2) {
      return SizedBox(
        height: 280,
        child: Row(
          children: [
            Expanded(
              child: _buildMediaItem(mediaUrls[0], colorScheme),
            ),
            const SizedBox(width: 2),
            Expanded(
              child: _buildMediaItem(mediaUrls[1], colorScheme),
            ),
          ],
        ),
      );
    }

    // Three images: 1 large + 2 small
    if (mediaUrls.length == 3) {
      return SizedBox(
        height: 280,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: _buildMediaItem(mediaUrls[0], colorScheme),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildMediaItem(mediaUrls[1], colorScheme),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: _buildMediaItem(mediaUrls[2], colorScheme),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // 4+ images: 2x2 grid
    return SizedBox(
      height: 280,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: mediaUrls.length > 4 ? 4 : mediaUrls.length,
        itemBuilder: (context, index) {
          final isLastItem = index == 3 && mediaUrls.length > 4;
          return Stack(
            fit: StackFit.expand,
            children: [
              _buildMediaItem(mediaUrls[index], colorScheme),
              if (isLastItem)
                Container(
                  color: Colors.black.withValues(alpha: 0.65),
                  child: Center(
                    child: Text(
                      '+${mediaUrls.length - 4}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMediaItem(String url, ColorScheme colorScheme) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          color: colorScheme.surfaceContainerHighest,
          child: Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            ),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: colorScheme.errorContainer,
          child: Center(
            child: Icon(
              Icons.broken_image_rounded,
              color: colorScheme.onErrorContainer,
              size: 32,
            ),
          ),
        );
      },
    );
  }
}

/// Custom painter for elegant bubble tail
class _BubbleTailPainter extends CustomPainter {
  final Color color;
  final bool isSender;

  _BubbleTailPainter({
    required this.color,
    required this.isSender,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round;

    final path = Path();

    if (isSender) {
      // Tail pointing right (sender)
      path.moveTo(size.width, size.height - 8);
      path.quadraticBezierTo(
        size.width + 4,
        size.height - 4,
        size.width + 6,
        size.height,
      );
      path.quadraticBezierTo(
        size.width + 2,
        size.height - 2,
        size.width,
        size.height - 6,
      );
    } else {
      // Tail pointing left (receiver)
      path.moveTo(0, size.height - 8);
      path.quadraticBezierTo(
        -4,
        size.height - 4,
        -6,
        size.height,
      );
      path.quadraticBezierTo(
        -2,
        size.height - 2,
        0,
        size.height - 6,
      );
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _BubbleTailPainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.isSender != isSender;
  }
}
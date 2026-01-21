import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/features/chat/presentation/screens/chat_video_player_screen.dart';

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

    final textColor =
        isSender ? colorScheme.onPrimaryContainer : colorScheme.onSurface;

    return Semantics(
      label: isSender ? t.chatMediaYourLabel : t.chatMediaReceivedLabel,
      hint: t.chatMediaHint(time),
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 400),
        tween: Tween(begin: 0.0, end: 1.0),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Transform.scale(
              scale: 0.95 + (0.05 * value),
              alignment:
                  isSender ? Alignment.centerRight : Alignment.centerLeft,
              child: child,
            ),
          );
        },
        child: Align(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
              minWidth: 220,
            ),
            child: Container(
              margin: EdgeInsets.only(
                left: isSender ? 40 : 8,
                right: isSender ? 8 : 40,
                top: 3,
                bottom: 3,
              ),
              decoration: BoxDecoration(
                gradient: isSender
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          colorScheme.primaryContainer,
                          colorScheme.primaryContainer.withValues(alpha: 0.9),
                        ],
                      )
                    : null,
                color: isSender ? null : colorScheme.surfaceContainerHigh,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(18),
                  topRight: const Radius.circular(18),
                  bottomLeft: Radius.circular(isSender ? 18 : 4),
                  bottomRight: Radius.circular(isSender ? 4 : 18),
                ),
                border: Border.all(
                  color: isSender
                      ? colorScheme.primary.withValues(alpha: 0.15)
                      : colorScheme.outline.withValues(alpha: 0.1),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: isSender
                        ? colorScheme.primary.withValues(alpha: 0.15)
                        : Colors.black.withValues(alpha: 0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                    spreadRadius: 0,
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
                      top: const Radius.circular(18),
                      bottom: caption != null
                          ? Radius.zero
                          : const Radius.circular(18),
                    ),
                    child: InkWell(
                      onTap: isVideo && mediaUrls.isNotEmpty
                          ? () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => ChatVideoPlayerScreen(
                                    videoUrl: mediaUrls.first,
                                  ),
                                ),
                              );
                            }
                          : null,
                      child: Stack(
                        children: [
                          _buildMediaGrid(context),

                          // Video play button overlay
                          if (isVideo)
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 0.1),
                                      Colors.black.withValues(alpha: 0.4),
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(18),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          colorScheme.primary,
                                          colorScheme.secondary,
                                        ],
                                      ),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: colorScheme.primary
                                              .withValues(alpha: 0.5),
                                          blurRadius: 16,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.play_arrow_rounded,
                                      color: colorScheme.onPrimary,
                                      size: 40,
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
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withValues(alpha: 0.7),
                                      Colors.black.withValues(alpha: 0.5),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.white.withValues(alpha: 0.2),
                                    width: 1,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Colors.black.withValues(alpha: 0.3),
                                      blurRadius: 8,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.collections_rounded,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      '${mediaUrls.length}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),

                  // Caption
                  if (caption != null && caption!.isNotEmpty)
                    Container(
                      padding: const EdgeInsets.fromLTRB(14, 12, 14, 4),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: textColor.withValues(alpha: 0.1),
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Text(
                        caption!,
                        style: textTheme.bodyMedium?.copyWith(
                          color: textColor,
                          height: 1.5,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),

                  // Time and read receipt
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      14,
                      caption != null ? 6 : 12,
                      14,
                      12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Spacer(),
                        Text(
                          time,
                          style: textTheme.bodySmall?.copyWith(
                            color: textColor.withValues(alpha: 0.6),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (isSender) ...[
                          const SizedBox(width: 4),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            transitionBuilder: (child, animation) {
                              return ScaleTransition(
                                scale: animation,
                                child: child,
                              );
                            },
                            child: Icon(
                              isRead
                                  ? Icons.done_all_rounded
                                  : Icons.check_rounded,
                              key: ValueKey(isRead),
                              size: 16,
                              color: isRead
                                  ? Colors.lightBlueAccent.shade200
                                  : Colors.grey.shade500,
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

import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

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

    return Semantics(
      label: isSender ? t.chatMediaYourLabel : t.chatMediaReceivedLabel,
      hint: t.chatMediaHint(time),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
            minWidth: 200,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: bubbleColor,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft: isSender
                  ? const Radius.circular(12)
                  : const Radius.circular(2),
              bottomRight: isSender
                  ? const Radius.circular(2)
                  : const Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(12),
                      topRight: const Radius.circular(12),
                      bottomLeft: caption != null
                          ? Radius.zero
                          : (isSender
                                ? const Radius.circular(12)
                                : const Radius.circular(2)),
                      bottomRight: caption != null
                          ? Radius.zero
                          : (isSender
                                ? const Radius.circular(2)
                                : const Radius.circular(12)),
                    ),
                    child: _buildMediaGrid(context),
                  ),
                  if (isVideo)
                    Positioned.fill(
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  Positioned(
                    left: 8,
                    top: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.forward, size: 16, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  if (mediaUrls.length == 1)
                    Positioned(
                      right: 8,
                      bottom: 8,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.3),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.download,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
              if (caption != null)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    caption!,
                    style: textTheme.bodyMedium?.copyWith(
                      color: isSender
                          ? colorScheme.onPrimaryContainer
                          : colorScheme.onSurface,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      time,
                      style: textTheme.bodySmall?.copyWith(
                        color: isSender
                            ? colorScheme.onPrimaryContainer.withValues(
                                alpha: 0.6,
                              )
                            : colorScheme.onSurface.withValues(alpha: 0.6),
                        fontSize: 11,
                      ),
                    ),
                    if (isSender) ...[
                      const SizedBox(width: 4),
                      Icon(
                        isRead ? Icons.done_all : Icons.done,
                        size: 16,
                        color: isRead
                            ? colorScheme.primary
                            : colorScheme.onPrimaryContainer.withValues(
                                alpha: 0.6,
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
    );
  }

  Widget _buildMediaGrid(BuildContext context) {
    if (mediaUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    if (mediaUrls.length == 1) {
      return AspectRatio(
        aspectRatio: 3 / 4,
        child: Image.network(
          mediaUrls[0],
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey[800],
              child: const Center(
                child: Icon(Icons.broken_image, color: Colors.white54),
              ),
            );
          },
        ),
      );
    }

    if (mediaUrls.length == 2) {
      return SizedBox(
        height: 300,
        child: Row(
          children: [
            Expanded(
              child: Image.network(
                mediaUrls[0],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(Icons.broken_image, color: Colors.white54),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 2),
            Expanded(
              child: Image.network(
                mediaUrls[1],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(Icons.broken_image, color: Colors.white54),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

    if (mediaUrls.length == 3) {
      return SizedBox(
        height: 300,
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                mediaUrls[0],
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(Icons.broken_image, color: Colors.white54),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Image.network(
                      mediaUrls[1],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[800],
                          child: const Center(
                            child: Icon(
                              Icons.broken_image,
                              color: Colors.white54,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: Image.network(
                      mediaUrls[2],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[800],
                          child: const Center(
                            child: Icon(
                              Icons.broken_image,
                              color: Colors.white54,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return SizedBox(
      height: 300,
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
              Image.network(
                mediaUrls[index],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(Icons.broken_image, color: Colors.white54),
                    ),
                  );
                },
              ),
              if (isLastItem)
                Container(
                  color: Colors.black.withValues(alpha: 0.6),
                  child: Center(
                    child: Text(
                      '+${mediaUrls.length - 4}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
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
}

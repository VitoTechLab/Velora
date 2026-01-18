import 'package:flutter/material.dart';

/// Wrapper widget for chat messages with avatar and username
///
/// Displays:
/// - Avatar with online indicator (receiver only)
/// - Username above bubble (receiver only)
/// - Child message widget (bubble/media/poll/event)
///
/// Usage:
/// ```dart
/// ChatMessageItem(
///   isSender: false,
///   avatarUrl: 'https://...',
///   username: 'John Doe',
///   isOnline: true,
///   child: ChatBubbleWidget(...),
/// )
/// ```
class ChatMessageItem extends StatelessWidget {
  final bool isSender;
  final String? avatarUrl;
  final String? username;
  final bool isOnline;
  final Widget child;

  const ChatMessageItem({
    super.key,
    required this.isSender,
    this.avatarUrl,
    this.username,
    this.isOnline = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 300),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: isSender ? 48 : 8,
          right: isSender ? 8 : 48,
          top: 2,
          bottom: 2,
        ),
        child: Row(
          mainAxisAlignment:
              isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar for receiver (left side)
            if (!isSender) ...[
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: _ChatAvatar(
                  avatarUrl: avatarUrl,
                  username: username ?? 'User',
                  isOnline: isOnline,
                  colorScheme: colorScheme,
                ),
              ),
              const SizedBox(width: 10),
            ],

            // Message content
            Flexible(
              child: Column(
                crossAxisAlignment: isSender
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  // Username for receiver (above bubble)
                  if (!isSender && username != null) ...[
                    Padding(
                      padding: const EdgeInsets.only(left: 12, bottom: 4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
                              colorScheme.surfaceContainerHighest.withValues(alpha: 0.4),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: colorScheme.outline.withValues(alpha: 0.15),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          username!,
                          style: textTheme.labelMedium?.copyWith(
                            color: colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ),
                  ],

                  // Message widget (bubble/media/poll/event)
                  child,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Avatar widget with online indicator
class _ChatAvatar extends StatelessWidget {
  const _ChatAvatar({
    required this.avatarUrl,
    required this.username,
    required this.isOnline,
    required this.colorScheme,
  });

  final String? avatarUrl;
  final String username;
  final bool isOnline;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          // Gradient border container
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: isOnline
                  ? LinearGradient(
                      colors: [
                        Colors.green.shade400,
                        Colors.green.shade600,
                      ],
                    )
                  : null,
              shape: BoxShape.circle,
              boxShadow: isOnline
                  ? [
                      BoxShadow(
                        color: Colors.green.withValues(alpha: 0.4),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: colorScheme.surfaceContainerHighest,
              backgroundImage:
                  avatarUrl != null ? NetworkImage(avatarUrl!) : null,
              child: avatarUrl == null
                  ? Text(
                      username[0].toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    )
                  : null,
            ),
          ),

          // Online indicator with pulse animation
          if (isOnline)
            Positioned(
              right: 0,
              bottom: 0,
              child: TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 1500),
                tween: Tween(begin: 0.0, end: 1.0),
                curve: Curves.easeInOut,
                builder: (context, value, child) {
                  return Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.green.shade400,
                          Colors.green.shade500,
                        ],
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: colorScheme.surface,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withValues(alpha: 0.6 * value),
                          blurRadius: 4 + (2 * value),
                          spreadRadius: value,
                        ),
                      ],
                    ),
                  );
                },
                onEnd: () {
                  // Restart animation
                  if (context.mounted) {
                    (context as Element).markNeedsBuild();
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}

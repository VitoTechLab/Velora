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

    return Padding(
      padding: EdgeInsets.only(
        left: isSender ? 64 : 8,
        right: isSender ? 8 : 64,
        top: 4,
        bottom: 4,
      ),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar for receiver (left side)
          if (!isSender) ...[
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: _ChatAvatar(
                avatarUrl: avatarUrl,
                username: username ?? 'User',
                isOnline: isOnline,
                colorScheme: colorScheme,
              ),
            ),
            const SizedBox(width: 8),
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
                    child: Text(
                      username!,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
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
      width: 36,
      height: 36,
      child: Stack(
        children: [
          // Avatar circle
          CircleAvatar(
            radius: 18,
            backgroundColor: colorScheme.surfaceContainerHighest,
            backgroundImage:
                avatarUrl != null ? NetworkImage(avatarUrl!) : null,
            child: avatarUrl == null
                ? Text(
                    username[0].toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  )
                : null,
          ),

          // Online indicator
          if (isOnline)
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: colorScheme.surface,
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

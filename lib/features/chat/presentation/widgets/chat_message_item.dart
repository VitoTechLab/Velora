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
        left: isSender ? 48 : 8,
        right: isSender ? 8 : 48,
        top: 2,
        bottom: 2,
      ),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Avatar for receiver (left side)
          if (!isSender) ...[
            _ChatAvatar(
              avatarUrl: avatarUrl,
              username: username ?? 'User',
              isOnline: isOnline,
              colorScheme: colorScheme,
            ),
            const SizedBox(width: 8),
          ],

          // Message content
          Flexible(
            child: Column(
              crossAxisAlignment:
                  isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                // Username for receiver (above bubble)
                if (!isSender && username != null) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 2),
                    child: Text(
                      username!,
                      style: textTheme.labelSmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
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
          CircleAvatar(
            radius: 18,
            backgroundColor: colorScheme.surfaceContainerHighest,
            backgroundImage:
                avatarUrl != null ? NetworkImage(avatarUrl!) : null,
            child: avatarUrl == null
                ? Text(
                    username[0].toUpperCase(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
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
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.shade200,
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

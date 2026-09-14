import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_avatar.dart';

/// Wraps incoming messages with avatar and sender identity.
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
          if (!isSender) ...[
            ChatAvatar(
              imageUrl: avatarUrl,
              fallbackText: username ?? 'User',
              isOnline: isOnline,
              size: 34,
            ),
            const SizedBox(width: 8),
          ],

          // Message content
          Flexible(
            child: Column(
              crossAxisAlignment:
                  isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
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

                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

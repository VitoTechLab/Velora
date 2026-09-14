import 'package:flutter/material.dart';

class ChatMessageStatusIcon extends StatelessWidget {
  final bool isRead;
  final double size;

  const ChatMessageStatusIcon({
    super.key,
    required this.isRead,
    this.size = 15,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 220),
      transitionBuilder: (child, animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: Icon(
        Icons.done_all_rounded,
        key: ValueKey(isRead),
        size: size,
        color: isRead
            ? colorScheme.primary
            : colorScheme.onSurfaceVariant.withValues(alpha: 0.56),
      ),
    );
  }
}

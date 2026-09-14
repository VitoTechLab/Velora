import 'package:flutter/material.dart';

class ChatMessageEntrance extends StatelessWidget {
  final Widget child;
  final bool isSender;
  final Duration duration;

  const ChatMessageEntrance({
    super.key,
    required this.child,
    required this.isSender,
    this.duration = const Duration(milliseconds: 220),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 0, end: 1),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        final horizontalOffset = isSender ? 18.0 : -18.0;

        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(
              horizontalOffset * (1 - value),
              10 * (1 - value),
            ),
            child: Transform.scale(
              scale: 0.985 + (0.015 * value),
              alignment: isSender ? Alignment.bottomRight : Alignment.bottomLeft,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}

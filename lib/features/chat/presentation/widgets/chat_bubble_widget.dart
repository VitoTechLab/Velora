import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Modern chat bubble with elegant tail design
///
/// Pure UI widget for message bubble only.
/// Avatar and user info should be handled by parent widget.
///
/// Features:
/// - Smooth curved tail
/// - Subtle shadow for depth
/// - Responsive width (max 75% of screen)
/// - Read receipts with animation
class ChatBubbleWidget extends StatelessWidget {
  final String message;
  final String time;
  final bool isSender;
  final bool isRead;

  const ChatBubbleWidget({
    super.key,
    required this.message,
    required this.time,
    required this.isSender,
    this.isRead = false,
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
      label: isSender ? t.chatBubbleYourLabel : t.chatBubbleReceivedLabel,
      hint: t.chatBubbleHint(time),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.75,
          ),
          child: CustomPaint(
            painter: _BubbleTailPainter(
              color: bubbleColor,
              isSender: isSender,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
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
                  // Message text
                  Text(
                    message,
                    style: textTheme.bodyMedium?.copyWith(
                      color: textColor,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Time and read receipt
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
                            isRead ? Icons.done_all_rounded : Icons.check_rounded,
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
                ],
              ),
            ),
          ),
        ),
      ),
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

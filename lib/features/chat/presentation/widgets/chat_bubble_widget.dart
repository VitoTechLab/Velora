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

    final textColor =
        isSender ? colorScheme.onPrimaryContainer : colorScheme.onSurface;

    return Semantics(
      label: isSender ? t.chatBubbleYourLabel : t.chatBubbleReceivedLabel,
      hint: t.chatBubbleHint(time),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.75,
          ),
          child: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 300),
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
            child: Container(
              margin: EdgeInsets.only(
                left: isSender ? 40 : 8,
                right: isSender ? 8 : 40,
                top: 3,
                bottom: 3,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
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
                  // Message text
                  Text(
                    message,
                    style: textTheme.bodyMedium?.copyWith(
                      color: textColor,
                      height: 1.4,
                      letterSpacing: 0.15,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // Time and read receipt (left-aligned)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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

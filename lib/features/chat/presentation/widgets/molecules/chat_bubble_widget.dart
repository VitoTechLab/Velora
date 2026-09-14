import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_entrance.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_status_icon.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Message bubble for text chat content.
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

    final textColor = isSender ? colorScheme.onPrimary : colorScheme.onSurface;

    return ChatMessageEntrance(
      isSender: isSender,
      child: Semantics(
        label: isSender ? t.chatBubbleYourLabel : t.chatBubbleReceivedLabel,
        hint: t.chatBubbleHint(time),
        child: Align(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.82,
            ),
            child: IntrinsicWidth(
              child: Container(
                margin: EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2),
                padding: const EdgeInsets.fromLTRB(11, 7, 9, 6),
                decoration: BoxDecoration(
                  color: isSender
                      ? colorScheme.primary
                      : colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(12),
                    topRight: const Radius.circular(12),
                    bottomLeft: Radius.circular(isSender ? 12 : 4),
                    bottomRight: Radius.circular(isSender ? 4 : 12),
                  ),
                  border: Border.all(
                    color: isSender
                        ? colorScheme.primary.withValues(alpha: 0.18)
                        : colorScheme.outlineVariant.withValues(alpha: 0.32),
                    width: 0.8,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        message,
                        style: textTheme.bodyMedium?.copyWith(
                          color: textColor,
                          height: 1.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          time,
                          style: textTheme.bodySmall?.copyWith(
                            color: textColor.withValues(alpha: 0.78),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                        ),
                        if (isSender) ...[
                          const SizedBox(width: 3),
                          ChatMessageStatusIcon(isRead: isRead, size: 14),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_entrance.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_status_icon.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Chat event bubble with clean modern design
class ChatEventWidget extends StatelessWidget {
  final String title;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final String? location;
  final String time;
  final bool isSender;
  final bool isRead;
  final EventResponse? userResponse;
  final int goingCount;
  final int maybeCount;
  final int notGoingCount;
  final VoidCallback? onResponseTap;

  const ChatEventWidget({
    super.key,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    this.location,
    required this.time,
    required this.isSender,
    this.isRead = false,
    this.userResponse,
    this.goingCount = 0,
    this.maybeCount = 0,
    this.notGoingCount = 0,
    this.onResponseTap,
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

    final dateFormat = DateFormat.MMMEd(t.localeName);
    final timeFormat = DateFormat.jm(t.localeName);

    return ChatMessageEntrance(
      isSender: isSender,
      child: Semantics(
        label: isSender
            ? t.chatEventSemanticsYour
            : t.chatEventSemanticsReceived,
        hint: t.chatEventHint(dateFormat.format(startDate)),
        child: TweenAnimationBuilder<double>(
          duration: const Duration(milliseconds: 350),
          tween: Tween(begin: 0.0, end: 1.0),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 8 * (1 - value)),
                child: child,
              ),
            );
          },
          child: Align(
            alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
                minWidth: 280,
              ),
              margin: EdgeInsets.only(
                left: isSender ? 48 : 8,
                right: isSender ? 8 : 48,
                top: 2,
                bottom: 2,
              ),
              decoration: BoxDecoration(
                color: bubbleColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  bottomLeft: Radius.circular(isSender ? 16 : 4),
                  bottomRight: Radius.circular(isSender ? 4 : 16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Event header
                  Container(
                    padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
                    decoration: BoxDecoration(
                      color: colorScheme.tertiary.withValues(alpha: 0.1),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: colorScheme.tertiary.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.event_rounded,
                            size: 18,
                            color: colorScheme.tertiary,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t.chatEventLabel,
                                style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.tertiary,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                dateFormat.format(startDate),
                                style: textTheme.titleSmall?.copyWith(
                                  color: textColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Event content
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          title,
                          style: textTheme.titleMedium?.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            height: 1.3,
                          ),
                        ),

                        if (description.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Text(
                            description,
                            style: textTheme.bodyMedium?.copyWith(
                              color: textColor.withValues(alpha: 0.8),
                              height: 1.4,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],

                        const SizedBox(height: 14),

                        // Event details
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: colorScheme.surface.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: colorScheme.outline.withValues(
                                alpha: 0.08,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              _EventDetailRow(
                                icon: Icons.access_time_rounded,
                                text:
                                    '${timeFormat.format(startDate)} - ${timeFormat.format(endDate)}',
                                textColor: textColor,
                                colorScheme: colorScheme,
                                textTheme: textTheme,
                              ),
                              if (location != null && location!.isNotEmpty) ...[
                                const SizedBox(height: 10),
                                _EventDetailRow(
                                  icon: Icons.location_on_outlined,
                                  text: location!,
                                  textColor: textColor,
                                  colorScheme: colorScheme,
                                  textTheme: textTheme,
                                ),
                              ],
                            ],
                          ),
                        ),

                        // Response section for receiver
                        if (!isSender) ...[
                          const SizedBox(height: 14),
                          Text(
                            t.chatEventResponseTitle,
                            style: textTheme.labelMedium?.copyWith(
                              color: textColor.withValues(alpha: 0.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: _ResponseButton(
                                  label: t.chatEventResponseGoing,
                                  icon: Icons.check_rounded,
                                  isSelected:
                                      userResponse == EventResponse.going,
                                  color: colorScheme.tertiary,
                                  colorScheme: colorScheme,
                                  textTheme: textTheme,
                                  onTap: () => onResponseTap?.call(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: _ResponseButton(
                                  label: t.chatEventResponseMaybe,
                                  icon: Icons.help_outline_rounded,
                                  isSelected:
                                      userResponse == EventResponse.maybe,
                                  color: colorScheme.secondary,
                                  colorScheme: colorScheme,
                                  textTheme: textTheme,
                                  onTap: () => onResponseTap?.call(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: _ResponseButton(
                                  label: t.chatEventResponseNo,
                                  icon: Icons.close_rounded,
                                  isSelected:
                                      userResponse == EventResponse.notGoing,
                                  color: colorScheme.error,
                                  colorScheme: colorScheme,
                                  textTheme: textTheme,
                                  onTap: () => onResponseTap?.call(),
                                ),
                              ),
                            ],
                          ),
                        ],

                        // Response summary for sender
                        if (isSender &&
                            (goingCount > 0 ||
                                maybeCount > 0 ||
                                notGoingCount > 0)) ...[
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.surface.withValues(alpha: 0.4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _ResponseCount(
                                  icon: Icons.check_rounded,
                                  count: goingCount,
                                  color: colorScheme.tertiary,
                                  textTheme: textTheme,
                                ),
                                _ResponseCount(
                                  icon: Icons.help_outline_rounded,
                                  count: maybeCount,
                                  color: colorScheme.secondary,
                                  textTheme: textTheme,
                                ),
                                _ResponseCount(
                                  icon: Icons.close_rounded,
                                  count: notGoingCount,
                                  color: colorScheme.error,
                                  textTheme: textTheme,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),

                  // Footer: time + read receipt
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          time,
                          style: textTheme.bodySmall?.copyWith(
                            color: textColor.withValues(alpha: 0.5),
                            fontSize: 11,
                          ),
                        ),
                        if (isSender) ...[
                          const SizedBox(width: 4),
                          ChatMessageStatusIcon(isRead: isRead),
                        ],
                      ],
                    ),
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

class _EventDetailRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  const _EventDetailRow({
    required this.icon,
    required this.text,
    required this.textColor,
    required this.colorScheme,
    required this.textTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: colorScheme.primary.withValues(alpha: 0.8)),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: textTheme.bodyMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class _ResponseButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final Color color;
  final ColorScheme colorScheme;
  final TextTheme textTheme;
  final VoidCallback onTap;

  const _ResponseButton({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.color,
    required this.colorScheme,
    required this.textTheme,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isSelected
                ? color.withValues(alpha: 0.15)
                : colorScheme.surface.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected
                  ? color.withValues(alpha: 0.5)
                  : colorScheme.outline.withValues(alpha: 0.1),
              width: isSelected ? 1.5 : 1,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected
                    ? color
                    : colorScheme.onSurface.withValues(alpha: 0.5),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: textTheme.labelSmall?.copyWith(
                  color: isSelected
                      ? color
                      : colorScheme.onSurface.withValues(alpha: 0.7),
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResponseCount extends StatelessWidget {
  final IconData icon;
  final int count;
  final Color color;
  final TextTheme textTheme;

  const _ResponseCount({
    required this.icon,
    required this.count,
    required this.color,
    required this.textTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 4),
        Text(
          count.toString(),
          style: textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

enum EventResponse { going, maybe, notGoing }

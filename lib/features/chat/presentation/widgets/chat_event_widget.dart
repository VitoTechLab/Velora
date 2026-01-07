import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velora/l10n/app_localizations.dart';

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

    final dateFormat = DateFormat.yMMMd(t.localeName);
    final timeFormat = DateFormat.jm(t.localeName);

    return Semantics(
      label: isSender ? t.chatEventSemanticsYour : t.chatEventSemanticsReceived,
      hint: t.chatEventHint(dateFormat.format(startDate)),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.75,
            minWidth: 250,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: bubbleColor,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft: isSender
                  ? const Radius.circular(12)
                  : const Radius.circular(2),
              bottomRight: isSender
                  ? const Radius.circular(2)
                  : const Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.event,
                    size: 18,
                    color: textColor.withValues(alpha: 0.7),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    t.chatEventLabel,
                    style: textTheme.labelSmall?.copyWith(
                      color: textColor.withValues(alpha: 0.7),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: textTheme.titleMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (description.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  description,
                  style: textTheme.bodyMedium?.copyWith(
                    color: textColor.withValues(alpha: 0.8),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isSender
                      ? colorScheme.surface.withValues(alpha: 0.3)
                      : colorScheme.surfaceContainerHighest.withValues(
                          alpha: 0.5,
                        ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    _EventInfoRow(
                      icon: Icons.calendar_today_outlined,
                      text: dateFormat.format(startDate),
                      textColor: textColor,
                      textTheme: textTheme,
                    ),
                    const SizedBox(height: 8),
                    _EventInfoRow(
                      icon: Icons.access_time,
                      text:
                          '${timeFormat.format(startDate)} - ${timeFormat.format(endDate)}',
                      textColor: textColor,
                      textTheme: textTheme,
                    ),
                    if (location != null && location!.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      _EventInfoRow(
                        icon: Icons.location_on_outlined,
                        text: location!,
                        textColor: textColor,
                        textTheme: textTheme,
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 12),
              if (!isSender)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.chatEventResponseTitle,
                      style: textTheme.bodySmall?.copyWith(
                        color: textColor.withValues(alpha: 0.7),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: _ResponseButton(
                            label: t.chatEventResponseGoing,
                            icon: Icons.check_circle_outline,
                            isSelected: userResponse == EventResponse.going,
                            count: goingCount,
                            colorScheme: colorScheme,
                            textTheme: textTheme,
                            selectedColor: Colors.green,
                            onTap: () => onResponseTap?.call(),
                            t: t,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _ResponseButton(
                            label: t.chatEventResponseMaybe,
                            icon: Icons.help_outline,
                            isSelected: userResponse == EventResponse.maybe,
                            count: maybeCount,
                            colorScheme: colorScheme,
                            textTheme: textTheme,
                            selectedColor: Colors.orange,
                            onTap: () => onResponseTap?.call(),
                            t: t,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _ResponseButton(
                            label: t.chatEventResponseNo,
                            icon: Icons.cancel_outlined,
                            isSelected: userResponse == EventResponse.notGoing,
                            count: notGoingCount,
                            colorScheme: colorScheme,
                            textTheme: textTheme,
                            selectedColor: Colors.red,
                            onTap: () => onResponseTap?.call(),
                            t: t,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              if (isSender)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    t.chatEventResponseSummary(
                      goingCount,
                      maybeCount,
                      notGoingCount,
                    ),
                    style: textTheme.bodySmall?.copyWith(
                      color: textColor.withValues(alpha: 0.6),
                      fontSize: 11,
                    ),
                  ),
                ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: textTheme.bodySmall?.copyWith(
                      color: textColor.withValues(alpha: 0.6),
                      fontSize: 11,
                    ),
                  ),
                  if (isSender) ...[
                    const SizedBox(width: 4),
                    Icon(
                      isRead ? Icons.done_all : Icons.done,
                      size: 16,
                      color: isRead
                          ? colorScheme.primary
                          : textColor.withValues(alpha: 0.6),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EventInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final TextTheme textTheme;

  const _EventInfoRow({
    required this.icon,
    required this.text,
    required this.textColor,
    required this.textTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: textColor.withValues(alpha: 0.7)),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: textTheme.bodySmall?.copyWith(
              color: textColor.withValues(alpha: 0.9),
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
  final int count;
  final ColorScheme colorScheme;
  final TextTheme textTheme;
  final Color selectedColor;
  final VoidCallback onTap;
  final AppLocalizations t;

  const _ResponseButton({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.count,
    required this.colorScheme,
    required this.textTheme,
    required this.selectedColor,
    required this.onTap,
    required this.t,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: t.chatEventResponseButtonLabel(label),
      hint: t.chatEventResponseButtonHint(label),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: isSelected
                ? selectedColor.withValues(alpha: 0.2)
                : colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            border: Border.all(
              color: isSelected
                  ? selectedColor
                  : colorScheme.outline.withValues(alpha: 0.3),
              width: isSelected ? 1.5 : 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected
                    ? selectedColor
                    : colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: textTheme.bodySmall?.copyWith(
                  color: isSelected
                      ? selectedColor
                      : colorScheme.onSurface.withValues(alpha: 0.8),
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 11,
                ),
              ),
              if (count > 0)
                Text(
                  count.toString(),
                  style: textTheme.bodySmall?.copyWith(
                    color: isSelected
                        ? selectedColor
                        : colorScheme.onSurface.withValues(alpha: 0.6),
                    fontSize: 10,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

enum EventResponse { going, maybe, notGoing }

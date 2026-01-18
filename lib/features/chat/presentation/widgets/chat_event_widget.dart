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

    final textColor = isSender
        ? colorScheme.onPrimaryContainer
        : colorScheme.onSurface;

    final dateFormat = DateFormat.yMMMd(t.localeName);
    final timeFormat = DateFormat.jm(t.localeName);

    return Semantics(
      label: isSender ? t.chatEventSemanticsYour : t.chatEventSemanticsReceived,
      hint: t.chatEventHint(dateFormat.format(startDate)),
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 400),
        tween: Tween(begin: 0.0, end: 1.0),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Transform.scale(
              scale: 0.95 + (0.05 * value),
              alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
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
              left: isSender ? 40 : 8,
              right: isSender ? 8 : 40,
              top: 4,
              bottom: 4,
            ),
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
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                bottomLeft: Radius.circular(isSender ? 20 : 4),
                bottomRight: Radius.circular(isSender ? 4 : 20),
              ),
              border: Border.all(
                color: isSender
                    ? colorScheme.primary.withValues(alpha: 0.2)
                    : colorScheme.outline.withValues(alpha: 0.15),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: isSender
                      ? colorScheme.primary.withValues(alpha: 0.2)
                      : Colors.black.withValues(alpha: 0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Event header badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colorScheme.tertiary.withValues(alpha: 0.2),
                        colorScheme.secondary.withValues(alpha: 0.15),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: colorScheme.tertiary.withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            colorScheme.tertiary,
                            colorScheme.secondary,
                          ],
                        ).createShader(bounds),
                        child: Icon(
                          Icons.event_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        t.chatEventLabel,
                        style: textTheme.labelMedium?.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Title
                Text(
                  title,
                  style: textTheme.titleLarge?.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2,
                    height: 1.3,
                  ),
                ),
                if (description.isNotEmpty) ...[
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: textTheme.bodyMedium?.copyWith(
                      color: textColor.withValues(alpha: 0.85),
                      height: 1.5,
                      letterSpacing: 0.15,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                const SizedBox(height: 16),
                // Event details card
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: isSender
                          ? [
                              colorScheme.surface.withValues(alpha: 0.4),
                              colorScheme.surface.withValues(alpha: 0.2),
                            ]
                          : [
                              colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
                              colorScheme.surfaceContainerHighest.withValues(alpha: 0.4),
                            ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: colorScheme.outline.withValues(alpha: 0.1),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      _EventInfoRow(
                        icon: Icons.calendar_today_rounded,
                        text: dateFormat.format(startDate),
                        textColor: textColor,
                        textTheme: textTheme,
                        colorScheme: colorScheme,
                      ),
                      const SizedBox(height: 12),
                      _EventInfoRow(
                        icon: Icons.access_time_rounded,
                        text:
                            '${timeFormat.format(startDate)} - ${timeFormat.format(endDate)}',
                        textColor: textColor,
                        textTheme: textTheme,
                        colorScheme: colorScheme,
                      ),
                      if (location != null && location!.isNotEmpty) ...[
                        const SizedBox(height: 12),
                        _EventInfoRow(
                          icon: Icons.location_on_rounded,
                          text: location!,
                          textColor: textColor,
                          textTheme: textTheme,
                          colorScheme: colorScheme,
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Response section
                if (!isSender)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.1),
                              colorScheme.secondary.withValues(alpha: 0.08),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          t.chatEventResponseTitle,
                          style: textTheme.labelMedium?.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: _ResponseButton(
                              label: t.chatEventResponseGoing,
                              icon: Icons.check_circle_rounded,
                              isSelected: userResponse == EventResponse.going,
                              count: goingCount,
                              colorScheme: colorScheme,
                              textTheme: textTheme,
                              selectedColor: Colors.green,
                              onTap: () => onResponseTap?.call(),
                              t: t,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: _ResponseButton(
                              label: t.chatEventResponseMaybe,
                              icon: Icons.help_rounded,
                              isSelected: userResponse == EventResponse.maybe,
                              count: maybeCount,
                              colorScheme: colorScheme,
                              textTheme: textTheme,
                              selectedColor: Colors.orange,
                              onTap: () => onResponseTap?.call(),
                              t: t,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: _ResponseButton(
                              label: t.chatEventResponseNo,
                              icon: Icons.cancel_rounded,
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
                      const SizedBox(height: 12),
                    ],
                  ),
                // Sender summary
                if (isSender)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          colorScheme.surface.withValues(alpha: 0.3),
                          colorScheme.surface.withValues(alpha: 0.15),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: colorScheme.outline.withValues(alpha: 0.15),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.people_outline_rounded,
                          size: 16,
                          color: textColor.withValues(alpha: 0.7),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            t.chatEventResponseSummary(
                              goingCount,
                              maybeCount,
                              notGoingCount,
                            ),
                            style: textTheme.bodySmall?.copyWith(
                              color: textColor.withValues(alpha: 0.8),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 12),
                
                // Time and read status
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
    );
  }
}

class _EventInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final TextTheme textTheme;
  final ColorScheme colorScheme;

  const _EventInfoRow({
    required this.icon,
    required this.text,
    required this.textColor,
    required this.textTheme,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorScheme.primary.withValues(alpha: 0.15),
                colorScheme.secondary.withValues(alpha: 0.1),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: colorScheme.primary.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                colorScheme.primary,
                colorScheme.secondary,
              ],
            ).createShader(bounds),
            child: Icon(icon, size: 18, color: Colors.white),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: textTheme.bodyMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            decoration: BoxDecoration(
              gradient: isSelected
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        selectedColor.withValues(alpha: 0.25),
                        selectedColor.withValues(alpha: 0.15),
                      ],
                    )
                  : LinearGradient(
                      colors: [
                        colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                        colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                      ],
                    ),
              border: Border.all(
                color: isSelected
                    ? selectedColor.withValues(alpha: 0.6)
                    : colorScheme.outline.withValues(alpha: 0.25),
                width: isSelected ? 2 : 1.5,
              ),
              borderRadius: BorderRadius.circular(14),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: selectedColor.withValues(alpha: 0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 24,
                  color: isSelected
                      ? selectedColor
                      : colorScheme.onSurface.withValues(alpha: 0.6),
                ),
                const SizedBox(height: 6),
                Text(
                  label,
                  style: textTheme.labelSmall?.copyWith(
                    color: isSelected
                        ? selectedColor.withValues(alpha: 0.95)
                        : colorScheme.onSurface.withValues(alpha: 0.85),
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                    fontSize: 11,
                    letterSpacing: 0.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (count > 0) ...[
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? selectedColor.withValues(alpha: 0.2)
                          : colorScheme.surface.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: isSelected
                            ? selectedColor.withValues(alpha: 0.4)
                            : colorScheme.outline.withValues(alpha: 0.2),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      count.toString(),
                      style: textTheme.labelSmall?.copyWith(
                        color: isSelected
                            ? selectedColor
                            : colorScheme.onSurface.withValues(alpha: 0.7),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum EventResponse { going, maybe, notGoing }

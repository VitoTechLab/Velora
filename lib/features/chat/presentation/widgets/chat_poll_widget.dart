import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Chat poll bubble with modern clean design
///
/// Pure UI widget for poll messages.
/// Avatar and user info should be handled by parent widget.
///
/// Features:
/// - Clean minimal poll options
/// - Smooth progress animations
/// - Modern rounded corners
/// - Entrance animation
class ChatPollWidget extends StatelessWidget {
  final String question;
  final List<PollOption> options;
  final String time;
  final bool isSender;
  final bool isRead;
  final bool hasVoted;
  final int totalVotes;

  /// Callback when voting - passes the option id
  final void Function(String optionId)? onVote;

  const ChatPollWidget({
    super.key,
    required this.question,
    required this.options,
    required this.time,
    required this.isSender,
    this.isRead = false,
    this.hasVoted = false,
    this.totalVotes = 0,
    this.onVote,
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
    final textColor =
        isSender ? colorScheme.onPrimaryContainer : colorScheme.onSurface;

    return TweenAnimationBuilder<double>(
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
      child: Semantics(
        label: isSender ? t.chatPollSemanticsYour : t.chatPollSemanticsReceived,
        hint: t.chatPollSemanticsHint(totalVotes),
        child: Align(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.78,
              minWidth: 260,
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
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Poll header
                Container(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.08),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: colorScheme.primary.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.bar_chart_rounded,
                          size: 16,
                          color: colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        t.chatPollLabel,
                        style: textTheme.labelMedium?.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          t.chatPollTotalVotes(totalVotes),
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Poll question
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
                  child: Text(
                    question,
                    style: textTheme.titleSmall?.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      height: 1.35,
                    ),
                  ),
                ),

                // Poll options
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: options.asMap().entries.map((entry) {
                      final index = entry.key;
                      final option = entry.value;
                      final percentage = totalVotes > 0
                          ? (option.votes / totalVotes * 100).toStringAsFixed(0)
                          : '0';

                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: index < options.length - 1 ? 8 : 0,
                        ),
                        child: _PollOptionItem(
                          option: option,
                          percentage: percentage,
                          totalVotes: totalVotes,
                          hasVoted: hasVoted,
                          textColor: textColor,
                          colorScheme: colorScheme,
                          textTheme: textTheme,
                          isSender: isSender,
                          onTap: hasVoted || isSender
                              ? null
                              : () => onVote?.call(option.id),
                          t: t,
                        ),
                      );
                    }).toList(),
                  ),
                ),

                // Footer: time + read receipt
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
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
                        Icon(
                          Icons.done_all_rounded,
                          size: 16,
                          color: isRead
                              ? const Color(0xFF34B7F1)
                              : textColor.withValues(alpha: 0.4),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PollOptionItem extends StatelessWidget {
  final PollOption option;
  final String percentage;
  final int totalVotes;
  final bool hasVoted;
  final Color textColor;
  final ColorScheme colorScheme;
  final TextTheme textTheme;
  final bool isSender;
  final VoidCallback? onTap;
  final AppLocalizations t;

  const _PollOptionItem({
    required this.option,
    required this.percentage,
    required this.totalVotes,
    required this.hasVoted,
    required this.textColor,
    required this.colorScheme,
    required this.textTheme,
    required this.isSender,
    this.onTap,
    required this.t,
  });

  @override
  Widget build(BuildContext context) {
    final showResults = hasVoted || isSender;
    final progress = totalVotes > 0 ? option.votes / totalVotes : 0.0;

    return Semantics(
      button: onTap != null,
      label: t.chatPollOptionSemantics(option.text, option.votes, percentage),
      hint: onTap != null ? t.chatPollVoteHint : null,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: showResults
                  ? colorScheme.surface.withValues(alpha: 0.5)
                  : colorScheme.surface.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: option.isSelected && showResults
                    ? colorScheme.primary.withValues(alpha: 0.5)
                    : colorScheme.outline.withValues(alpha: 0.1),
                width: option.isSelected && showResults ? 1.5 : 1,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Stack(
                children: [
                  // Progress bar
                  if (showResults)
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeOutCubic,
                          width: MediaQuery.of(context).size.width *
                              0.7 *
                              progress,
                          decoration: BoxDecoration(
                            color: option.isSelected
                                ? colorScheme.primary.withValues(alpha: 0.2)
                                : colorScheme.primary.withValues(alpha: 0.08),
                          ),
                        ),
                      ),
                    ),

                  // Content
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 11,
                    ),
                    child: Row(
                      children: [
                        // Radio/Check indicator
                        if (!showResults)
                          Container(
                            width: 18,
                            height: 18,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                    colorScheme.primary.withValues(alpha: 0.5),
                                width: 1.5,
                              ),
                            ),
                          )
                        else if (option.isSelected)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.check_circle_rounded,
                              size: 20,
                              color: colorScheme.primary,
                            ),
                          ),

                        // Option text
                        Expanded(
                          child: Text(
                            option.text,
                            style: textTheme.bodyMedium?.copyWith(
                              color: textColor,
                              fontWeight: option.isSelected && showResults
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                          ),
                        ),

                        // Percentage
                        if (showResults)
                          Text(
                            '$percentage%',
                            style: textTheme.labelMedium?.copyWith(
                              color: option.isSelected
                                  ? colorScheme.primary
                                  : textColor.withValues(alpha: 0.6),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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

class PollOption {
  final String id;
  final String text;
  final int votes;
  final bool isSelected;

  const PollOption({
    required this.id,
    required this.text,
    required this.votes,
    this.isSelected = false,
  });
}

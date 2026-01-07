import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatPollWidget extends StatelessWidget {
  final String question;
  final List<PollOption> options;
  final String time;
  final bool isSender;
  final bool isRead;
  final bool hasVoted;
  final int totalVotes;
  final VoidCallback? onVote;

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

    final textColor = isSender
        ? colorScheme.onPrimaryContainer
        : colorScheme.onSurface;

    return Semantics(
      label: isSender ? t.chatPollSemanticsYour : t.chatPollSemanticsReceived,
      hint: t.chatPollSemanticsHint(totalVotes),
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
                    Icons.poll,
                    size: 18,
                    color: textColor.withValues(alpha: 0.7),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    t.chatPollLabel,
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
                question,
                style: textTheme.titleMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              ...options.asMap().entries.map((entry) {
                final index = entry.key;
                final option = entry.value;
                final percentage = totalVotes > 0
                    ? (option.votes / totalVotes * 100).toStringAsFixed(0)
                    : '0';

                return Padding(
                  padding: EdgeInsets.only(
                    bottom: index < options.length - 1 ? 12 : 0,
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
                        : () {
                            // Handle vote
                            onVote?.call();
                          },
                    t: t,
                  ),
                );
              }),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.chatPollTotalVotes(totalVotes),
                    style: textTheme.bodySmall?.copyWith(
                      color: textColor.withValues(alpha: 0.6),
                      fontSize: 11,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
            ],
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
    final progressColor = isSender
        ? colorScheme.primary.withValues(alpha: 0.3)
        : colorScheme.primary.withValues(alpha: 0.15);

    return Semantics(
      button: onTap != null,
      label: t.chatPollOptionSemantics(option.text, option.votes, percentage),
      hint: onTap != null ? t.chatPollVoteHint : null,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            if (showResults)
              Positioned.fill(
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: totalVotes > 0 ? option.votes / totalVotes : 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: progressColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: showResults
                      ? Colors.transparent
                      : textColor.withValues(alpha: 0.2),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  if (option.isSelected && showResults)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.check_circle,
                        size: 18,
                        color: colorScheme.primary,
                      ),
                    ),
                  Expanded(
                    child: Text(
                      option.text,
                      style: textTheme.bodyMedium?.copyWith(
                        color: textColor,
                        fontWeight: option.isSelected && showResults
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  if (showResults)
                    Text(
                      '$percentage%',
                      style: textTheme.bodySmall?.copyWith(
                        color: textColor.withValues(alpha: 0.7),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PollOption {
  final String text;
  final int votes;
  final bool isSelected;

  const PollOption({
    required this.text,
    required this.votes,
    this.isSelected = false,
  });
}

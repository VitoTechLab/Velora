import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Chat poll bubble with elegant tail design
///
/// Pure UI widget for poll messages.
/// Avatar and user info should be handled by parent widget.
///
/// Features:
/// - Interactive poll options
/// - Real-time vote percentage
/// - Smooth curved tail
/// - Subtle shadow for depth
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
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.75,
            minWidth: 250,
          ),
          child: CustomPaint(
            painter: _BubbleTailPainter(
              color: bubbleColor,
              isSender: isSender,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              padding: const EdgeInsets.all(14),
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
                  // Poll header
                  Row(
                    children: [
                      Icon(
                        Icons.poll_rounded,
                        size: 20,
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

                  // Poll question
                  Text(
                    question,
                    style: textTheme.titleMedium?.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Poll options
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

                  // Footer: vote count + time + read receipt
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.chatPollTotalVotes(totalVotes),
                        style: textTheme.bodySmall?.copyWith(
                          color: textColor.withValues(alpha: 0.65),
                          fontSize: 11,
                        ),
                      ),
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
                ],
              ),
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
    final progressColor = isSender
        ? colorScheme.primary.withValues(alpha: 0.25)
        : colorScheme.primary.withValues(alpha: 0.15);

    return Semantics(
      button: onTap != null,
      label: t.chatPollOptionSemantics(option.text, option.votes, percentage),
      hint: onTap != null ? t.chatPollVoteHint : null,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Ink(
            decoration: BoxDecoration(
              color: showResults
                  ? Colors.transparent
                  : textColor.withValues(alpha: 0.03),
              border: Border.all(
                color: showResults
                    ? Colors.transparent
                    : textColor.withValues(alpha: 0.15),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                // Progress bar background
                if (showResults)
                  Positioned.fill(
                    child: AnimatedFractionallySizedBox(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutCubic,
                      alignment: Alignment.centerLeft,
                      widthFactor: totalVotes > 0 ? option.votes / totalVotes : 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: progressColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),

                // Content
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Row(
                    children: [
                      // Selected indicator
                      if (option.isSelected && showResults)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
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
                                : FontWeight.normal,
                            height: 1.3,
                          ),
                        ),
                      ),

                      // Percentage
                      if (showResults) ...[
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: colorScheme.primary.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '$percentage%',
                            style: textTheme.labelSmall?.copyWith(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
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

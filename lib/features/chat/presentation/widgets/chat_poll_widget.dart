import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Chat poll bubble with modern design
///
/// Pure UI widget for poll messages.
/// Avatar and user info should be handled by parent widget.
///
/// Features:
/// - Interactive poll options with gradient progress
/// - Real-time vote percentage
/// - Modern rounded corners with pointy style
/// - Gradient backgrounds and icons
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

    // Pakai warna teks netral supaya selalu terbaca jelas
    final textColor = colorScheme.onSurface;

    return TweenAnimationBuilder<double>(
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
      child: Semantics(
        label: isSender ? t.chatPollSemanticsYour : t.chatPollSemanticsReceived,
        hint: t.chatPollSemanticsHint(totalVotes),
        child: Align(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
              minWidth: 250,
            ),
            child: Container(
              margin: EdgeInsets.only(
                left: isSender ? 40 : 8,
                right: isSender ? 8 : 40,
                top: 3,
                bottom: 3,
              ),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                // Lebih mirip kartu WhatsApp: background netral
                gradient: isSender
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          colorScheme.primaryContainer.withValues(alpha: 0.95),
                          colorScheme.primaryContainer.withValues(alpha: 0.85),
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
                  // Poll header with gradient icon
                  Row(
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            colorScheme.primary,
                            colorScheme.secondary,
                          ],
                        ).createShader(bounds),
                        child: const Icon(
                          Icons.poll_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.15),
                              colorScheme.secondary.withValues(alpha: 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: colorScheme.primary.withValues(alpha: 0.2),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          t.chatPollLabel,
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontSize: 11,
                          ),
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
                                // Handle vote with option id
                                onVote?.call(option.id);
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.1),
                              colorScheme.secondary.withValues(alpha: 0.05),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          t.chatPollTotalVotes(totalVotes),
                          style: textTheme.bodySmall?.copyWith(
                            color: textColor.withValues(alpha: 0.7),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
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
                                Icons.done_all_rounded, // Always double check
                                key: ValueKey(isRead),
                                size: 16,
                                color: isRead
                                    ? Colors.lightBlueAccent
                                        .shade200 // Blue when read
                                    : Colors
                                        .grey.shade500, // Gray when not read
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
              // Saat belum vote, opsi tampil seperti chip netral
              color: showResults
                  ? Colors.transparent
                  : colorScheme.surfaceContainerLowest,
              gradient: null,
              border: Border.all(
                color: showResults
                    ? Colors.transparent
                    : colorScheme.outline.withValues(alpha: 0.15),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                // Progress bar with gradient
                if (showResults)
                  Positioned.fill(
                    child: AnimatedFractionallySizedBox(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOutCubic,
                      alignment: Alignment.centerLeft,
                      widthFactor:
                          totalVotes > 0 ? option.votes / totalVotes : 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.25),
                              colorScheme.secondary.withValues(alpha: 0.15),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: colorScheme.primary.withValues(alpha: 0.2),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),

                // Content
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Row(
                    children: [
                      // Selected indicator with animation
                      if (option.isSelected && showResults)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TweenAnimationBuilder<double>(
                            duration: const Duration(milliseconds: 400),
                            tween: Tween(begin: 0.0, end: 1.0),
                            curve: Curves.elasticOut,
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: child,
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    colorScheme.primary,
                                    colorScheme.secondary,
                                  ],
                                ),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: colorScheme.primary
                                        .withValues(alpha: 0.4),
                                    blurRadius: 6,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.check_circle_rounded,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
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

                      // Percentage with gradient badge
                      if (showResults) ...[
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                colorScheme.primary.withValues(alpha: 0.2),
                                colorScheme.secondary.withValues(alpha: 0.15),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: colorScheme.primary.withValues(alpha: 0.3),
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    colorScheme.primary.withValues(alpha: 0.15),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Text(
                            '$percentage%',
                            style: textTheme.labelSmall?.copyWith(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              letterSpacing: 0.3,
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

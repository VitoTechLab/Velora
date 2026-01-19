import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_state.dart';
import 'package:velora/l10n/app_localizations.dart';

class TypingIndicatorSubtitle extends StatelessWidget {
  final String peerUserId;
  final String chatSubtitle;

  const TypingIndicatorSubtitle({
    super.key,
    required this.peerUserId,
    required this.chatSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return BlocSelector<ChatMessageBloc, ChatMessageState, bool>(
      selector: (state) {
        return state.typingUsers.containsKey(peerUserId);
      },
      builder: (context, isTyping) {
        if (isTyping) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                t.chatDetailTyping,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.primary,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(width: 4),
              _TypingDotsAnimation(color: colorScheme.primary),
            ],
          );
        }

        return BlocSelector<UserPresenceBloc, UserPresenceState,
            ({bool isOnline, DateTime? lastSeen})>(
          selector: (state) => (
            isOnline: state.onlineUsers[peerUserId] ?? false,
            lastSeen: state.lastSeen[peerUserId],
          ),
          builder: (context, presence) {
            if (presence.isOnline) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: colorScheme.tertiary,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.tertiary.withValues(alpha: 0.5),
                          blurRadius: 4,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    t.chatDetailStatusOnline,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.tertiary,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              );
            }

            final lastSeenText = presence.lastSeen != null
                ? _formatLastSeen(presence.lastSeen!, t)
                : chatSubtitle;

            return Text(
              lastSeenText,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            );
          },
        );
      },
    );
  }

  String _formatLastSeen(DateTime lastSeen, AppLocalizations t) {
    final now = DateTime.now();
    final diff = now.difference(lastSeen);

    if (diff.inMinutes < 1) {
      return t.chatDetailLastSeenJustNow;
    } else if (diff.inMinutes < 60) {
      return t.chatDetailLastSeenMinutes(diff.inMinutes);
    } else if (diff.inHours < 24) {
      return t.chatDetailLastSeenHours(diff.inHours);
    } else if (diff.inDays < 7) {
      return t.chatDetailLastSeenDays(diff.inDays);
    } else {
      return t.chatDetailLastSeenDate(_formatDate(lastSeen));
    }
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (_isSameDay(date, now)) {
      return 'Today';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else {
      final months = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
      ];
      return '${months[date.month - 1]} ${date.day}, ${date.year}';
    }
  }
}

class _TypingDotsAnimation extends StatefulWidget {
  final Color color;

  const _TypingDotsAnimation({required this.color});

  @override
  State<_TypingDotsAnimation> createState() => _TypingDotsAnimationState();
}

class _TypingDotsAnimationState extends State<_TypingDotsAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (index) {
            final delay = index * 0.2;
            final value = (_controller.value - delay).clamp(0.0, 1.0);
            final opacity =
                (value < 0.5 ? value * 2 : (1 - value) * 2).clamp(0.3, 1.0);
            return Padding(
              padding: const EdgeInsets.only(right: 2),
              child: Opacity(
                opacity: opacity,
                child: Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: widget.color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/entities/message_status.dart';
import 'package:velora/features/chat/presentation/widgets/chat_audio_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_bubble_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_event_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_file_message_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_media_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_message_item.dart';
import 'package:velora/features/chat/presentation/widgets/chat_poll_widget.dart';
import 'package:velora/features/chat/presentation/widgets/date_separator_widget.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatMessageList extends StatelessWidget {
  final ScrollController scrollController;
  final Animation<double> fadeAnimation;
  final bool isGroup;
  final String? peerUserId;
  final String? peerDisplayName;
  final String? peerAvatarUrl;

  const ChatMessageList({
    super.key,
    required this.scrollController,
    required this.fadeAnimation,
    required this.isGroup,
    required this.peerUserId,
    this.peerDisplayName,
    this.peerAvatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return BlocBuilder<ChatMessageBloc, ChatMessageState>(
      builder: (context, state) {
        if (state.isLoading && state.messages.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.errorMessage != null && state.messages.isEmpty) {
          return TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 400),
            tween: Tween(begin: 0.0, end: 1.0),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, 20 * (1 - value)),
                  child: child,
                ),
              );
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color:
                            colorScheme.errorContainer.withValues(alpha: 0.3),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: colorScheme.error.withValues(alpha: 0.3),
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        Icons.cloud_off_rounded,
                        size: 56,
                        color: colorScheme.error,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      t.commonError,
                      style: textTheme.titleMedium?.copyWith(
                        color: colorScheme.error,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      state.errorMessage!,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 24),
                    FilledButton.icon(
                      onPressed: () {
                        context.read<ChatMessageBloc>().add(
                              InitializeChatEvent(
                                conversationId: state.conversationId ?? '',
                                peerUserId: peerUserId,
                                limit: 50,
                              ),
                            );
                      },
                      icon: const Icon(Icons.refresh_rounded),
                      label: Text(t.commonRetry),
                      style: FilledButton.styleFrom(
                        backgroundColor: colorScheme.error,
                        foregroundColor: colorScheme.onError,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        if (state.messages.isEmpty) {
          return TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 600),
            tween: Tween(begin: 0.0, end: 1.0),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.scale(
                  scale: 0.8 + (0.2 * value),
                  child: child,
                ),
              );
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        colorScheme.primary.withValues(alpha: 0.5),
                        colorScheme.secondary.withValues(alpha: 0.5),
                      ],
                    ).createShader(bounds),
                    child: Icon(
                      Icons.chat_bubble_outline,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    t.chatDetailNoMessages,
                    style: textTheme.titleLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.chatDetailNoMessagesHint,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.outline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        final authState = context.read<AuthBloc>().state;
        final myUserId = authState.userId;
        final messages = state.messages;

        // For 1-on-1 chats, find the latest message from the peer to determine read status
        // If the peer has sent a message after ours, it means they've read our message
        DateTime? latestPeerMessageTime;
        if (!isGroup && peerUserId != null) {
          for (final msg in messages) {
            if (msg.senderId == peerUserId) {
              if (latestPeerMessageTime == null ||
                  msg.createdAt.isAfter(latestPeerMessageTime)) {
                latestPeerMessageTime = msg.createdAt;
              }
            }
          }
        }

        return FadeTransition(
          opacity: fadeAnimation,
          child: Semantics(
            label: t.chatDetailHistoryLabel,
            hint: t.chatDetailHistoryHint,
            child: ListView.builder(
              controller: scrollController,
              reverse: true,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              itemCount: messages.length + (state.isLoadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == messages.length) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                final message = messages[index];
                final isSender = message.senderId == myUserId ||
                    message.status == MessageStatus.sending;
                final isDeleted = message.deletedAt != null;

                // Debug log: observe deletedAt flag vs UI isDeleted
                logi(
                  'ChatMessageList item id=${message.id} kind=${message.kind} deletedAt=${message.deletedAt} isDeleted=$isDeleted isSender=$isSender',
                  tag: 'ChatMessageList',
                );

                final showDateSeparator = index == messages.length - 1 ||
                    !_isSameDay(
                      messages[index].createdAt,
                      messages[index + 1].createdAt,
                    );

                return TweenAnimationBuilder<double>(
                  key: ValueKey(message.id),
                  duration: const Duration(milliseconds: 400),
                  tween: Tween(begin: 0.0, end: 1.0),
                  curve: Curves.easeOutCubic,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: 0.5 + (0.5 * value),
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      if (showDateSeparator)
                        DateSeparatorWidget(
                          date: _formatDate(message.createdAt),
                        ),
                      if (isDeleted)
                        ChatBubbleWidget(
                          message: t.chatDetailMessageDeleted,
                          time: _formatTime(message.createdAt),
                          isSender: isSender,
                          isRead: true,
                        )
                      else
                        _buildMessageWidget(
                          context: context,
                          message: message,
                          isSender: isSender,
                          t: t,
                          // For 1-on-1: message is read if peer has replied after this message
                          // or if realtime read receipt exists
                          isRead: _isMessageRead(
                            message: message,
                            isSender: isSender,
                            latestPeerMessageTime: latestPeerMessageTime,
                            messageReads: state.messageReads,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessageWidget({
    required BuildContext context,
    required ChatMessageEntity message,
    required bool isSender,
    required AppLocalizations t,
    required bool isRead,
  }) {
    final time = _formatTime(message.createdAt);

    String? senderName;
    String? senderAvatar;

    // Untuk pesan lawan bicara (receiver), pakai info dari peerDisplayName / peerAvatarUrl
    // yang sudah dilempar dari ChatDetailScreen, bukan dari ChatMessageEntity.
    if (!isSender) {
      senderName = peerDisplayName;
      senderAvatar = peerAvatarUrl;
    }

    final isOnline = !isGroup && !isSender && peerUserId != null
        ? context.read<UserPresenceBloc>().state.onlineUsers[peerUserId] ??
            false
        : false;

    late Widget messageWidget;
    switch (message.kind) {
      case 'text':
        messageWidget = ChatBubbleWidget(
          message: message.body ?? '',
          time: time,
          isSender: isSender,
          isRead: isRead,
        );
        break;

      case 'media':
      case 'image':
      case 'video':
        final attachment =
            message.attachments.isNotEmpty ? message.attachments.first : null;
        final mediaUrl = attachment?.effectiveUrl ?? '';
        messageWidget = ChatMediaWidget(
          mediaUrls: mediaUrl.isNotEmpty ? [mediaUrl] : [],
          caption: message.body,
          time: time,
          isSender: isSender,
          isRead: isRead,
          isVideo: message.kind == 'video',
        );
        break;

      case 'audio':
        final attachment =
            message.attachments.isNotEmpty ? message.attachments.first : null;
        final audioUrl = attachment?.effectiveUrl ?? '';
        if (audioUrl.isEmpty) {
          messageWidget = ChatBubbleWidget(
            message: t.chatDetailAudioUnavailable,
            time: time,
            isSender: isSender,
          );
        } else {
          messageWidget = ChatAudioWidget(
            audioUrl: audioUrl,
            caption: message.body,
            time: time,
            isSender: isSender,
            isRead: isRead,
            durationSeconds: attachment?.durationSeconds,
            isVoiceMessage: attachment?.isVoiceMessage ?? false,
          );
        }
        break;

      case 'file':
        final attachment =
            message.attachments.isNotEmpty ? message.attachments.first : null;
        final fileUrl = attachment?.effectiveUrl ?? '';
        final fileName = attachment?.filename ?? 'Document';
        final fileSize = attachment?.sizeBytes;
        messageWidget = ChatFileMessageWidget(
          fileUrl: fileUrl,
          fileName: fileName,
          fileSize: fileSize,
          time: time,
          isSender: isSender,
        );
        break;

      case 'poll':
        final poll = message.poll;
        if (poll == null) {
          messageWidget = ChatBubbleWidget(
            message: 'Poll data unavailable',
            time: time,
            isSender: isSender,
          );
          break;
        }

        final List<PollOption> options = poll.options
            .map<PollOption>(
              (o) => PollOption(
                id: o.id,
                text: o.text,
                votes: o.voteCount,
                isSelected: o.isSelected,
              ),
            )
            .toList();

        final totalVotes = options.fold<int>(
          0,
          (int previous, PollOption current) => previous + current.votes,
        );
        final hasVoted = options.any((o) => o.isSelected);

        messageWidget = ChatPollWidget(
          question: poll.question,
          options: options,
          time: time,
          isSender: isSender,
          totalVotes: totalVotes,
          hasVoted: hasVoted,
          onVote: hasVoted || isSender
              ? null
              : (optionId) {
                  context.read<ChatMessageBloc>().add(
                        ChatMessageEvent.votePoll(
                          pollMessageId: poll.messageId,
                          optionId: optionId,
                        ),
                      );
                },
        );
        break;

      case 'event':
        final event = message.event;
        if (event == null) {
          messageWidget = ChatBubbleWidget(
            message: 'Event data unavailable',
            time: time,
            isSender: isSender,
          );
          break;
        }

        messageWidget = ChatEventWidget(
          title: event.title,
          description: event.description ?? '',
          location: event.locationName,
          startDate: event.startsAt,
          endDate: event.endsAt ?? event.startsAt,
          time: time,
          isSender: isSender,
          userResponse: _mapEventResponse(event.userResponse),
          goingCount: event.goingCount,
          maybeCount: event.interestedCount,
          notGoingCount: event.notGoingCount,
          onResponseTap: isSender
              ? null
              : () {
                  _showEventRsvpDialog(
                    context,
                    event.messageId,
                    event.userResponse,
                  );
                },
        );
        break;

      default:
        final body = message.body ?? '';
        messageWidget = ChatBubbleWidget(
          message: body,
          time: time,
          isSender: isSender,
          isRead: isRead,
        );
        break;
    }

    return ChatMessageItem(
      isSender: isSender,
      avatarUrl: senderAvatar,
      username: senderName,
      isOnline: isOnline,
      child: messageWidget,
    );
  }

  EventResponse? _mapEventResponse(String? status) {
    if (status == null) return null;
    switch (status) {
      case 'going':
        return EventResponse.going;
      case 'maybe':
      case 'interested':
        return EventResponse.maybe;
      case 'not_going':
        return EventResponse.notGoing;
      default:
        return null;
    }
  }

  void _showEventRsvpDialog(
    BuildContext context,
    String eventMessageId,
    String? currentResponse,
  ) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    showModalBottomSheet(
      context: context,
      builder: (bottomSheetContext) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.check_circle,
                color: currentResponse == 'going'
                    ? theme.colorScheme.primary
                    : null,
              ),
              title: Text(t.chatEventResponseGoing),
              selected: currentResponse == 'going',
              onTap: () {
                Navigator.pop(bottomSheetContext);
                context.read<ChatMessageBloc>().add(
                      ChatMessageEvent.respondToEvent(
                        eventMessageId: eventMessageId,
                        status: 'going',
                      ),
                    );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: currentResponse == 'interested'
                    ? theme.colorScheme.primary
                    : null,
              ),
              title: Text(t.chatEventResponseMaybe),
              selected: currentResponse == 'interested',
              onTap: () {
                Navigator.pop(bottomSheetContext);
                context.read<ChatMessageBloc>().add(
                      ChatMessageEvent.respondToEvent(
                        eventMessageId: eventMessageId,
                        status: 'interested',
                      ),
                    );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.cancel_outlined,
                color: currentResponse == 'not_going'
                    ? theme.colorScheme.primary
                    : null,
              ),
              title: Text(t.chatEventResponseNo),
              selected: currentResponse == 'not_going',
              onTap: () {
                Navigator.pop(bottomSheetContext);
                context.read<ChatMessageBloc>().add(
                      ChatMessageEvent.respondToEvent(
                        eventMessageId: eventMessageId,
                        status: 'not_going',
                      ),
                    );
              },
            ),
            if (currentResponse != null)
              ListTile(
                leading: const Icon(Icons.remove_circle_outline),
                title: Text(t.commonCancel),
                onTap: () {
                  Navigator.pop(bottomSheetContext);
                  context.read<ChatMessageBloc>().add(
                        ChatMessageEvent.cancelEventRsvp(
                          eventMessageId: eventMessageId,
                        ),
                      );
                },
              ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  /// Determine if a message has been read by the recipient
  /// For 1-on-1 chats: message is read if:
  /// 1. There's a realtime read receipt in messageReads
  /// 2. The peer has sent a message after this message (they must have seen it to reply)
  /// 3. The peer has ANY message in the conversation (they've seen our messages to respond)
  bool _isMessageRead({
    required ChatMessageEntity message,
    required bool isSender,
    DateTime? latestPeerMessageTime,
    required Map<String, List<MessageReadEntity>> messageReads,
  }) {
    // Only check read status for sender's messages
    if (!isSender) return false;

    // Check realtime read receipts first
    if (messageReads[message.id]?.isNotEmpty ?? false) {
      return true;
    }

    // For 1-on-1 chats: if peer has ANY reply, they've been in the chat
    // and have seen our messages (assuming they read before replying)
    if (latestPeerMessageTime != null) {
      // If peer has sent a message after ours, definitely read
      if (message.createdAt.isBefore(latestPeerMessageTime)) {
        return true;
      }
      // Even if our message is after peer's latest, if peer has been active,
      // older messages are likely read
      // We'll mark as read if the message is older than 5 minutes
      // This is a reasonable assumption for active conversations
      final messageAge = DateTime.now().difference(message.createdAt);
      if (messageAge.inMinutes > 5) {
        return true;
      }
    }

    return false;
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

  String _formatTime(DateTime time) {
    final localTime = time.toLocal();
    return '${localTime.hour.toString().padLeft(2, '0')}:${localTime.minute.toString().padLeft(2, '0')}';
  }
}

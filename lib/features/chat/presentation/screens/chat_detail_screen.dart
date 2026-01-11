import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_event.dart';
import 'package:velora/features/chat/presentation/dialogs/create_event_dialog.dart';
import 'package:velora/features/chat/presentation/dialogs/create_poll_dialog.dart';
import 'package:velora/features/chat/presentation/widgets/chat_bubble_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_event_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:velora/features/chat/presentation/widgets/chat_media_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_poll_widget.dart';
import 'package:velora/features/chat/presentation/widgets/date_separator_widget.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatDetailScreen extends HookWidget {
  final String conversationId;
  final String chatName;
  final String chatSubtitle;
  final String profileImageUrl;
  final bool isGroup;
  final String? peerUserId;

  const ChatDetailScreen({
    super.key,
    required this.conversationId,
    required this.chatName,
    required this.chatSubtitle,
    required this.profileImageUrl,
    this.isGroup = false,
    this.peerUserId,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final messageController = useTextEditingController();
    final scrollController = useScrollController();
    final focusNode = useFocusNode();

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final fadeAnimation = useMemoized(
      () =>
          CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
      [animationController],
    );

    useEffect(() {
      animationController.forward();
      return null;
    }, [animationController]);

    useEffect(() {
      if (!isGroup && peerUserId != null) {
        context.read<UserPresenceBloc>().add(
          UserPresenceEvent.fetchLastSeen([peerUserId!]),
        );
      }
      return null;
    }, [peerUserId]);

    // Image picker instance
    final imagePicker = useMemoized(() => ImagePicker());

    // Handler functions
    Future<void> handleGalleryPressed() async {
      try {
        // Show option dialog for image or video
        final choice = await showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(t.chatDetailSelectMediaTitle),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.image_outlined),
                  title: Text(t.chatDetailSelectImages),
                  onTap: () => Navigator.pop(context, 'image'),
                ),
                ListTile(
                  leading: const Icon(Icons.videocam_outlined),
                  title: Text(t.chatDetailSelectVideo),
                  onTap: () => Navigator.pop(context, 'video'),
                ),
              ],
            ),
          ),
        );

        if (choice == 'image') {
          final pickedFiles = await imagePicker.pickMultiImage(
            maxWidth: 1920,
            maxHeight: 1920,
            imageQuality: 85,
          );

          if (pickedFiles.isNotEmpty) {
            AppMessenger.showToast(
              message: t.chatDetailImagesSelected(pickedFiles.length),
              icon: Icons.image_outlined,
            );
            // Note: Image upload will be implemented when chat media feature is ready
            // For now, showing confirmation toast only
          }
        } else if (choice == 'video') {
          final pickedFile = await imagePicker.pickVideo(
            source: ImageSource.gallery,
            maxDuration: const Duration(minutes: 5),
          );

          if (pickedFile != null) {
            AppMessenger.showToast(
              message: t.chatDetailVideoSelected,
              icon: Icons.videocam_outlined,
            );
            // Note: Video upload will be implemented when chat media feature is ready
            // For now, showing confirmation toast only
          }
        }
      } catch (e) {
        AppMessenger.showToast(
          message: t.chatDetailPickMediaError,
          icon: Icons.error_outline,
        );
      }
    }

    Future<void> handleCameraPressed() async {
      try {
        // Show option dialog for photo or video
        final choice = await showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(t.chatDetailCameraModeTitle),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.camera_alt_outlined),
                  title: Text(t.chatDetailCameraTakePhoto),
                  onTap: () => Navigator.pop(context, 'photo'),
                ),
                ListTile(
                  leading: const Icon(Icons.videocam_outlined),
                  title: Text(t.chatDetailCameraRecordVideo),
                  onTap: () => Navigator.pop(context, 'video'),
                ),
              ],
            ),
          ),
        );

        if (choice == 'photo') {
          final pickedFile = await imagePicker.pickImage(
            source: ImageSource.camera,
            maxWidth: 1920,
            maxHeight: 1920,
            imageQuality: 85,
          );

          if (pickedFile != null) {
            AppMessenger.showToast(
              message: t.chatDetailPhotoCaptured,
              icon: Icons.camera_alt_outlined,
            );
            // Note: Image upload from camera will be implemented when chat media feature is ready
            // For now, showing confirmation toast only
          }
        } else if (choice == 'video') {
          final pickedFile = await imagePicker.pickVideo(
            source: ImageSource.camera,
            maxDuration: const Duration(minutes: 5),
          );

          if (pickedFile != null) {
            AppMessenger.showToast(
              message: t.chatDetailVideoRecorded,
              icon: Icons.videocam_outlined,
            );
            // Note: Video recording upload will be implemented when chat media feature is ready
            // For now, showing confirmation toast only
          }
        }
      } catch (e) {
        AppMessenger.showToast(
          message: t.chatDetailPickMediaError,
          icon: Icons.error_outline,
        );
      }
    }

    Future<void> handlePollPressed() async {
      final result = await CreatePollDialog.show(context);
      if (result != null) {
        AppMessenger.showToast(
          message: t.chatDetailPollCreated,
          icon: Icons.poll_outlined,
        );
        // Note: Poll sending will be implemented when chat poll RPC is ready
        // For now, showing confirmation toast and debug print
        debugPrint('Poll: $result');
      }
    }

    Future<void> handleEventPressed() async {
      final result = await CreateEventDialog.show(context);
      if (result != null) {
        AppMessenger.showToast(
          message: t.chatDetailEventCreated,
          icon: Icons.event_outlined,
        );
        // Note: Event will be sent when chat event RPC is implemented
        debugPrint('Event: $result');
      }
    }

    Future<void> handleDocumentPressed() async {
      try {
        final result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: [
            'pdf',
            'doc',
            'docx',
            'xls',
            'xlsx',
            'ppt',
            'pptx',
            'txt',
          ],
          allowMultiple: true,
        );

        if (result != null && result.files.isNotEmpty) {
          AppMessenger.showToast(
            message: t.chatDetailDocumentsSelected(result.files.length),
            icon: Icons.description_outlined,
          );
          // Note: Document upload will be implemented when chat media feature is ready
          // For now, showing confirmation toast only
        }
      } catch (e) {
        AppMessenger.showToast(
          message: t.chatDetailDocumentError,
          icon: Icons.error_outline,
        );
      }
    }

    Future<void> handleAudioPressed() async {
      try {
        final result = await FilePicker.platform.pickFiles(
          type: FileType.audio,
          allowMultiple: false,
        );

        if (result != null && result.files.isNotEmpty) {
          AppMessenger.showToast(
            message: t.chatDetailAudioSelected,
            icon: Icons.headset_outlined,
          );
          // Note: Audio upload will be implemented when chat media feature is ready
          // For now, showing confirmation toast only
        }
      } catch (e) {
        AppMessenger.showToast(
          message: t.chatDetailAudioError,
          icon: Icons.error_outline,
        );
      }
    }

    final backgroundColor = Color.lerp(
      colorScheme.surface,
      colorScheme.surfaceContainerHighest,
      theme.brightness == Brightness.dark ? 0.08 : 0.15,
    );

    String presenceText = '';

    if (!isGroup && peerUserId != null) {
      final presenceState = context.watch<UserPresenceBloc>().state;
      final isOnline = presenceState.onlineUsers[peerUserId] ?? false;

      if (isOnline) {
        presenceText = t.chatDetailStatusOnline;
      } else {
        // Untuk sekarang fallback ke subtitle default jika tidak ada info last seen.
        // Nanti bisa di-wire ke PresenceRealtimeStore.lastSeenFor(peerUserId!).
        presenceText = chatSubtitle;
      }
    } else {
      presenceText = chatSubtitle;
    }

    return BlocProvider(
      create: (context) => getIt<ChatMessageBloc>()
        ..add(LoadChatMessagesEvent(conversationId: conversationId))
        ..add(StartWatchMessagesEvent(conversationId: conversationId))
        ..add(StartWatchReadsEvent(conversationId: conversationId))
        ..add(StartWatchTypingEvent(conversationId: conversationId)),
      child: Builder(
        builder: (context) {
          // Setup scroll listener for load more
          useEffect(() {
            void onScroll() {
              if (scrollController.position.pixels >=
                  scrollController.position.maxScrollExtent - 200) {
                final bloc = context.read<ChatMessageBloc>();
                if (bloc.state.hasMore && !bloc.state.isLoadingMore) {
                  bloc.add(
                    LoadMoreChatMessagesEvent(
                      conversationId: conversationId,
                      limit: 50,
                    ),
                  );
                }
              }
            }

            scrollController.addListener(onScroll);
            return () => scrollController.removeListener(onScroll);
          }, [scrollController]);

          return Scaffold(
            backgroundColor: backgroundColor,
            appBar: AppBar(
              backgroundColor: colorScheme.surfaceContainerHighest,
              elevation: 0,
              leading: Semantics(
                button: true,
                label: t.chatDetailBackLabel,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
                  onPressed: () => Navigator.pop(context),
                  tooltip: t.commonGoBack,
                ),
              ),
              title: Semantics(
                header: true,
                label: t.chatDetailTitleLabel(chatName),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(profileImageUrl),
                      backgroundColor: colorScheme.surfaceContainerHighest,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatName,
                            style: textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: colorScheme.onSurface,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            presenceText,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Semantics(
                  button: true,
                  label: t.chatDetailOptionsLabel,
                  child: IconButton(
                    icon: Icon(Icons.more_vert, color: colorScheme.onSurface),
                    onPressed: () {},
                    tooltip: t.chatDetailMenuTooltip,
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<ChatMessageBloc, ChatMessageState>(
                      builder: (context, state) {
                        if (state.isLoading && state.messages.isEmpty) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (state.errorMessage != null &&
                            state.messages.isEmpty) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.error_outline,
                                  size: 64,
                                  color: colorScheme.error,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  state.errorMessage!,
                                  style: textTheme.bodyLarge?.copyWith(
                                    color: colorScheme.error,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        }

                        if (state.messages.isEmpty) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat_bubble_outline,
                                  size: 80,
                                  color: colorScheme.outline,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  t.chatDetailNoMessages,
                                  style: textTheme.titleLarge?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
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
                          );
                        }

                        final myUserId =
                            Supabase.instance.client.auth.currentUser?.id;
                        final messages = state.messages;

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
                              itemCount:
                                  messages.length +
                                  (state.isLoadingMore ? 1 : 0),
                              itemBuilder: (context, index) {
                                if (index == messages.length) {
                                  return const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }

                                final reversedIndex =
                                    messages.length - 1 - index;
                                final message = messages[reversedIndex];
                                final isSender = message.senderId == myUserId;
                                final isDeleted = message.deletedAt != null;

                                final showDateSeparator =
                                    reversedIndex == 0 ||
                                    !_isSameDay(
                                      messages[reversedIndex].createdAt,
                                      messages[reversedIndex - 1].createdAt,
                                    );

                                return Column(
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
                                      ),
                                  ],
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  BlocBuilder<ChatMessageBloc, ChatMessageState>(
                    builder: (context, state) {
                      return ChatInputBar(
                        controller: messageController,
                        focusNode: focusNode,
                        onSendMessage: (message) {
                          if (message.trim().isNotEmpty) {
                            context.read<ChatMessageBloc>().add(
                              SendChatMessageEvent(
                                conversationId: conversationId,
                                content: message,
                              ),
                            );
                            messageController.clear();
                          }
                        },
                        onGalleryPressed: handleGalleryPressed,
                        onCameraPressed: handleCameraPressed,
                        onLocationPressed: () {
                          AppMessenger.showToast(
                            message: t.chatDetailLocationSelected,
                            icon: Icons.location_on_outlined,
                          );
                        },
                        onContactPressed: () {
                          AppMessenger.showToast(
                            message: t.chatDetailContactSelected,
                            icon: Icons.person_outline,
                          );
                        },
                        onDocumentPressed: handleDocumentPressed,
                        onAudioPressed: handleAudioPressed,
                        onPollPressed: handlePollPressed,
                        onEventPressed: handleEventPressed,
                        onAiImagesPressed: () {
                          AppMessenger.showToast(
                            message: t.chatDetailAiImagesSelected,
                            icon: Icons.auto_awesome_outlined,
                          );
                        },
                        onVoicePressed: () {
                          AppMessenger.showToast(
                            message: t.chatDetailVoiceMessage,
                            icon: Icons.mic,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMessageWidget({
    required BuildContext context,
    required dynamic message,
    required bool isSender,
    required AppLocalizations t,
  }) {
    final time = _formatTime(message.createdAt);

    switch (message.kind) {
      case 'text':
        return ChatBubbleWidget(
          message: message.body ?? '',
          time: time,
          isSender: isSender,
          isRead: true,
        );

      case 'media':
      case 'image':
      case 'video':
        final mediaUrl = message.mediaUrl ?? '';
        return ChatMediaWidget(
          mediaUrls: mediaUrl.isNotEmpty ? [mediaUrl] : [],
          caption: message.body,
          time: time,
          isSender: isSender,
          isRead: true,
          isVideo: message.kind == 'video',
        );

      case 'poll':
        final currentUserId = Supabase.instance.client.auth.currentUser?.id;
        final pollData = _parsePollData(message.metadata, currentUserId);
        return ChatPollWidget(
          question: pollData.question,
          options: pollData.options,
          time: time,
          isSender: isSender,
          totalVotes: pollData.totalVotes,
          hasVoted: pollData.hasVoted,
          onVote: pollData.hasVoted || isSender
              ? null
              : () {
                  // Note: RSVP will be implemented via bloc when event RPC is ready
                  logi('Poll vote requested', tag: 'ChatDetail');
                },
        );

      case 'event':
        final currentUserId = Supabase.instance.client.auth.currentUser?.id;
        final eventData = _parseEventData(message.metadata, currentUserId);
        return ChatEventWidget(
          title: eventData.title,
          description: eventData.description,
          location: eventData.location,
          startDate: eventData.startDate,
          endDate: eventData.endDate,
          time: time,
          isSender: isSender,
          userResponse: eventData.userResponse,
          goingCount: eventData.goingCount,
          maybeCount: eventData.maybeCount,
          notGoingCount: eventData.notGoingCount,
          onResponseTap: isSender
              ? null
              : () {
                  // Note: RSVP will be implemented via bloc when event RPC is ready
                  logi('Event RSVP requested', tag: 'ChatDetail');
                },
        );

      default:
        return ChatBubbleWidget(
          message: message.body ?? t.chatDetailMessageDeleted,
          time: time,
          isSender: isSender,
          isRead: true,
        );
    }
  }

  // ==========================================================================
  // POLL HELPERS
  // ==========================================================================

  /// Parses poll metadata and returns structured poll data
  _PollData _parsePollData(
    Map<String, dynamic>? metadata,
    String? currentUserId,
  ) {
    if (metadata == null) {
      return _PollData(
        question: '',
        options: [],
        totalVotes: 0,
        hasVoted: false,
      );
    }

    final question = metadata['question'] as String? ?? '';
    final optionsRaw = metadata['options'] as List<dynamic>? ?? [];
    final votesMap = metadata['votes'] as Map<String, dynamic>? ?? {};
    final votersMap = metadata['voters'] as Map<String, dynamic>? ?? {};

    // Check if current user has voted
    bool hasVoted = false;
    String? votedOptionId;
    if (currentUserId != null) {
      for (final entry in votersMap.entries) {
        final voters = entry.value as List<dynamic>? ?? [];
        if (voters.contains(currentUserId)) {
          hasVoted = true;
          votedOptionId = entry.key;
          break;
        }
      }
    }

    // Parse options with vote counts
    final options = optionsRaw.asMap().entries.map((entry) {
      final index = entry.key;
      final option = entry.value;
      final optionId = option is Map ? option['id'] as String? : '$index';
      final optionText = option is Map
          ? option['text'] as String? ?? ''
          : option.toString();
      final voteCount = votesMap[optionId] as int? ?? 0;
      final isSelected = optionId == votedOptionId;

      return PollOption(
        text: optionText,
        votes: voteCount,
        isSelected: isSelected,
      );
    }).toList();

    // Calculate total votes
    final totalVotes = votesMap.values.fold<int>(
      0,
      (sum, count) => sum + (count as int? ?? 0),
    );

    return _PollData(
      question: question,
      options: options,
      totalVotes: totalVotes,
      hasVoted: hasVoted,
    );
  }

  // ==========================================================================
  // EVENT HELPERS
  // ==========================================================================

  /// Parses event metadata and returns structured event data
  _EventData _parseEventData(
    Map<String, dynamic>? metadata,
    String? currentUserId,
  ) {
    if (metadata == null) {
      return _EventData(
        title: '',
        description: '',
        location: null,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(hours: 1)),
        userResponse: null,
        goingCount: 0,
        maybeCount: 0,
        notGoingCount: 0,
      );
    }

    final title = metadata['title'] as String? ?? '';
    final description =
        metadata['description'] as String? ??
        metadata['notes'] as String? ??
        '';
    final location = metadata['location'] as String?;

    // Parse dates (handle both 'starts_at/ends_at' and 'start_time/end_time')
    final startTimeStr =
        metadata['starts_at'] as String? ?? metadata['start_time'] as String?;
    final endTimeStr =
        metadata['ends_at'] as String? ?? metadata['end_time'] as String?;

    final startDate = startTimeStr != null
        ? DateTime.tryParse(startTimeStr) ?? DateTime.now()
        : DateTime.now();
    final endDate = endTimeStr != null
        ? DateTime.tryParse(endTimeStr) ??
              startDate.add(const Duration(hours: 1))
        : startDate.add(const Duration(hours: 1));

    // Parse RSVP counts
    final rsvps = metadata['rsvps'] as Map<String, dynamic>? ?? {};
    final goingCount = rsvps['going'] as int? ?? 0;
    final maybeCount =
        rsvps['interested'] as int? ?? rsvps['maybe'] as int? ?? 0;
    final notGoingCount = rsvps['not_going'] as int? ?? 0;

    // Check current user's response
    EventResponse? userResponse;
    if (currentUserId != null) {
      final userRsvpStatus =
          metadata['user_rsvp'] as String? ??
          _getUserRsvpFromList(metadata['rsvp_list'], currentUserId);
      if (userRsvpStatus != null) {
        switch (userRsvpStatus) {
          case 'going':
            userResponse = EventResponse.going;
            break;
          case 'interested':
          case 'maybe':
            userResponse = EventResponse.maybe;
            break;
          case 'not_going':
            userResponse = EventResponse.notGoing;
            break;
        }
      }
    }

    return _EventData(
      title: title,
      description: description,
      location: location,
      startDate: startDate,
      endDate: endDate,
      userResponse: userResponse,
      goingCount: goingCount,
      maybeCount: maybeCount,
      notGoingCount: notGoingCount,
    );
  }

  String? _getUserRsvpFromList(dynamic rsvpList, String userId) {
    if (rsvpList is! List) return null;
    for (final rsvp in rsvpList) {
      if (rsvp is Map && rsvp['user_id'] == userId) {
        return rsvp['status'] as String?;
      }
    }
    return null;
  }

  // ==========================================================================
  // DATE/TIME HELPERS
  // ==========================================================================

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
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}

// =============================================================================
// HELPER DATA CLASSES
// =============================================================================

/// Data class for parsed poll information
class _PollData {
  final String question;
  final List<PollOption> options;
  final int totalVotes;
  final bool hasVoted;

  const _PollData({
    required this.question,
    required this.options,
    required this.totalVotes,
    required this.hasVoted,
  });
}

/// Data class for parsed event information
class _EventData {
  final String title;
  final String description;
  final String? location;
  final DateTime startDate;
  final DateTime endDate;
  final EventResponse? userResponse;
  final int goingCount;
  final int maybeCount;
  final int notGoingCount;

  const _EventData({
    required this.title,
    required this.description,
    this.location,
    required this.startDate,
    required this.endDate,
    this.userResponse,
    required this.goingCount,
    required this.maybeCount,
    required this.notGoingCount,
  });
}

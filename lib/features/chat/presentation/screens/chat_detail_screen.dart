import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_event.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_state.dart';
import 'package:velora/features/chat/presentation/dialogs/create_event_dialog.dart';
import 'package:velora/features/chat/presentation/dialogs/create_poll_dialog.dart';
import 'package:velora/features/chat/presentation/widgets/chat_bubble_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_event_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:velora/features/chat/presentation/widgets/chat_media_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_message_item.dart';
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
        final question = result['question'] as String;
        final options = (result['options'] as List).cast<String>();
        final multipleChoice = result['multiple_choice'] as bool? ?? false;

        context.read<ChatMessageBloc>().add(
              SendPollMessageEvent(
                conversationId: conversationId,
                question: question,
                options: options,
                multipleChoice: multipleChoice,
              ),
            );
      }
    }

    Future<void> handleEventPressed() async {
      final result = await CreateEventDialog.show(context);
      if (result != null) {
        final title = result['title'] as String;
        final description = result['description'] as String?;
        final location = result['location'] as String?;
        final startDate = DateTime.parse(result['startDate']);
        final endDate = DateTime.parse(result['endDate']);

        context.read<ChatMessageBloc>().add(
              SendEventMessageEvent(
                conversationId: conversationId,
                title: title,
                description: description,
                location: location,
                startDate: startDate,
                endDate: endDate,
              ),
            );
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

    return BlocProvider(
      create: (context) => getIt<ChatMessageBloc>()
        ..add(InitializeChatEvent(
          conversationId: conversationId,
          peerUserId: peerUserId,
          limit: 50,
        )),
      child: _ChatDetailContent(
        conversationId: conversationId,
        chatName: chatName,
        chatSubtitle: chatSubtitle,
        profileImageUrl: profileImageUrl,
        isGroup: isGroup,
        peerUserId: peerUserId,
        scrollController: scrollController,
        messageController: messageController,
        focusNode: focusNode,
        fadeAnimation: fadeAnimation,
        backgroundColor: backgroundColor,
        handleGalleryPressed: handleGalleryPressed,
        handleCameraPressed: handleCameraPressed,
        handlePollPressed: handlePollPressed,
        handleEventPressed: handleEventPressed,
        handleDocumentPressed: handleDocumentPressed,
        handleAudioPressed: handleAudioPressed,
      ),
    );
  }
}

class _ChatDetailContent extends StatefulWidget {
  final String conversationId;
  final String chatName;
  final String chatSubtitle;
  final String profileImageUrl;
  final bool isGroup;
  final String? peerUserId;
  final ScrollController scrollController;
  final TextEditingController messageController;
  final FocusNode focusNode;
  final Animation<double> fadeAnimation;
  final Color? backgroundColor;
  final Future<void> Function() handleGalleryPressed;
  final Future<void> Function() handleCameraPressed;
  final Future<void> Function() handlePollPressed;
  final Future<void> Function() handleEventPressed;
  final Future<void> Function() handleDocumentPressed;
  final Future<void> Function() handleAudioPressed;

  const _ChatDetailContent({
    required this.conversationId,
    required this.chatName,
    required this.chatSubtitle,
    required this.profileImageUrl,
    required this.isGroup,
    this.peerUserId,
    required this.scrollController,
    required this.messageController,
    required this.focusNode,
    required this.fadeAnimation,
    this.backgroundColor,
    required this.handleGalleryPressed,
    required this.handleCameraPressed,
    required this.handlePollPressed,
    required this.handleEventPressed,
    required this.handleDocumentPressed,
    required this.handleAudioPressed,
  });

  @override
  State<_ChatDetailContent> createState() => _ChatDetailContentState();
}

class _ChatDetailContentState extends State<_ChatDetailContent> {
  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    if (widget.scrollController.position.pixels >=
        widget.scrollController.position.maxScrollExtent - 200) {
      final bloc = context.read<ChatMessageBloc>();
      if (bloc.state.hasMore && !bloc.state.isLoadingMore) {
        bloc.add(
          LoadMoreChatMessagesEvent(
            conversationId: widget.conversationId,
            limit: 50,
          ),
        );
      }
    }
  }

  /// Build subtitle widget showing typing indicator, online status, or lastSeen
  Widget _buildSubtitleWidget(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    // First check if peer is typing (priority)
    return BlocSelector<ChatMessageBloc, ChatMessageState, bool>(
      selector: (state) {
        // Check if peerUserId is in typingUsers
        if (widget.peerUserId == null) return false;
        return state.typingUsers.containsKey(widget.peerUserId);
      },
      builder: (context, isTyping) {
        if (isTyping) {
          // Show "typing..." with animation
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

        // Not typing - show online status or last seen
        return BlocSelector<UserPresenceBloc, UserPresenceState,
            ({bool isOnline, DateTime? lastSeen})>(
          selector: (state) => (
            isOnline: state.onlineUsers[widget.peerUserId] ?? false,
            lastSeen: state.lastSeen[widget.peerUserId],
          ),
          builder: (context, presence) {
            if (presence.isOnline) {
              return Text(
                t.chatDetailStatusOnline,
                style: textTheme.bodySmall?.copyWith(
                  color: Colors.green,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              );
            }

            // Show last seen or default subtitle
            final lastSeenText = presence.lastSeen != null
                ? _formatLastSeen(presence.lastSeen!, t)
                : widget.chatSubtitle;

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

  /// Format lastSeen time
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: widget.backgroundColor,
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
          label: t.chatDetailTitleLabel(widget.chatName),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(widget.profileImageUrl),
                backgroundColor: colorScheme.surfaceContainerHighest,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.chatName,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onSurface,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // Only rebuild presence text when presence state changes
                    if (!widget.isGroup && widget.peerUserId != null)
                      _buildSubtitleWidget(context, colorScheme, textTheme, t)
                    else
                      Text(
                        widget.chatSubtitle,
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

                  if (state.errorMessage != null && state.messages.isEmpty) {
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
                    opacity: widget.fadeAnimation,
                    child: Semantics(
                      label: t.chatDetailHistoryLabel,
                      hint: t.chatDetailHistoryHint,
                      child: ListView.builder(
                        controller: widget.scrollController,
                        reverse: true,
                        physics: const AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics(),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        itemCount:
                            messages.length + (state.isLoadingMore ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index == messages.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }

                          final reversedIndex = messages.length - 1 - index;
                          final message = messages[reversedIndex];
                          final isSender = message.senderId == myUserId;
                          final isDeleted = message.deletedAt != null;

                          final showDateSeparator = reversedIndex == 0 ||
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
                final conversationId =
                    state.conversationId ?? widget.conversationId;
                return ChatInputBar(
                  controller: widget.messageController,
                  focusNode: widget.focusNode,
                  onSendMessage: (message) {
                    if (message.trim().isNotEmpty) {
                      context.read<ChatMessageBloc>().add(
                            SendChatMessageEvent(
                              conversationId: conversationId,
                              content: message,
                            ),
                          );
                      widget.messageController.clear();
                    }
                  },
                  onTyping: (isTyping) {
                    if (conversationId.isNotEmpty) {
                      context.read<ChatMessageBloc>().add(
                            SendTypingEvent(
                              conversationId: conversationId,
                              isTyping: isTyping,
                            ),
                          );
                    }
                  },
                  onGalleryPressed: widget.handleGalleryPressed,
                  onCameraPressed: widget.handleCameraPressed,
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
                  onDocumentPressed: widget.handleDocumentPressed,
                  onAudioPressed: widget.handleAudioPressed,
                  onPollPressed: widget.handlePollPressed,
                  onEventPressed: widget.handleEventPressed,
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
  }

  Widget _buildMessageWidget({
    required BuildContext context,
    required dynamic message,
    required bool isSender,
    required AppLocalizations t,
  }) {
    final time = _formatTime(message.createdAt);

    // Get sender info for receiver messages
    final senderName = !isSender ? (message.senderName ?? 'User') : null;
    final senderAvatar = !isSender ? message.senderAvatarUrl : null;

    // Check online status for peer user (only in 1-on-1 chats)
    final isOnline = !widget.isGroup && !isSender && widget.peerUserId != null
        ? context
                .read<UserPresenceBloc>()
                .state
                .onlineUsers[widget.peerUserId] ??
            false
        : false;

    Widget messageWidget;
    switch (message.kind) {
      case 'text':
        messageWidget = ChatBubbleWidget(
          message: message.body ?? '',
          time: time,
          isSender: isSender,
          isRead: true,
        );
        break;

      case 'media':
      case 'image':
      case 'video':
        final mediaUrl = message.mediaUrl ?? '';
        messageWidget = ChatMediaWidget(
          mediaUrls: mediaUrl.isNotEmpty ? [mediaUrl] : [],
          caption: message.body,
          time: time,
          isSender: isSender,
          isRead: true,
          isVideo: message.kind == 'video',
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

        final options = poll.options
            .map(
              (o) => PollOption(
                id: o.id,
                text: o.text,
                votes: o.voteCount,
                isSelected: o.isSelected,
              ),
            )
            .toList();

        final totalVotes = options.fold<int>(0, (p, c) => p + c.votes);
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
          location: event.location,
          startDate: event.startDate,
          endDate: event.endDate,
          time: time,
          isSender: isSender,
          userResponse: _mapEventResponse(event.userResponse),
          goingCount: event.goingCount,
          maybeCount: event.maybeCount,
          notGoingCount: event.notGoingCount,
          onResponseTap: isSender
              ? null
              : () {
                  _showEventRsvpDialog(
                      context, event.messageId, event.userResponse);
                },
        );
        break;
        break;

      default:
        messageWidget = ChatBubbleWidget(
          message: message.body ?? t.chatDetailMessageDeleted,
          time: time,
          isSender: isSender,
          isRead: true,
        );
        break;
    }

    // Wrap with ChatMessageItem to show avatar + username
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
      BuildContext context, String eventMessageId, String? currentResponse) {
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

/// Animated typing dots widget
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

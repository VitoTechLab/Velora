import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
import 'package:velora/features/chat/presentation/widgets/chat_widgets.dart';
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

    final backgroundColor = Color.lerp(
      colorScheme.surface,
      colorScheme.surfaceContainerHighest,
      theme.brightness == Brightness.dark ? 0.08 : 0.15,
    );

    return BlocProvider(
      create: (context) => getIt<ChatMessageBloc>()
        ..add(
          InitializeChatEvent(
            conversationId: conversationId,
            peerUserId: peerUserId,
            limit: 50,
          ),
        ),
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

  // Get current user ID (for voice messages)
  String? _getCurrentUserId() {
    return Supabase.instance.client.auth.currentUser?.id;
  }

  // Handler - Voice Recording
  Future<void> _handleVoicePressed() async {
    final t = AppLocalizations.of(context)!;

    // Get userId from Supabase auth
    final userId = _getCurrentUserId();
    if (userId == null) {
      AppMessenger.showToast(
        message: t.chatDetailVoiceError,
        icon: Icons.error_outline,
        isError: true,
      );
      return;
    }

    // Show voice recorder bottom sheet
    final recordedFilePath = await VoiceRecorderBottomSheet.show(context);

    if (recordedFilePath == null) return;

    final file = File(recordedFilePath);
    if (!await file.exists()) return;

    // Dispatch event to Bloc to handle upload and send
    if (mounted) {
      context.read<ChatMessageBloc>().add(
        ChatMessageEvent.uploadAndSendAudio(
          conversationId: widget.conversationId,
          filePath: recordedFilePath,
          userId: userId,
          isVoiceMessage: true,
        ),
      );
    }

    // Clean up temp file after a delay (let upload finish first)
    Future.delayed(const Duration(seconds: 2), () async {
      try {
        await file.delete();
      } catch (_) {}
    });
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

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;

    return BlocListener<ChatMessageBloc, ChatMessageState>(
      listenWhen: (prev, curr) =>
          prev.sendError != curr.sendError ||
          prev.editError != curr.editError ||
          prev.deleteError != curr.deleteError ||
          prev.uploadError != curr.uploadError ||
          prev.uploadSuccessMessage != curr.uploadSuccessMessage,
      listener: (context, state) {
        // Show error snackbar
        if (state.sendError != null) {
          AppMessenger.showToast(
            message: state.sendError!,
            icon: Icons.error_outline,
            isError: true,
          );
        } else if (state.editError != null) {
          AppMessenger.showToast(
            message: state.editError!,
            icon: Icons.error_outline,
            isError: true,
          );
        } else if (state.deleteError != null) {
          AppMessenger.showToast(
            message: state.deleteError!,
            icon: Icons.error_outline,
            isError: true,
          );
        } else if (state.uploadError != null) {
          AppMessenger.showToast(
            message: state.uploadError!,
            icon: Icons.error_outline,
            isError: true,
          );
        }
        // Show success message for uploads only (not for regular messages)
        else if (state.uploadSuccessMessage != null) {
          AppMessenger.showToast(
            message: state.uploadSuccessMessage!,
            icon: Icons.cloud_done_outlined,
          );
        }
        // Note: Removed state.message toast to avoid showing "Message sent" on every message
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: widget.backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(72),
          child: BlocBuilder<UserPresenceBloc, UserPresenceState>(
            builder: (context, presenceState) {
              final isOnline = !widget.isGroup && widget.peerUserId != null
                  ? presenceState.onlineUsers[widget.peerUserId] ?? false
                  : false;

              return Semantics(
                header: true,
                label: t.chatDetailTitleLabel(widget.chatName),
                child: ChatRoomHeader(
                  title: widget.chatName,
                  subtitle: widget.chatSubtitle,
                  subtitleWidget: !widget.isGroup && widget.peerUserId != null
                      ? TypingIndicatorSubtitle(
                          peerUserId: widget.peerUserId!,
                          chatSubtitle: widget.chatSubtitle,
                        )
                      : null,
                  avatarUrl: widget.profileImageUrl,
                  isGroup: widget.isGroup,
                  isOnline: isOnline,
                  onBack: () => Navigator.pop(context),
                  optionsTooltip: t.chatDetailMenuTooltip,
                  onInfo: () {},
                ),
              );
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerLowest.withValues(alpha: 0.58),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ChatMessageList(
                    scrollController: widget.scrollController,
                    fadeAnimation: widget.fadeAnimation,
                    isGroup: widget.isGroup,
                    peerUserId: widget.peerUserId,
                    peerDisplayName: widget.chatName,
                    peerAvatarUrl: widget.profileImageUrl,
                  ),
                ),
                BlocBuilder<ChatMessageBloc, ChatMessageState>(
                  builder: (context, state) {
                    if (!state.isUploadingMedia) return const SizedBox.shrink();

                    return const ChatUploadProgress(label: 'Uploading...');
                  },
                ),
                BlocBuilder<ChatMessageBloc, ChatMessageState>(
                  builder: (context, state) {
                    final conversationId =
                        state.conversationId ?? widget.conversationId;
                    return ChatInputBar(
                      conversationId: conversationId,
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
                      onVoicePressed: _handleVoicePressed,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

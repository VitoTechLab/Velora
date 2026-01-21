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
import 'package:velora/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:velora/features/chat/presentation/widgets/chat_message_list.dart';
import 'package:velora/features/chat/presentation/widgets/typing_indicator_subtitle.dart';
import 'package:velora/features/chat/presentation/widgets/voice_recorder_bottom_sheet.dart';
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
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
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  colorScheme.surfaceContainerHighest,
                  colorScheme.surfaceContainerHighest.withValues(alpha: 0.8),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
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
                // Modern avatar with gradient border for online status
                BlocBuilder<UserPresenceBloc, UserPresenceState>(
                  builder: (context, presenceState) {
                    final isOnline = !widget.isGroup &&
                            widget.peerUserId != null
                        ? presenceState.onlineUsers[widget.peerUserId] ?? false
                        : false;

                    return Container(
                      decoration: isOnline
                          ? BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  colorScheme.primary,
                                  colorScheme.tertiary,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: colorScheme.primary
                                      .withValues(alpha: 0.3),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                ),
                              ],
                            )
                          : null,
                      padding: isOnline ? const EdgeInsets.all(2) : null,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(widget.profileImageUrl),
                        backgroundColor: colorScheme.surfaceContainerHighest,
                      ),
                    );
                  },
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
                        TypingIndicatorSubtitle(
                          peerUserId: widget.peerUserId!,
                          chatSubtitle: widget.chatSubtitle,
                        )
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
                child: ChatMessageList(
                  scrollController: widget.scrollController,
                  fadeAnimation: widget.fadeAnimation,
                  isGroup: widget.isGroup,
                  peerUserId: widget.peerUserId,
                  peerDisplayName: widget.chatName,
                  peerAvatarUrl: widget.profileImageUrl,
                ),
              ),
              // Upload progress indicator
              BlocBuilder<ChatMessageBloc, ChatMessageState>(
                builder: (context, state) {
                  if (!state.isUploadingMedia) return const SizedBox.shrink();

                  return TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 300),
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
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            colorScheme.surfaceContainerHighest,
                            colorScheme.surfaceContainer,
                          ],
                        ),
                        border: Border(
                          top: BorderSide(
                            color: colorScheme.primary.withValues(alpha: 0.2),
                            width: 1,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.shadow.withValues(alpha: 0.05),
                            blurRadius: 8,
                            offset: const Offset(0, -2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [
                                colorScheme.primary,
                                colorScheme.secondary,
                              ],
                            ).createShader(bounds),
                            child: const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Uploading...',
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurface,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.cloud_upload_outlined,
                            size: 18,
                            color: colorScheme.primary.withValues(alpha: 0.7),
                          ),
                        ],
                      ),
                    ),
                  );
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
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
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
import 'package:velora/features/chat/presentation/screens/chat_document_picker_screen.dart';
import 'package:velora/features/chat/presentation/screens/chat_gallery_picker_screen.dart';
import 'package:velora/features/chat/presentation/widgets/chat_bubble_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_audio_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_event_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:velora/features/chat/presentation/widgets/chat_media_widget.dart';
import 'package:velora/features/chat/presentation/widgets/chat_message_item.dart';
import 'package:velora/features/chat/presentation/widgets/chat_poll_widget.dart';
import 'package:velora/features/chat/presentation/widgets/date_separator_widget.dart';
import 'package:velora/features/chat/presentation/widgets/voice_recorder_bottom_sheet.dart';
import 'package:velora/features/media/data/datasources/local/media_local_datasource.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';
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
    final mediaRepository = useMemoized(() => getIt<MediaRepository>());

    // Get current user ID
    String? getCurrentUserId() {
      return Supabase.instance.client.auth.currentUser?.id;
    }

    // Handler functions - Gallery Picker
    Future<void> handleGalleryPressed() async {
      final userId = getCurrentUserId();
      if (userId == null) {
        AppMessenger.showToast(
          message: t.chatDetailPickMediaError,
          icon: Icons.error_outline,
          isError: true,
        );
        return;
      }

      // Show gallery picker screen with BlocProvider
      final selectedFiles = await Navigator.of(context).push<List<File>>(
        MaterialPageRoute(
          builder: (ctx) => BlocProvider(
            create: (_) => getIt<MediaGalleryBloc>(),
            child: const ChatGalleryPickerScreen(
              maxImages: 10,
              allowVideo: true,
            ),
          ),
        ),
      );

      if (selectedFiles == null || selectedFiles.isEmpty) return;

      // Show uploading indicator
      AppMessenger.showToast(
        message: t.chatDetailImagesSelected(selectedFiles.length),
        icon: Icons.cloud_upload_outlined,
      );

      // Upload images to Cloudinary
      final result = await mediaRepository.uploadImagesForChat(
        files: selectedFiles,
        userId: userId,
        conversationId: conversationId,
      );

      result.fold(
        (failure) {
          AppMessenger.showToast(
            message: failure.message,
            icon: Icons.error_outline,
            isError: true,
          );
        },
        (assets) {
          // Send media message with uploaded URLs
          if (context.mounted) {
            final chatBloc = context.read<ChatMessageBloc>();
            for (final asset in assets) {
              chatBloc.add(
                SendMediaMessageEvent(
                  conversationId: conversationId,
                  mediaUrl: asset.secureUrl,
                  mediaType: 'image',
                  mimeType: 'image/jpeg',
                ),
              );
            }
          }
        },
      );
    }

    // Handler - Camera (uses default Android camera)
    Future<void> handleCameraPressed() async {
      final userId = getCurrentUserId();
      if (userId == null) {
        AppMessenger.showToast(
          message: t.chatDetailPickMediaError,
          icon: Icons.error_outline,
          isError: true,
        );
        return;
      }

      try {
        // Show option dialog for photo or video
        final choice = await showDialog<String>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(t.chatDetailCameraModeTitle),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.camera_alt_outlined),
                  title: Text(t.chatDetailCameraTakePhoto),
                  onTap: () => Navigator.pop(ctx, 'photo'),
                ),
                ListTile(
                  leading: const Icon(Icons.videocam_outlined),
                  title: Text(t.chatDetailCameraRecordVideo),
                  onTap: () => Navigator.pop(ctx, 'video'),
                ),
              ],
            ),
          ),
        );

        if (choice == null) return;

        if (choice == 'photo') {
          final pickedFile = await imagePicker.pickImage(
            source: ImageSource.camera,
            maxWidth: 1920,
            maxHeight: 1920,
            imageQuality: 85,
            preferredCameraDevice: CameraDevice.rear,
          );

          if (pickedFile == null) return;

          AppMessenger.showToast(
            message: t.chatDetailPhotoCaptured,
            icon: Icons.cloud_upload_outlined,
          );

          // Upload to Cloudinary
          final file = File(pickedFile.path);
          final result = await mediaRepository.uploadImagesForChat(
            files: [file],
            userId: userId,
            conversationId: conversationId,
          );

          result.fold(
            (failure) {
              AppMessenger.showToast(
                message: failure.message,
                icon: Icons.error_outline,
                isError: true,
              );
            },
            (assets) {
              if (assets.isNotEmpty && context.mounted) {
                context.read<ChatMessageBloc>().add(
                      SendMediaMessageEvent(
                        conversationId: conversationId,
                        mediaUrl: assets.first.secureUrl,
                        mediaType: 'image',
                        mimeType: 'image/jpeg',
                      ),
                    );
              }
            },
          );
        } else if (choice == 'video') {
          final pickedFile = await imagePicker.pickVideo(
            source: ImageSource.camera,
            maxDuration: const Duration(minutes: 5),
            preferredCameraDevice: CameraDevice.rear,
          );

          if (pickedFile == null) return;

          AppMessenger.showToast(
            message: t.chatDetailVideoRecorded,
            icon: Icons.cloud_upload_outlined,
          );

          // Upload video to Cloudinary
          final file = File(pickedFile.path);
          final result = await mediaRepository.uploadVideoForChat(
            file: file,
            userId: userId,
            conversationId: conversationId,
          );

          result.fold(
            (failure) {
              AppMessenger.showToast(
                message: failure.message,
                icon: Icons.error_outline,
                isError: true,
              );
            },
            (asset) {
              if (context.mounted) {
                context.read<ChatMessageBloc>().add(
                      SendMediaMessageEvent(
                        conversationId: conversationId,
                        mediaUrl: asset.secureUrl,
                        mediaType: 'video',
                        mimeType: 'video/mp4',
                      ),
                    );
              }
            },
          );
        }
      } catch (e) {
        AppMessenger.showToast(
          message: t.chatDetailPickMediaError,
          icon: Icons.error_outline,
          isError: true,
        );
      }
    }

    Future<void> handlePollPressed() async {
      final chatBloc = context.read<ChatMessageBloc>();

      final result = await CreatePollDialog.show(context);

      if (result == null) return;

      final question = result['question'] as String;
      final options = (result['options'] as List).cast<String>();
      final multipleChoice = result['multiple_choice'] as bool? ?? false;
      final maxUserVotes = result['max_user_votes'] as int? ?? 1;

      chatBloc.add(
        SendPollMessageEvent(
          conversationId: conversationId,
          question: question,
          options: options,
          multipleChoice: multipleChoice,
          maxUserVotes: maxUserVotes,
        ),
      );
    }

    Future<void> handleEventPressed() async {
      final chatBloc = context.read<ChatMessageBloc>();

      final result = await CreateEventDialog.show(context);

      if (result == null) return;

      final title = result['title'] as String;
      final description = result['description'] as String?;
      final locationName = result['location_name'] as String?;
      final address = result['address'] as String?;
      final isOnline = result['is_online'] as bool? ?? false;
      final meetingUrl = result['meeting_url'] as String?;
      final startDate = DateTime.parse(result['startDate']);
      final endDate = DateTime.parse(result['endDate']);

      chatBloc.add(
        SendEventMessageEvent(
          conversationId: conversationId,
          title: title,
          description: description,
          locationName: locationName,
          address: address,
          isOnline: isOnline,
          meetingUrl: meetingUrl,
          startDate: startDate,
          endDate: endDate,
        ),
      );
    }

    // Helper to get mime type from URL
    String getMimeTypeFromUrl(String url) {
      final ext = url.split('.').last.toLowerCase();
      switch (ext) {
        case 'pdf':
          return 'application/pdf';
        case 'doc':
        case 'docx':
          return 'application/msword';
        case 'xls':
        case 'xlsx':
          return 'application/vnd.ms-excel';
        case 'ppt':
        case 'pptx':
          return 'application/vnd.ms-powerpoint';
        case 'txt':
          return 'text/plain';
        default:
          return 'application/octet-stream';
      }
    }

    // Handler - Document Picker
    Future<void> handleDocumentPressed() async {
      final userId = getCurrentUserId();
      if (userId == null) {
        AppMessenger.showToast(
          message: t.chatDetailDocumentError,
          icon: Icons.error_outline,
          isError: true,
        );
        return;
      }

      // Show document picker screen
      final selectedFiles = await ChatDocumentPickerScreen.show(
        context,
        maxDocuments: 10,
      );

      if (selectedFiles == null || selectedFiles.isEmpty) return;

      AppMessenger.showToast(
        message: t.chatDetailDocumentsSelected(selectedFiles.length),
        icon: Icons.cloud_upload_outlined,
      );

      // Upload documents to Cloudinary
      final result = await mediaRepository.uploadDocumentsForChat(
        files: selectedFiles,
        userId: userId,
        conversationId: conversationId,
      );

      result.fold(
        (failure) {
          AppMessenger.showToast(
            message: failure.message,
            icon: Icons.error_outline,
            isError: true,
          );
        },
        (assets) {
          if (context.mounted) {
            final chatBloc = context.read<ChatMessageBloc>();
            for (final asset in assets) {
              chatBloc.add(
                SendMediaMessageEvent(
                  conversationId: conversationId,
                  mediaUrl: asset.secureUrl,
                  mediaType: 'document',
                  mimeType: getMimeTypeFromUrl(asset.secureUrl),
                ),
              );
            }
          }
        },
      );
    }

    Future<void> handleAudioPressed() async {
      final userId = getCurrentUserId();
      if (userId == null) {
        AppMessenger.showToast(
          message: t.chatDetailAudioError,
          icon: Icons.error_outline,
          isError: true,
        );
        return;
      }

      try {
        final localDataSource = getIt<MediaLocalDataSource>();
        final file = await localDataSource.pickSingleAudioFile();

        if (file == null) return;

        AppMessenger.showToast(
          message: t.chatDetailAudioSelected,
          icon: Icons.cloud_upload_outlined,
        );

        // Upload audio to Cloudinary
        final result = await mediaRepository.uploadAudioForChat(
          file: file,
          userId: userId,
          conversationId: conversationId,
        );

        result.fold(
          (failure) {
            AppMessenger.showToast(
              message: failure.message,
              icon: Icons.error_outline,
              isError: true,
            );
          },
          (asset) {
            if (context.mounted) {
              context.read<ChatMessageBloc>().add(
                    SendMediaMessageEvent(
                      conversationId: conversationId,
                      mediaUrl: asset.secureUrl,
                      mediaType: 'audio',
                      mimeType: getMimeTypeFromUrl(asset.secureUrl),
                    ),
                  );
            }
          },
        );
      } catch (e) {
        AppMessenger.showToast(
          message: t.chatDetailAudioError,
          icon: Icons.error_outline,
          isError: true,
        );
      }
    }

    // Handler - Voice Recording
    Future<void> handleVoicePressed() async {
      final userId = getCurrentUserId();
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

      AppMessenger.showToast(
        message: t.chatDetailVoiceRecorded,
        icon: Icons.cloud_upload_outlined,
      );

      // Upload voice message to Cloudinary
      final result = await mediaRepository.uploadAudioForChat(
        file: file,
        userId: userId,
        conversationId: conversationId,
      );

      result.fold(
        (failure) {
          AppMessenger.showToast(
            message: failure.message,
            icon: Icons.error_outline,
            isError: true,
          );
        },
        (asset) {
          if (context.mounted) {
            context.read<ChatMessageBloc>().add(
                  SendMediaMessageEvent(
                    conversationId: conversationId,
                    mediaUrl: asset.secureUrl,
                    mediaType: 'audio',
                    mimeType: 'audio/m4a',
                  ),
                );
          }
        },
      );

      // Clean up temp file
      try {
        await file.delete();
      } catch (_) {}
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
        handleVoicePressed: handleVoicePressed,
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
  final Future<void> Function() handleVoicePressed;

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
    required this.handleVoicePressed,
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

    return BlocListener<ChatMessageBloc, ChatMessageState>(
      listenWhen: (prev, curr) =>
          prev.sendError != curr.sendError ||
          prev.editError != curr.editError ||
          prev.deleteError != curr.deleteError ||
          prev.message != curr.message,
      listener: (context, state) {
        // Show error snackbar
        if (state.sendError != null) {
          AppMessenger.showToast(
            message: state.sendError!,
            icon: Icons.error_outline,
          );
        } else if (state.editError != null) {
          AppMessenger.showToast(
            message: state.editError!,
            icon: Icons.error_outline,
          );
        } else if (state.deleteError != null) {
          AppMessenger.showToast(
            message: state.deleteError!,
            icon: Icons.error_outline,
          );
        }
        // Show success message
        else if (state.message != null) {
          AppMessenger.showToast(
            message: state.message!,
            icon: Icons.check_circle_outline,
          );
        }
      },
      child: Scaffold(
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
                    onVoicePressed: widget.handleVoicePressed,
                  );
                },
              ),
            ],
          ),
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
        final attachment = message.attachments.firstOrNull;
        final mediaUrl = attachment?.effectiveUrl ?? '';
        messageWidget = ChatMediaWidget(
          mediaUrls: mediaUrl.isNotEmpty ? [mediaUrl] : [],
          caption: message.body,
          time: time,
          isSender: isSender,
          isRead: true,
          isVideo: message.kind == 'video',
        );
        break;

      case 'audio':
        final attachment = message.attachments.firstOrNull;
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
            isRead: true,
            durationSeconds: attachment?.durationSeconds,
            isVoiceMessage: attachment?.isVoiceMessage ?? false,
          );
        }
        break;

      case 'file':
        final attachment = message.attachments.firstOrNull;
        final fileUrl = attachment?.effectiveUrl ?? '';
        final fileName = attachment?.filename ?? 'Document';
        final fileSize = attachment?.sizeBytes;
        messageWidget = _buildFileWidget(
          context: context,
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
                      context, event.messageId, event.userResponse);
                },
        );
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

  /// Build file/document message widget
  Widget _buildFileWidget({
    required BuildContext context,
    required String fileUrl,
    required String fileName,
    int? fileSize,
    required String time,
    required bool isSender,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    final bubbleColor =
        isSender ? colorScheme.primary : colorScheme.surfaceContainerHighest;
    final contentColor =
        isSender ? colorScheme.onPrimary : colorScheme.onSurface;
    final secondaryContentColor = isSender
        ? colorScheme.onPrimary.withValues(alpha: 0.7)
        : colorScheme.onSurfaceVariant;

    // Get file extension for icon color
    final ext = fileName.split('.').last.toLowerCase();
    final iconColor = _getFileIconColor(ext);

    return Container(
      constraints: const BoxConstraints(maxWidth: 280),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(16),
          topRight: const Radius.circular(16),
          bottomLeft: isSender ? const Radius.circular(16) : Radius.zero,
          bottomRight: isSender ? Radius.zero : const Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // File info row
          Row(
            children: [
              // File icon
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    ext.toUpperCase(),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: iconColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // File name and size
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fileName,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: contentColor,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (fileSize != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        _formatFileSize(fileSize),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: secondaryContentColor,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              // Download button
              IconButton(
                onPressed: () {
                  // TODO: Implement file download/open
                  AppMessenger.showToast(
                    message: t.chatDetailFileDownloading,
                    icon: Icons.download_outlined,
                  );
                },
                icon: Icon(
                  Icons.download_outlined,
                  color: contentColor,
                ),
                iconSize: 24,
              ),
            ],
          ),
          // Time
          const SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Text(
                time,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: secondaryContentColor,
                ),
              ),
              if (isSender) ...[
                const SizedBox(width: 4),
                Icon(
                  Icons.done_all,
                  size: 14,
                  color: secondaryContentColor,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Color _getFileIconColor(String ext) {
    switch (ext) {
      case 'pdf':
        return Colors.red;
      case 'doc':
      case 'docx':
        return Colors.blue;
      case 'xls':
      case 'xlsx':
        return Colors.green;
      case 'ppt':
      case 'pptx':
        return Colors.orange;
      case 'txt':
        return Colors.grey;
      case 'zip':
      case 'rar':
        return Colors.amber;
      default:
        return Colors.blueGrey;
    }
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
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

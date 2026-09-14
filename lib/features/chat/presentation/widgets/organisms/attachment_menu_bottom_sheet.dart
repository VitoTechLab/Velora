import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/dialogs/create_event_dialog.dart';
import 'package:velora/features/chat/presentation/dialogs/create_poll_dialog.dart';
import 'package:velora/features/media/domain/usecases/pick_single_audio_file_usecase.dart';
import 'package:velora/features/media/presentation/screens/media_screens.dart';
import 'package:velora/features/navigation/models/chat_document_picker_args.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class AttachmentActions {
  static final ImagePicker _imagePicker = ImagePicker();

  static String? _getCurrentUserId() {
    return Supabase.instance.client.auth.currentUser?.id;
  }

  static Future<void> onGalleryTap(
    BuildContext context,
    String conversationId,
  ) async {
    final t = AppLocalizations.of(context)!;

    final userId = _getCurrentUserId();
    if (userId == null) {
      AppMessenger.showToast(
        message: t.chatDetailPickMediaError,
        icon: Icons.error_outline,
        isError: true,
      );
      return;
    }

    final selectedFiles = await MediaGalleryPickerScreen.show(
      context,
      maxImages: 10,
      allowVideo: true,
    );

    if (selectedFiles == null || selectedFiles.isEmpty) return;

    if (context.mounted) {
      final result = await MediaPreviewScreen.show(
        context,
        files: selectedFiles,
      );

      if (result != null && context.mounted) {
        context.read<ChatMessageBloc>().add(
          ChatMessageEvent.uploadAndSendImages(
            conversationId: conversationId,
            filePaths: result.files.map((f) => f.path).toList(),
            userId: userId,
            caption: result.caption,
          ),
        );
      }
    }
  }

  static Future<void> onCameraTap(
    BuildContext context,
    String conversationId,
  ) async {
    final t = AppLocalizations.of(context)!;

    final userId = _getCurrentUserId();
    if (userId == null) {
      AppMessenger.showToast(
        message: t.chatDetailPickMediaError,
        icon: Icons.error_outline,
        isError: true,
      );
      return;
    }

    try {
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
        final pickedFile = await _imagePicker.pickImage(
          source: ImageSource.camera,
          maxWidth: 1920,
          maxHeight: 1920,
          imageQuality: 85,
          preferredCameraDevice: CameraDevice.rear,
        );

        if (pickedFile == null) return;

        if (context.mounted) {
          final result = await MediaPreviewScreen.show(
            context,
            files: [File(pickedFile.path)],
            isFromCamera: true,
          );

          if (result != null && context.mounted) {
            context.read<ChatMessageBloc>().add(
              ChatMessageEvent.uploadAndSendImages(
                conversationId: conversationId,
                filePaths: result.files.map((f) => f.path).toList(),
                userId: userId,
                caption: result.caption,
              ),
            );
          }
        }
      } else if (choice == 'video') {
        final pickedFile = await _imagePicker.pickVideo(
          source: ImageSource.camera,
          maxDuration: const Duration(minutes: 5),
          preferredCameraDevice: CameraDevice.rear,
        );

        if (pickedFile == null) return;

        if (context.mounted) {
          final result = await MediaPreviewScreen.show(
            context,
            files: [File(pickedFile.path)],
            isFromCamera: true,
          );

          if (result != null && context.mounted) {
            context.read<ChatMessageBloc>().add(
              ChatMessageEvent.uploadAndSendVideo(
                conversationId: conversationId,
                filePath: result.files.first.path,
                userId: userId,
                caption: result.caption,
              ),
            );
          }
        }
      }
    } catch (e) {
      AppMessenger.showToast(
        message: t.chatDetailPickMediaError,
        icon: Icons.error_outline,
        isError: true,
      );
    }
  }

  static Future<void> onPollTap(
    BuildContext context,
    String conversationId,
  ) async {
    try {
      final chatBloc = context.read<ChatMessageBloc>();

      final result = await CreatePollDialog.show(context);

      if (result == null) return;

      final question = result['question'] as String;
      final options = (result['options'] as List).cast<String>();
      final multipleChoice = result['multiple_choice'] as bool? ?? false;
      final maxUserVotes = result['max_user_votes'] as int? ?? 1;

      chatBloc.add(
        ChatMessageEvent.sendPollMessage(
          conversationId: conversationId,
          question: question,
          options: options,
          multipleChoice: multipleChoice,
          maxUserVotes: maxUserVotes,
        ),
      );
    } catch (e) {
      final t = AppLocalizations.of(context)!;
      AppMessenger.showToast(
        message: t.commonError,
        icon: Icons.error_outline,
        isError: true,
      );
    }
  }

  static Future<void> onEventTap(
    BuildContext context,
    String conversationId,
  ) async {
    try {
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
        ChatMessageEvent.sendEventMessage(
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
    } catch (e) {
      final t = AppLocalizations.of(context)!;
      AppMessenger.showToast(
        message: t.commonError,
        icon: Icons.error_outline,
        isError: true,
      );
    }
  }

  static Future<void> onDocumentTap(
    BuildContext context,
    String conversationId,
  ) async {
    final t = AppLocalizations.of(context)!;

    final userId = _getCurrentUserId();
    if (userId == null) {
      AppMessenger.showToast(
        message: t.chatDetailDocumentError,
        icon: Icons.error_outline,
        isError: true,
      );
      return;
    }

    final selectedFiles = await context.pushNamed<List<File>>(
      AppRouteName.chatDocumentPicker,
      extra: ChatDocumentPickerArgs(maxDocuments: 10),
    );

    if (selectedFiles == null || selectedFiles.isEmpty) return;

    if (context.mounted) {
      context.read<ChatMessageBloc>().add(
        ChatMessageEvent.uploadAndSendDocuments(
          conversationId: conversationId,
          filePaths: selectedFiles.map((f) => f.path).toList(),
          userId: userId,
        ),
      );
    }
  }

  static Future<void> onAudioTap(
    BuildContext context,
    String conversationId,
  ) async {
    final t = AppLocalizations.of(context)!;

    final userId = _getCurrentUserId();
    if (userId == null) {
      AppMessenger.showToast(
        message: t.chatDetailAudioError,
        icon: Icons.error_outline,
        isError: true,
      );
      return;
    }

    try {
      final result = await getIt<PickSingleAudioFileUseCase>()();
      final file = result.fold((_) => null, (pickedFile) => pickedFile);

      if (file == null) return;

      if (context.mounted) {
        context.read<ChatMessageBloc>().add(
          ChatMessageEvent.uploadAndSendAudio(
            conversationId: conversationId,
            filePath: file.path,
            userId: userId,
            isVoiceMessage: false,
          ),
        );
      }
    } catch (e) {
      AppMessenger.showToast(
        message: t.chatDetailAudioError,
        icon: Icons.error_outline,
        isError: true,
      );
    }
  }

  static void onLocationTap(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    AppMessenger.showToast(
      message: t.chatDetailLocationSelected,
      icon: Icons.location_on_outlined,
    );
  }

  static void onContactTap(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    AppMessenger.showToast(
      message: t.chatDetailContactSelected,
      icon: Icons.person_outline,
    );
  }

  static void onAiImagesTap(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    AppMessenger.showToast(
      message: t.chatDetailAiImagesSelected,
      icon: Icons.auto_awesome_outlined,
    );
  }
}

class AttachmentMenuBottomSheet extends StatefulWidget {
  final String conversationId;

  const AttachmentMenuBottomSheet({super.key, required this.conversationId});

  static Future<void> show(
    BuildContext context, {
    required String conversationId,
  }) {
    // Ensure ChatMessageBloc from the caller context is available
    // inside the bottom sheet subtree.
    final chatBloc = context.read<ChatMessageBloc>();

    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: false,
      isDismissible: true,
      enableDrag: true,
      elevation: 0,
      useRootNavigator: false,
      barrierColor: Colors.black.withValues(alpha: 0.5),
      builder: (bottomSheetContext) => BlocProvider.value(
        value: chatBloc,
        child: AttachmentMenuBottomSheet(conversationId: conversationId),
      ),
    );
  }

  @override
  State<AttachmentMenuBottomSheet> createState() =>
      _AttachmentMenuBottomSheetState();
}

class _AttachmentMenuBottomSheetState extends State<AttachmentMenuBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
          ),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () => Navigator.pop(context),
      behavior: HitTestBehavior.opaque,
      child: GestureDetector(
        onTap: () {}, // Prevent tap from propagating to parent
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: Container(
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                border: Border.all(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.28),
                ),
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 12),
                    // Drag handle
                    Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.4,
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                t.chatInputAttachLabel,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: colorScheme.onSurface,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _AttachmentMenuItem(
                                icon: Icons.image_outlined,
                                label: t.chatAttachmentGallery,
                                gradientColors: [
                                  colorScheme.primary,
                                  colorScheme.primary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onGalleryTap(
                                    context,
                                    widget.conversationId,
                                  );
                                },
                                delay: 0,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.camera_alt_outlined,
                                label: t.chatAttachmentCamera,
                                gradientColors: [
                                  colorScheme.secondary,
                                  colorScheme.secondary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onCameraTap(
                                    context,
                                    widget.conversationId,
                                  );
                                },
                                delay: 50,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.location_on_outlined,
                                label: t.chatAttachmentLocation,
                                gradientColors: [
                                  colorScheme.tertiary,
                                  colorScheme.tertiary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onLocationTap(context);
                                },
                                delay: 100,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.person_outline,
                                label: t.chatAttachmentContact,
                                gradientColors: [
                                  colorScheme.primary.withValues(alpha: 0.8),
                                  colorScheme.primary.withValues(alpha: 0.6),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onContactTap(context);
                                },
                                delay: 150,
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _AttachmentMenuItem(
                                icon: Icons.description_outlined,
                                label: t.chatAttachmentDocument,
                                gradientColors: [
                                  colorScheme.primary,
                                  colorScheme.primary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onDocumentTap(
                                    context,
                                    widget.conversationId,
                                  );
                                },
                                delay: 200,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.headset_outlined,
                                label: t.chatAttachmentAudio,
                                gradientColors: [
                                  colorScheme.tertiary,
                                  colorScheme.tertiary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onAudioTap(
                                    context,
                                    widget.conversationId,
                                  );
                                },
                                delay: 250,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.poll_outlined,
                                label: t.chatAttachmentPoll,
                                gradientColors: [
                                  colorScheme.secondary,
                                  colorScheme.secondary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onPollTap(
                                    context,
                                    widget.conversationId,
                                  );
                                },
                                delay: 300,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.event_outlined,
                                label: t.chatAttachmentEvent,
                                gradientColors: [
                                  colorScheme.secondary,
                                  colorScheme.secondary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onEventTap(
                                    context,
                                    widget.conversationId,
                                  );
                                },
                                delay: 350,
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 12),
                              _AttachmentMenuItem(
                                icon: Icons.auto_awesome_outlined,
                                label: t.chatAttachmentAiImages,
                                gradientColors: [
                                  colorScheme.primary,
                                  colorScheme.tertiary,
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  AttachmentActions.onAiImagesTap(context);
                                },
                                delay: 400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AttachmentMenuItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final List<Color> gradientColors;
  final VoidCallback onTap;
  final int delay;

  const _AttachmentMenuItem({
    required this.icon,
    required this.label,
    required this.gradientColors,
    required this.onTap,
    this.delay = 0,
  });

  @override
  State<_AttachmentMenuItem> createState() => _AttachmentMenuItemState();
}

class _AttachmentMenuItemState extends State<_AttachmentMenuItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Semantics(
          button: true,
          label: widget.label,
          hint: t.chatAttachmentSelectHint(widget.label),
          child: GestureDetector(
            onTapDown: (_) => setState(() => _isPressed = true),
            onTapUp: (_) {
              setState(() => _isPressed = false);
              widget.onTap();
            },
            onTapCancel: () => setState(() => _isPressed = false),
            child: AnimatedScale(
              scale: _isPressed ? 0.9 : 1.0,
              duration: const Duration(milliseconds: 100),
              child: SizedBox(
                width: 72,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: widget.gradientColors.first.withValues(
                          alpha: 0.12,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: widget.gradientColors.first.withValues(
                            alpha: 0.2,
                          ),
                          width: 1,
                        ),
                      ),
                      child: Icon(
                        widget.icon,
                        color: widget.gradientColors.first,
                        size: 28,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.label,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.2,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

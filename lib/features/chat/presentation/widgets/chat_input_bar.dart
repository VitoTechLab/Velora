import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/attachment_menu_bottom_sheet.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Optimized ChatInputBar widget
/// Uses ValueListenableBuilder to prevent unnecessary rebuilds
/// Only rebuilds send button when text state changes
class ChatInputBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onSendMessage;
  final VoidCallback onGalleryPressed;
  final VoidCallback onCameraPressed;
  final VoidCallback onLocationPressed;
  final VoidCallback onContactPressed;
  final VoidCallback onDocumentPressed;
  final VoidCallback onAudioPressed;
  final VoidCallback onPollPressed;
  final VoidCallback onEventPressed;
  final VoidCallback onAiImagesPressed;
  final VoidCallback onVoicePressed;

  const ChatInputBar({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onSendMessage,
    required this.onGalleryPressed,
    required this.onCameraPressed,
    required this.onLocationPressed,
    required this.onContactPressed,
    required this.onDocumentPressed,
    required this.onAudioPressed,
    required this.onPollPressed,
    required this.onEventPressed,
    required this.onAiImagesPressed,
    required this.onVoicePressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Semantics(
              button: true,
              label: t.chatInputEmojiLabel,
              hint: t.chatInputEmojiHint,
              child: IconButton(
                icon: Icon(
                  Icons.emoji_emotions_outlined,
                  color: colorScheme.onSurfaceVariant,
                ),
                onPressed: () {
                  // Open emoji picker
                },
                tooltip: t.chatInputEmojiTooltip,
              ),
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(maxHeight: 120),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Semantics(
                        textField: true,
                        label: t.chatInputFieldLabel,
                        hint: t.chatInputFieldHint,
                        child: TextField(
                          controller: controller,
                          focusNode: focusNode,
                          maxLines: null,
                          textInputAction: TextInputAction.newline,
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface,
                          ),
                          decoration: InputDecoration(
                            hintText: t.chatInputFieldPlaceholder,
                            hintStyle: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Use ValueListenableBuilder to only rebuild this part
                    ValueListenableBuilder<TextEditingValue>(
                      valueListenable: controller,
                      builder: (context, value, child) {
                        final hasText = value.text.trim().isNotEmpty;
                        if (hasText) {
                          // Show nothing when typing
                          return const SizedBox.shrink();
                        }
                        // Show attach and camera buttons when empty
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Semantics(
                              button: true,
                              label: t.chatInputAttachLabel,
                              hint: t.chatInputAttachHint,
                              child: IconButton(
                                icon: Icon(
                                  Icons.attach_file,
                                  color: colorScheme.onSurfaceVariant,
                                ),
                                onPressed: () {
                                  AttachmentMenuBottomSheet.show(
                                    context,
                                    onGalleryTap: onGalleryPressed,
                                    onCameraTap: onCameraPressed,
                                    onLocationTap: onLocationPressed,
                                    onContactTap: onContactPressed,
                                    onDocumentTap: onDocumentPressed,
                                    onAudioTap: onAudioPressed,
                                    onPollTap: onPollPressed,
                                    onEventTap: onEventPressed,
                                    onAiImagesTap: onAiImagesPressed,
                                  );
                                },
                                tooltip: t.chatInputAttachTooltip,
                              ),
                            ),
                            Semantics(
                              button: true,
                              label: t.chatInputCameraLabel,
                              hint: t.chatInputCameraHint,
                              child: IconButton(
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  color: colorScheme.onSurfaceVariant,
                                ),
                                onPressed: onCameraPressed,
                                tooltip: t.chatInputCameraTooltip,
                                padding: const EdgeInsets.only(right: 8),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Use ValueListenableBuilder for send/voice button
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: controller,
              builder: (context, value, child) {
                final hasText = value.text.trim().isNotEmpty;
                return Semantics(
                  button: true,
                  label: hasText ? t.chatInputSendLabel : t.chatInputVoiceLabel,
                  hint: hasText ? t.chatInputSendHint : t.chatInputVoiceHint,
                  child: GestureDetector(
                    onTap: hasText
                        ? () {
                            final message = controller.text.trim();
                            if (message.isNotEmpty) {
                              onSendMessage(message);
                            }
                          }
                        : onVoicePressed,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        hasText ? Icons.send : Icons.mic,
                        color: colorScheme.onPrimary,
                        size: 24,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

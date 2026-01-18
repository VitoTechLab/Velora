import 'dart:async';

import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/attachment_menu_bottom_sheet.dart';
import 'package:velora/features/chat/presentation/widgets/mention_suggestions_overlay.dart';
import 'package:velora/features/chat/presentation/helpers/mention_helper.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Optimized ChatInputBar widget with mention support
/// Uses ValueListenableBuilder to prevent unnecessary rebuilds
/// Only rebuilds send button when text state changes
/// Supports @mentions with user suggestions
class ChatInputBar extends StatefulWidget {
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
  final ValueChanged<bool>? onTyping;
  final String conversationId;

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
    required this.conversationId,
    this.onTyping,
  });

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  Timer? _typingDebounceTimer;
  bool _isTyping = false;
  static const _typingDebounceDuration = Duration(milliseconds: 1500);

  // Mention state
  String? _mentionQuery;
  Timer? _mentionDebounceTimer;
  static const _mentionDebounceDuration = Duration(milliseconds: 300);

  @override
  void dispose() {
    _typingDebounceTimer?.cancel();
    _mentionDebounceTimer?.cancel();
    // Send stop typing when leaving
    if (_isTyping) {
      widget.onTyping?.call(false);
    }
    super.dispose();
  }

  void _handleTextChanged(String text) {
    final hasText = text.trim().isNotEmpty;

    if (hasText && !_isTyping) {
      // Start typing
      _isTyping = true;
      widget.onTyping?.call(true);
    }

    // Reset debounce timer
    _typingDebounceTimer?.cancel();
    _typingDebounceTimer = Timer(_typingDebounceDuration, () {
      if (_isTyping) {
        _isTyping = false;
        widget.onTyping?.call(false);
      }
    });

    // Check for mention
    _checkMention();
  }

  void _checkMention() {
    _mentionDebounceTimer?.cancel();
    _mentionDebounceTimer = Timer(_mentionDebounceDuration, () {
      final cursorPosition = widget.controller.selection.baseOffset;
      final text = widget.controller.text;

      final query = MentionHelper.detectMentionAtCursor(text, cursorPosition);

      if (query != null && query.isNotEmpty) {
        if (mounted) {
          setState(() {
            _mentionQuery = query;
          });
        }
      } else {
        if (_mentionQuery != null && mounted) {
          setState(() {
            _mentionQuery = null;
          });
        }
      }
    });
  }

  void _handleMentionSelected(UserSearchEntity user) {
    final cursorPosition = widget.controller.selection.baseOffset;
    final text = widget.controller.text;

    final result = MentionHelper.replaceMention(
      text,
      cursorPosition,
      user.username,
    );

    widget.controller.value = TextEditingValue(
      text: result.text,
      selection: TextSelection.collapsed(offset: result.cursorPosition),
    );

    setState(() {
      _mentionQuery = null;
    });

    // Return focus to input
    widget.focusNode.requestFocus();
  }

  void _dismissMention() {
    if (_mentionQuery != null) {
      setState(() {
        _mentionQuery = null;
      });
    }
  }

  void _handleSend() {
    final message = widget.controller.text.trim();
    if (message.isNotEmpty) {
      // Stop typing indicator before sending
      _typingDebounceTimer?.cancel();
      if (_isTyping) {
        _isTyping = false;
        widget.onTyping?.call(false);
      }
      widget.onSendMessage(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Mention suggestions overlay
        if (_mentionQuery != null)
          MentionSuggestionsOverlay(
            query: _mentionQuery!,
            conversationId: widget.conversationId,
            onUserSelected: _handleMentionSelected,
            onDismiss: _dismissMention,
          ),

        // Input bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                colorScheme.surface.withValues(alpha: 0.95),
                colorScheme.surfaceContainerHighest.withValues(alpha: 0.98),
              ],
            ),
            border: Border(
              top: BorderSide(
                color: colorScheme.outline.withValues(alpha: 0.1),
                width: 1,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 12,
                offset: const Offset(0, -4),
                spreadRadius: 0,
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
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          colorScheme.surfaceContainerHighest
                              .withValues(alpha: 0.3),
                          colorScheme.surfaceContainerHighest
                              .withValues(alpha: 0.1),
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            colorScheme.primary,
                            colorScheme.secondary,
                          ],
                        ).createShader(bounds),
                        child: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Open emoji picker
                      },
                      tooltip: t.chatInputEmojiTooltip,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(maxHeight: 120),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          colorScheme.surface.withValues(alpha: 0.9),
                          colorScheme.surfaceContainerHigh
                              .withValues(alpha: 0.8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(
                        color: colorScheme.outline.withValues(alpha: 0.15),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                          spreadRadius: 0,
                        ),
                      ],
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
                              controller: widget.controller,
                              focusNode: widget.focusNode,
                              maxLines: null,
                              textInputAction: TextInputAction.newline,
                              onChanged: _handleTextChanged,
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
                          valueListenable: widget.controller,
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
                                    icon: ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                        colors: [
                                          colorScheme.primary,
                                          colorScheme.tertiary,
                                        ],
                                      ).createShader(bounds),
                                      child: Icon(
                                        Icons.attach_file_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      AttachmentMenuBottomSheet.show(
                                        context,
                                        onGalleryTap: widget.onGalleryPressed,
                                        onCameraTap: widget.onCameraPressed,
                                        onLocationTap: widget.onLocationPressed,
                                        onContactTap: widget.onContactPressed,
                                        onDocumentTap: widget.onDocumentPressed,
                                        onAudioTap: widget.onAudioPressed,
                                        onPollTap: widget.onPollPressed,
                                        onEventTap: widget.onEventPressed,
                                        onAiImagesTap: widget.onAiImagesPressed,
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
                                    icon: ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                        colors: [
                                          colorScheme.secondary,
                                          colorScheme.primary,
                                        ],
                                      ).createShader(bounds),
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: widget.onCameraPressed,
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
                const SizedBox(width: 10),
                // Use ValueListenableBuilder for send/voice button
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: widget.controller,
                  builder: (context, value, child) {
                    final hasText = value.text.trim().isNotEmpty;
                    return Semantics(
                      button: true,
                      label: hasText
                          ? t.chatInputSendLabel
                          : t.chatInputVoiceLabel,
                      hint:
                          hasText ? t.chatInputSendHint : t.chatInputVoiceHint,
                      child: AnimatedScale(
                        scale: hasText ? 1.0 : 0.95,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOutBack,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap:
                                hasText ? _handleSend : widget.onVoicePressed,
                            borderRadius: BorderRadius.circular(28),
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
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
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: Icon(
                                hasText
                                    ? Icons.send_rounded
                                    : Icons.mic_rounded,
                                color: colorScheme.onPrimary,
                                size: 26,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

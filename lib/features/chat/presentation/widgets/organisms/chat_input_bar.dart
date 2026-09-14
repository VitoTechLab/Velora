import 'dart:async';

import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/helpers/mention_helper.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_icon_button.dart';
import 'package:velora/features/chat/presentation/widgets/molecules/mention_suggestions_overlay.dart';
import 'package:velora/features/chat/presentation/widgets/organisms/attachment_menu_bottom_sheet.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatInputBar extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onSendMessage;
  final VoidCallback onVoicePressed;
  final ValueChanged<bool>? onTyping;
  final String conversationId;

  const ChatInputBar({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onSendMessage,
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

  String? _mentionQuery;
  Timer? _mentionDebounceTimer;
  static const _mentionDebounceDuration = Duration(milliseconds: 300);

  @override
  void dispose() {
    _typingDebounceTimer?.cancel();
    _mentionDebounceTimer?.cancel();
    if (_isTyping) {
      widget.onTyping?.call(false);
    }
    super.dispose();
  }

  void _handleTextChanged(String text) {
    final hasText = text.trim().isNotEmpty;

    if (hasText && !_isTyping) {
      _isTyping = true;
      widget.onTyping?.call(true);
    }

    _typingDebounceTimer?.cancel();
    _typingDebounceTimer = Timer(_typingDebounceDuration, () {
      if (_isTyping) {
        _isTyping = false;
        widget.onTyping?.call(false);
      }
    });

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
        if (_mentionQuery != null)
          MentionSuggestionsOverlay(
            query: _mentionQuery!,
            conversationId: widget.conversationId,
            onUserSelected: _handleMentionSelected,
            onDismiss: _dismissMention,
          ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: colorScheme.surface.withValues(alpha: 0.96),
            border: Border(
              top: BorderSide(
                color: colorScheme.outlineVariant.withValues(alpha: 0.28),
                width: 1,
              ),
            ),
          ),
          child: SafeArea(
            top: false,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(maxHeight: 120),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerLow.withValues(
                        alpha: 0.94,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: colorScheme.primary.withValues(alpha: 0.14),
                        width: 1,
                      ),
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
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ValueListenableBuilder<TextEditingValue>(
                          valueListenable: widget.controller,
                          builder: (context, value, child) {
                            final hasText = value.text.trim().isNotEmpty;
                            if (hasText) {
                              return const SizedBox.shrink();
                            }
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ChatIconButton(
                                  icon: Icons.attach_file_rounded,
                                  tooltip: t.chatInputAttachTooltip,
                                  size: 36,
                                  onPressed: () {
                                    AttachmentMenuBottomSheet.show(
                                      context,
                                      conversationId: widget.conversationId,
                                    );
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 6),
                                  child: ChatIconButton(
                                    icon: Icons.camera_alt_outlined,
                                    tooltip: t.chatInputCameraTooltip,
                                    size: 36,
                                    onPressed: () {
                                      AttachmentActions.onCameraTap(
                                        context,
                                        widget.conversationId,
                                      );
                                    },
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
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: widget.controller,
                  builder: (context, value, child) {
                    final hasText = value.text.trim().isNotEmpty;
                    return Semantics(
                      button: true,
                      label: hasText
                          ? t.chatInputSendLabel
                          : t.chatInputVoiceLabel,
                      hint: hasText
                          ? t.chatInputSendHint
                          : t.chatInputVoiceHint,
                      child: AnimatedScale(
                        scale: hasText ? 1.0 : 0.95,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOutBack,
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 220),
                          switchInCurve: Curves.easeOutBack,
                          switchOutCurve: Curves.easeInCubic,
                          transitionBuilder: (child, animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: ScaleTransition(
                                scale: animation,
                                child: child,
                              ),
                            );
                          },
                          child: ChatIconButton(
                            key: ValueKey(hasText ? 'send' : 'voice'),
                            icon: hasText
                                ? Icons.send_rounded
                                : Icons.mic_rounded,
                            tooltip: hasText
                                ? t.chatInputSendLabel
                                : t.chatInputVoiceLabel,
                            emphasized: true,
                            size: 46,
                            onPressed: hasText
                                ? _handleSend
                                : widget.onVoicePressed,
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

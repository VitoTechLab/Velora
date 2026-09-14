import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_avatar.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_status_icon.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_pressable_scale.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_unread_badge.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    super.key,
    required this.profileImageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.isRead,
    required this.onTap,
    this.messageType,
    this.photoCount,
    this.isMissedCall = false,
    this.unreadCount,
    this.isGroup = false,
    this.isOnline = false,
    this.isTyping = false,
    this.isLastMessageFromMe = false,
    this.isLastMessageRead = false,
  });

  final String profileImageUrl;
  final String name;
  final String message;
  final String time;
  final bool isRead;
  final String? messageType;
  final int? photoCount;
  final bool isMissedCall;
  final int? unreadCount;
  final bool isGroup;
  final bool isOnline;
  final bool isTyping;
  final bool isLastMessageFromMe;
  final bool isLastMessageRead;
  final VoidCallback onTap;

  bool get _hasUnread => unreadCount != null && unreadCount! > 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final content = Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colorScheme.outlineVariant.withValues(alpha: 0.24),
            width: 0.7,
          ),
        ),
      ),
      child: Row(
        children: [
          ChatAvatar(
            imageUrl: profileImageUrl,
            fallbackText: name,
            size: 50,
            isGroup: isGroup,
            isOnline: isOnline,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: _hasUnread ? FontWeight.w800 : FontWeight.w600,
                    color: colorScheme.onSurface,
                    height: 1.18,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                _buildMessagePreview(colorScheme, textTheme, t),
              ],
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 44,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: textTheme.labelSmall?.copyWith(
                    color: _hasUnread
                        ? colorScheme.primary
                        : colorScheme.onSurfaceVariant,
                    fontWeight: _hasUnread ? FontWeight.w800 : FontWeight.w600,
                    fontSize: 10.5,
                    height: 1,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 220),
                  switchInCurve: Curves.easeOutBack,
                  switchOutCurve: Curves.easeInCubic,
                  child: _hasUnread
                      ? ChatUnreadBadge(
                          key: ValueKey(unreadCount),
                          count: unreadCount!,
                        )
                      : const SizedBox(key: ValueKey('no_badge'), height: 22),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Semantics(
      button: true,
      label: t.chatListItemSemanticsLabel(name),
      hint: t.chatListItemSemanticsHint,
      child: Material(
        color: Colors.transparent,
        child: ChatPressableScale(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          pressedScale: 0.985,
          child: isTyping
              ? _TypingConversationFrame(child: content)
              : ColoredBox(color: Colors.transparent, child: content),
        ),
      ),
    );
  }

  Widget _buildMessagePreview(
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    final preview = _getPreviewMeta(t);
    final color = isTyping
        ? colorScheme.primary
        : isMissedCall
        ? colorScheme.error
        : _hasUnread
        ? colorScheme.onSurface
        : colorScheme.onSurfaceVariant;

    return Row(
      children: [
        if (isLastMessageFromMe && !isMissedCall)
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ChatMessageStatusIcon(isRead: isLastMessageRead, size: 14),
          ),
        if (preview.icon != null)
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              preview.icon,
              size: 15,
              color: preview.iconColor ?? color,
            ),
          ),
        Expanded(
          child: Text(
            preview.label,
            style: textTheme.bodyMedium?.copyWith(
              color: color,
              fontWeight: _hasUnread ? FontWeight.w700 : FontWeight.w500,
              fontStyle: isTyping ? FontStyle.italic : FontStyle.normal,
              height: 1.18,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  _PreviewMeta _getPreviewMeta(AppLocalizations t) {
    if (isTyping) {
      return _PreviewMeta(t.chatScreenTyping, Icons.more_horiz_rounded);
    }
    if (isMissedCall) {
      return _PreviewMeta(t.chatListItemMissedCall, Icons.phone_missed_rounded);
    }

    switch (_normalizedType) {
      case 'photos':
        return _PreviewMeta(
          photoCount != null
              ? t.chatListItemPhotos(photoCount!)
              : t.chatListItemPhoto,
          Icons.collections_rounded,
        );
      case 'photo':
      case 'image':
        return _PreviewMeta(t.chatListItemPhoto, Icons.image_rounded);
      case 'video':
        return _PreviewMeta(t.chatDetailSelectVideo, Icons.play_circle_rounded);
      case 'audio':
      case 'voice':
        return _PreviewMeta(t.chatAttachmentAudio, Icons.graphic_eq_rounded);
      case 'file':
      case 'document':
        return _PreviewMeta(
          t.chatAttachmentDocument,
          Icons.description_rounded,
        );
      case 'poll':
        return _PreviewMeta(t.chatAttachmentPoll, Icons.bar_chart_rounded);
      case 'event':
        return _PreviewMeta(t.chatAttachmentEvent, Icons.event_rounded);
      default:
        return _PreviewMeta(message);
    }
  }

  String? get _normalizedType {
    final explicit = messageType?.trim().toLowerCase();
    if (explicit != null && explicit.isNotEmpty) return explicit;

    final value = message.trim().toLowerCase();
    if (value.contains('photo') || value.contains('foto')) return 'photo';
    if (value.contains('video')) return 'video';
    if (value.contains('audio') || value.contains('voice')) return 'audio';
    if (value.contains('document') || value.contains('dokumen')) {
      return 'document';
    }
    if (value.contains('poll') || value.contains('jajak')) return 'poll';
    if (value.contains('event') || value.contains('acara')) return 'event';
    return null;
  }
}

class _PreviewMeta {
  const _PreviewMeta(this.label, [this.icon]) : iconColor = null;

  final String label;
  final IconData? icon;
  final Color? iconColor;
}

class _TypingConversationFrame extends StatefulWidget {
  const _TypingConversationFrame({required this.child});

  final Widget child;

  @override
  State<_TypingConversationFrame> createState() =>
      _TypingConversationFrameState();
}

class _TypingConversationFrameState extends State<_TypingConversationFrame>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1900),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: _TypingFramePainter(
            progress: _controller.value,
            color: colorScheme.primary,
          ),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

class _TypingFramePainter extends CustomPainter {
  const _TypingFramePainter({required this.progress, required this.color});

  final double progress;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final rrect = RRect.fromRectAndRadius(
      rect.deflate(2),
      const Radius.circular(18),
    );

    final borderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.7
      ..color = color.withValues(alpha: 0.30);
    canvas.drawRRect(rrect, borderPaint);

    final glowPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.2
      ..strokeCap = StrokeCap.round
      ..shader = SweepGradient(
        startAngle: 0,
        endAngle: math.pi * 2,
        colors: [
          Colors.transparent,
          color.withValues(alpha: 0.10),
          color.withValues(alpha: 0.76),
          color.withValues(alpha: 0.12),
          Colors.transparent,
        ],
        stops: const [0.0, 0.36, 0.52, 0.68, 1.0],
        transform: GradientRotation(progress * math.pi * 2),
      ).createShader(rect);

    canvas.drawRRect(rrect, glowPaint);
  }

  @override
  bool shouldRepaint(covariant _TypingFramePainter oldDelegate) {
    return oldDelegate.progress != progress || oldDelegate.color != color;
  }
}

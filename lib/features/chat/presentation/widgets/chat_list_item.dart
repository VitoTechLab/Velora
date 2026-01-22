import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatListItem extends StatelessWidget {
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
  final bool isTyping;
  final bool isLastMessageFromMe;
  final bool isLastMessageRead;
  final VoidCallback onTap;

  const ChatListItem({
    super.key,
    required this.profileImageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.isRead,
    this.messageType,
    this.photoCount,
    this.isMissedCall = false,
    this.unreadCount,
    this.isGroup = false,
    this.isTyping = false,
    this.isLastMessageFromMe = false,
    this.isLastMessageRead = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Semantics(
      button: true,
      label: t.chatListItemSemanticsLabel(name),
      hint: t.chatListItemSemanticsHint,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 300),
            tween: Tween(begin: 0.0, end: 1.0),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(opacity: value, child: child);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                    colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                  ],
                ),
                borderRadius: BorderRadius.circular(0),
                border: Border(
                  bottom: BorderSide(
                    color: colorScheme.outline.withValues(alpha: 0.1),
                    width: 0.5,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProfileImage(colorScheme),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                name,
                                style: textTheme.titleMedium?.copyWith(
                                  fontWeight: isRead
                                      ? FontWeight.w600
                                      : FontWeight.bold,
                                  color: colorScheme.onSurface,
                                  letterSpacing: 0.15,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: colorScheme.surfaceContainerHighest,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                time,
                                style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        _buildMessagePreview(colorScheme, textTheme, t),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage(ColorScheme colorScheme) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(2.5),
          decoration: BoxDecoration(
            gradient: !isRead
                ? LinearGradient(
                    colors: [
                      colorScheme.primary,
                      colorScheme.secondary,
                    ],
                  )
                : null,
            shape: BoxShape.circle,
            boxShadow: !isRead
                ? [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ]
                : null,
          ),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(profileImageUrl),
            backgroundColor: colorScheme.surfaceContainerHighest,
          ),
        ),
        if (isGroup)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colorScheme.tertiary,
                    colorScheme.secondary,
                  ],
                ),
                shape: BoxShape.circle,
                border: Border.all(color: colorScheme.surface, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.tertiary.withValues(alpha: 0.4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Icon(
                Icons.groups_rounded,
                size: 12,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildMessagePreview(
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    return Row(
      children: [
        // Show checkmark only if last message is from me
        if (isLastMessageFromMe && !isMissedCall && messageType != 'call')
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Icon(
              Icons.done_all_rounded,
              size: 16,
              // Blue if read by recipient, gray if not read yet
              color: isLastMessageRead
                  ? Colors.lightBlueAccent.shade200
                  : Colors.grey.shade500,
            ),
          ),
        if (messageType == 'photo' || messageType == 'photos')
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  colorScheme.primary,
                  colorScheme.secondary,
                ],
              ).createShader(bounds),
              child: Icon(
                Icons.image_rounded,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        if (isMissedCall)
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Icon(
              Icons.phone_missed_rounded,
              size: 16,
              color: colorScheme.error,
            ),
          ),
        Expanded(
          child: Text(
            _getMessageText(t),
            style: textTheme.bodyMedium?.copyWith(
              color: isTyping
                  ? colorScheme.primary
                  : isMissedCall
                      ? colorScheme.error
                      : isRead
                          ? colorScheme.onSurfaceVariant
                          : colorScheme.onSurface,
              fontWeight: isRead ? FontWeight.w500 : FontWeight.w600,
              fontStyle: isTyping ? FontStyle.italic : FontStyle.normal,
              letterSpacing: 0.15,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (unreadCount != null && unreadCount! > 0)
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colorScheme.primary,
                  colorScheme.secondary,
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.primary.withValues(alpha: 0.4),
                  blurRadius: 6,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Text(
              unreadCount.toString(),
              style: textTheme.labelSmall?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
      ],
    );
  }

  String _getMessageText(AppLocalizations t) {
    if (messageType == 'photos' && photoCount != null) {
      return t.chatListItemPhotos(photoCount!);
    }
    if (messageType == 'photo') {
      return t.chatListItemPhoto;
    }
    if (isMissedCall) {
      return t.chatListItemMissedCall;
    }
    return message;
  }
}

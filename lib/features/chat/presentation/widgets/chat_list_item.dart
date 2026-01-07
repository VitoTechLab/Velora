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
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileImage(colorScheme),
              const SizedBox(width: 12),
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
                              fontWeight: FontWeight.w600,
                              color: colorScheme.onSurface,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          time,
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    _buildMessagePreview(colorScheme, textTheme, t),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage(ColorScheme colorScheme) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(profileImageUrl),
          backgroundColor: colorScheme.surfaceContainerHighest,
        ),
        if (isGroup)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: colorScheme.surface,
                shape: BoxShape.circle,
                border: Border.all(color: colorScheme.surface, width: 2),
              ),
              child: Icon(
                Icons.groups,
                size: 12,
                color: colorScheme.onSurfaceVariant,
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
        if (isRead && !isMissedCall && messageType != 'call')
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Icon(Icons.done_all, size: 16, color: colorScheme.primary),
          ),
        if (messageType == 'photo' || messageType == 'photos')
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Icon(
              Icons.image_outlined,
              size: 16,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        if (isMissedCall)
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Icon(Icons.phone_missed, size: 16, color: colorScheme.error),
          ),
        Expanded(
          child: Text(
            _getMessageText(t),
            style: textTheme.bodyMedium?.copyWith(
              color: isMissedCall
                  ? colorScheme.error
                  : isRead
                  ? colorScheme.onSurfaceVariant
                  : colorScheme.onSurface,
              fontWeight: isRead ? FontWeight.normal : FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (unreadCount != null && unreadCount! > 0)
          Container(
            margin: const EdgeInsets.only(left: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              unreadCount.toString(),
              style: textTheme.labelSmall?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
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

import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_avatar.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_icon_button.dart';

class ChatRoomHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final Widget? subtitleWidget;
  final String? avatarUrl;
  final bool isGroup;
  final bool isOnline;
  final VoidCallback onBack;
  final VoidCallback? onInfo;
  final VoidCallback? onProfileTap;
  final String optionsTooltip;

  const ChatRoomHeader({
    super.key,
    required this.title,
    required this.subtitle,
    this.subtitleWidget,
    this.avatarUrl,
    this.isGroup = false,
    this.isOnline = false,
    required this.onBack,
    this.onInfo,
    this.onProfileTap,
    this.optionsTooltip = 'Conversation options',
  });

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AppBar(
      toolbarHeight: preferredSize.height,
      backgroundColor: colorScheme.surface.withValues(alpha: 0.96),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 54,
      leading: Center(
        child: ChatIconButton(
          icon: Icons.arrow_back_rounded,
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
          onPressed: onBack,
          size: 38,
        ),
      ),
      titleSpacing: 0,
      title: InkWell(
        onTap: onProfileTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              ChatAvatar(
                imageUrl: avatarUrl,
                fallbackText: title,
                size: 44,
                isOnline: isOnline,
                isGroup: isGroup,
                heroTag: 'chat_room_avatar_${avatarUrl ?? title}',
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w800,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 4),
                    DefaultTextStyle(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style:
                          (theme.textTheme.bodySmall ??
                                  const TextStyle(fontSize: 12))
                              .copyWith(
                                color: isOnline
                                    ? colorScheme.tertiary
                                    : colorScheme.onSurfaceVariant,
                                fontWeight: isOnline
                                    ? FontWeight.w700
                                    : FontWeight.w500,
                              ),
                      child: subtitleWidget ?? Text(subtitle),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        ChatIconButton(
          icon: Icons.more_horiz_rounded,
          tooltip: optionsTooltip,
          onPressed: onInfo,
          size: 38,
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}

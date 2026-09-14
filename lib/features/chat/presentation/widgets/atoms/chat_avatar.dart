import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_pressable_scale.dart';

class ChatAvatar extends StatelessWidget {
  final String? imageUrl;
  final String fallbackText;
  final double size;
  final bool isOnline;
  final bool isGroup;
  final VoidCallback? onTap;
  final Object? heroTag;

  const ChatAvatar({
    super.key,
    this.imageUrl,
    required this.fallbackText,
    this.size = 48,
    this.isOnline = false,
    this.isGroup = false,
    this.onTap,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final initials = fallbackText.trim().isEmpty
        ? '?'
        : fallbackText.trim().characters.first.toUpperCase();
    final imageProvider = _safeImageProvider(imageUrl);
    final ringColors = isOnline
        ? [colorScheme.primary, colorScheme.tertiary]
        : [colorScheme.outlineVariant, colorScheme.surfaceContainerHighest];
    final ringWidth = isOnline ? 2.8 : 1.4;

    Widget avatar = SizedBox.square(
      dimension: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: ringColors,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(ringWidth),
              child: CircleAvatar(
                backgroundColor: colorScheme.surfaceContainerHighest,
                backgroundImage: imageProvider,
                child: imageProvider == null
                    ? Text(
                        initials,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: colorScheme.onSurface,
                              fontWeight: FontWeight.w800,
                            ),
                      )
                    : null,
              ),
            ),
          ),
          if (isOnline)
            Positioned(
              right: size * 0.01,
              bottom: size * 0.02,
              child: _AvatarDot(
                color: colorScheme.primary,
                borderColor: colorScheme.surface,
                size: size * 0.24,
              ),
            ),
          if (isGroup)
            Positioned(
              right: -1,
              bottom: -1,
              child: Container(
                width: size * 0.34,
                height: size * 0.34,
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: colorScheme.surface, width: 2),
                ),
                child: Icon(
                  Icons.groups_rounded,
                  color: colorScheme.onPrimary,
                  size: size * 0.18,
                ),
              ),
            ),
        ],
      ),
    );

    if (heroTag != null) {
      avatar = Hero(tag: heroTag!, child: avatar);
    }

    if (onTap == null) return avatar;

    return ChatPressableScale(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      pressedScale: 0.94,
      child: avatar,
    );
  }

  ImageProvider? _safeImageProvider(String? url) {
    final value = url?.trim();
    if (value == null || value.isEmpty) return null;
    return NetworkImage(value);
  }
}

class _AvatarDot extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final double size;

  const _AvatarDot({
    required this.color,
    required this.borderColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2),
      ),
    );
  }
}

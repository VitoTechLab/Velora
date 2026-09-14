import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    this.imageUrl,
    this.size = 92,
    this.isVerified = false,
  });

  final String? imageUrl;
  final double size;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size,
          height: size,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorScheme.primary,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: ClipOval(
                child: _AvatarImage(imageUrl: imageUrl, size: size),
              ),
            ),
          ),
        ),
        if (isVerified)
          Positioned(
            right: 0,
            bottom: 4,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: colorScheme.primary,
                shape: BoxShape.circle,
                border: Border.all(color: colorScheme.surface, width: 3),
              ),
              child: Icon(
                Icons.verified_rounded,
                color: colorScheme.onPrimary,
                size: 16,
              ),
            ),
          ),
      ],
    );
  }
}

class _AvatarImage extends StatelessWidget {
  const _AvatarImage({required this.imageUrl, required this.size});

  final String? imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (imageUrl == null || imageUrl!.isEmpty) {
      return ColoredBox(
        color: colorScheme.surfaceContainerHighest,
        child: Icon(
          Icons.person_rounded,
          size: size * 0.42,
          color: colorScheme.onSurfaceVariant,
        ),
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl!,
      width: size,
      height: size,
      fit: BoxFit.cover,
      placeholder: (context, url) => ColoredBox(
        color: colorScheme.surfaceContainerHighest,
        child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
      ),
      errorWidget: (context, url, error) => ColoredBox(
        color: colorScheme.surfaceContainerHighest,
        child: Icon(
          Icons.person_rounded,
          size: size * 0.42,
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

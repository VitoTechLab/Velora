import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset_entity.dart';

class MediaGalleryTile extends StatelessWidget {
  const MediaGalleryTile({
    super.key,
    required this.asset,
    required this.isSelected,
    required this.selectionNumber,
    required this.isDisabled,
    required this.onTap,
  });

  final GalleryMediaAsset asset;
  final bool isSelected;
  final int selectionNumber;
  final bool isDisabled;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isVideo = asset.assetEntity.type == AssetType.video;

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 300),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: 0.5 + (0.5 * value),
          child: Transform.scale(scale: 0.8 + (0.2 * value), child: child),
        );
      },
      child: GestureDetector(
        onTap: isDisabled ? null : onTap,
        child: AspectRatio(
          aspectRatio: 1,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOutCubic,
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? colorScheme.primary : Colors.transparent,
                width: 2.5,
              ),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: colorScheme.primary.withValues(alpha: 0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                AssetEntityImage(
                  asset.assetEntity,
                  fit: BoxFit.cover,
                  isOriginal: false,
                  thumbnailSize: const ThumbnailSize(300, 300),
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: Center(
                        child: Icon(
                          Icons.broken_image,
                          color: colorScheme.onSurface.withValues(alpha: 0.54),
                          size: 24,
                        ),
                      ),
                    );
                  },
                ),
                if (isSelected)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    decoration: BoxDecoration(
                      color: colorScheme.primary.withValues(alpha: 0.3),
                    ),
                  ),
                if (isDisabled)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      color: colorScheme.surface.withValues(alpha: 0.8),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.lock_outline,
                        color: colorScheme.onSurface.withValues(alpha: 0.5),
                        size: 24,
                      ),
                    ),
                  ),
                if (isVideo)
                  Positioned(
                    bottom: 6,
                    left: 6,
                    child: _VideoDurationBadge(
                      duration: asset.assetEntity.videoDuration,
                    ),
                  ),
                if (isSelected)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: _SelectionNumberBadge(number: selectionNumber),
                  ),
                if (!isSelected && !isDisabled)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: _EmptySelectionMark(colorScheme: colorScheme),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _VideoDurationBadge extends StatelessWidget {
  const _VideoDurationBadge({required this.duration});

  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 400),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutBack,
      builder: (context, value, child) {
        return Transform.scale(
          scale: 0.7 + (0.3 * value),
          child: Opacity(opacity: value.clamp(0.0, 1.0), child: child),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: colorScheme.surface.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: colorScheme.outline.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.play_circle_outline,
              color: colorScheme.onSurface,
              size: 14,
            ),
            const SizedBox(width: 4),
            Text(
              _formatDuration(duration),
              style: TextStyle(
                color: colorScheme.onSurface,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

class _SelectionNumberBadge extends StatelessWidget {
  const _SelectionNumberBadge({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TweenAnimationBuilder<double>(
      key: ValueKey(number),
      duration: const Duration(milliseconds: 400),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.elasticOut,
      builder: (context, value, child) {
        return Transform.scale(
          scale: 0.5 + (0.5 * value),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          shape: BoxShape.circle,
          border: Border.all(
            color: colorScheme.onPrimary.withValues(alpha: 0.3),
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            '$number',
            style: TextStyle(
              color: colorScheme.onPrimary,
              fontSize: 13,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptySelectionMark extends StatelessWidget {
  const _EmptySelectionMark({required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 300),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(opacity: value * 0.8, child: child);
      },
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: colorScheme.onSurface.withValues(alpha: 0.9),
            width: 2.5,
          ),
          color: colorScheme.surface.withValues(alpha: 0.4),
        ),
      ),
    );
  }
}

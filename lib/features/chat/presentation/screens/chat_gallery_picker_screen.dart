import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset_entity.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';
import 'package:velora/features/media/presentation/widgets/media_skeleton_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Chat media gallery picker screen
///
/// Displays a 3-column square grid for selecting images/videos
/// Returns selected files when user confirms selection
class ChatGalleryPickerScreen extends HookWidget {
  /// Maximum number of images that can be selected
  final int maxImages;

  /// Whether to allow video selection
  final bool allowVideo;

  /// Title override
  final String? title;

  const ChatGalleryPickerScreen({
    super.key,
    this.maxImages = 10,
    this.allowVideo = false,
    this.title,
  });

  /// Show gallery picker and return selected files
  static Future<List<File>?> show(
    BuildContext context, {
    int maxImages = 10,
    bool allowVideo = false,
    String? title,
  }) async {
    return await Navigator.of(context).push<List<File>>(
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (_) => getIt<MediaGalleryBloc>(),
          child: ChatGalleryPickerScreen(
            maxImages: maxImages,
            allowVideo: allowVideo,
            title: title,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final scrollController = useScrollController();
    final mediaGalleryBloc = context.read<MediaGalleryBloc>();

    final screenTitle = title ?? t.chatGallerySelectPhotos;

    useEffect(() {
      mediaGalleryBloc.add(const MediaGalleryEvent.requestPermission());
      return () {
        mediaGalleryBloc.add(const MediaGalleryEvent.resetState());
      };
    }, [mediaGalleryBloc]);

    useEffect(() {
      void onScroll() {
        if (_shouldLoadMore(scrollController) &&
            !mediaGalleryBloc.state.isLoadingMore) {
          mediaGalleryBloc.add(const MediaGalleryEvent.loadMoreMedia());
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, mediaGalleryBloc]);

    Future<void> onSendPressed() async {
      final selectedMedia = mediaGalleryBloc.state.selectedMedia;

      if (selectedMedia.isEmpty) {
        AppMessenger.showToast(
          message: t.chatGallerySelectAtLeastOne,
          icon: Icons.info_outline,
        );
        return;
      }

      mediaGalleryBloc.add(const MediaGalleryEvent.convertAssetsToFiles());
    }

    void handleConversionResult(MediaGalleryState state) {
      final files = state.convertedFiles;
      final selectedCount = state.selectedMedia.length;

      if (files.isEmpty) {
        AppMessenger.showToast(
          message: t.chatGalleryUnableToLoad,
          icon: Icons.error_outline,
          isError: true,
        );
        return;
      }

      if (files.length != selectedCount) {
        AppMessenger.showToast(
          message: t.chatGallerySomeImagesNotAccessed,
          icon: Icons.warning_amber_outlined,
        );
      }

      Navigator.of(context).pop(files);
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorScheme.surface,
                colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: colorScheme.onSurface.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(Icons.close, color: colorScheme.onSurface, size: 20),
            onPressed: () => Navigator.pop(context),
            padding: EdgeInsets.zero,
          ),
        ),
        title: TweenAnimationBuilder<double>(
          duration: const Duration(milliseconds: 600),
          tween: Tween(begin: 0.0, end: 1.0),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 20 * (1 - value)),
                child: child,
              ),
            );
          },
          child: Text(
            screenTitle,
            style: TextStyle(
              color: colorScheme.onSurface,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          BlocBuilder<MediaGalleryBloc, MediaGalleryState>(
            builder: (context, state) {
              final selectedCount = state.selectedMedia.length;

              if (state.isConvertingFiles) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: TweenAnimationBuilder<double>(
                      duration: const Duration(milliseconds: 1200),
                      tween: Tween(begin: 0.0, end: 1.0),
                      builder: (context, value, child) {
                        return Transform.rotate(
                          angle: value * 2 * 3.14159,
                          child: child,
                        );
                      },
                      child: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            colorScheme.primary,
                            colorScheme.secondary,
                          ],
                        ).createShader(bounds),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }

              return TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 400),
                tween: Tween(begin: 0.0, end: 1.0),
                curve: Curves.easeOutBack,
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: 0.8 + (0.2 * value),
                    child:
                        Opacity(opacity: value.clamp(0.0, 1.0), child: child),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    gradient: selectedCount > 0
                        ? LinearGradient(
                            colors: [
                              colorScheme.primary,
                              colorScheme.secondary,
                            ],
                          )
                        : null,
                    color: selectedCount == 0
                        ? colorScheme.onSurface.withValues(alpha: 0.1)
                        : null,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: selectedCount > 0
                        ? [
                            BoxShadow(
                              color: colorScheme.primary.withValues(alpha: 0.4),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : null,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: selectedCount == 0 ? null : onSendPressed,
                      borderRadius: BorderRadius.circular(24),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.send_rounded,
                              size: 18,
                              color: selectedCount == 0
                                  ? colorScheme.onSurface
                                      .withValues(alpha: 0.38)
                                  : colorScheme.onPrimary,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              selectedCount > 0
                                  ? t.chatGallerySendCount(selectedCount)
                                  : t.chatGallerySend,
                              style: TextStyle(
                                color: selectedCount == 0
                                    ? colorScheme.onSurface
                                        .withValues(alpha: 0.38)
                                    : colorScheme.onPrimary,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: BlocConsumer<MediaGalleryBloc, MediaGalleryState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            AppMessenger.showToast(
              message: state.errorMessage!,
              icon: Icons.error_outline,
              isError: true,
            );
          }

          if (state.convertedFilesReady) {
            handleConversionResult(state);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return _buildSkeletonGrid();
          }

          return Column(
            children: [
              // Selection count indicator
              if (state.selectedMedia.isNotEmpty)
                _buildSelectionIndicator(context, state, maxImages),

              // Square grid gallery
              Expanded(
                child: _buildSquareGrid(context, state, scrollController),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSelectionIndicator(
    BuildContext context,
    MediaGalleryState state,
    int maxImages,
  ) {
    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final selectedCount = state.selectedMedia.length;

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 500),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, -50 * (1 - value)),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorScheme.surfaceContainerHighest.withValues(alpha: 0.9),
              colorScheme.surfaceContainerHighest.withValues(alpha: 0.7),
            ],
          ),
          border: Border(
            bottom: BorderSide(
              color: colorScheme.primary.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            TweenAnimationBuilder<double>(
              key: ValueKey(selectedCount),
              duration: const Duration(milliseconds: 400),
              tween: Tween(begin: 0.8, end: 1.0),
              curve: Curves.elasticOut,
              builder: (context, scale, child) {
                return Transform.scale(scale: scale, child: child);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.primary,
                      colorScheme.secondary,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      size: 16,
                      color: colorScheme.onPrimary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      t.chatGallerySelectedCount(selectedCount, maxImages),
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.onSurface.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    context
                        .read<MediaGalleryBloc>()
                        .add(const MediaGalleryEvent.clearSelection());
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.close_rounded,
                          size: 16,
                          color: colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          t.chatGalleryClearAll,
                          style: TextStyle(
                            color: colorScheme.onSurface.withValues(alpha: 0.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareGrid(
    BuildContext context,
    MediaGalleryState state,
    ScrollController controller,
  ) {
    if (state.mediaList.isEmpty && !state.isLoading) {
      return _buildSkeletonGrid();
    }

    // Use AlignedGridView for uniform square tiles (3 columns)
    return AlignedGridView.count(
      controller: controller,
      crossAxisCount: 3,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      padding: const EdgeInsets.all(2),
      itemCount: state.mediaList.length + (state.isLoadingMore ? 9 : 0),
      itemBuilder: (context, index) {
        // Show skeleton tiles while loading more
        if (index >= state.mediaList.length) {
          return const AspectRatio(
            aspectRatio: 1,
            child: MediaSkeletonTile(),
          );
        }

        final asset = state.mediaList[index];
        final isSelected = state.selectedIds.contains(asset.id);
        final selectionNumber = isSelected
            ? state.selectedMedia.indexWhere((a) => a.id == asset.id) + 1
            : 0;

        return _buildSquareMediaItem(
          context,
          asset,
          isSelected,
          selectionNumber,
          state.selectedMedia.length >= maxImages && !isSelected,
        );
      },
    );
  }

  Widget _buildSquareMediaItem(
    BuildContext context,
    GalleryMediaAsset asset,
    bool isSelected,
    int selectionNumber,
    bool isDisabled,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    final isVideo = asset.assetEntity.type == AssetType.video;

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 300),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: 0.5,
          // + (0.5 * value),
          child: Transform.scale(
            scale: 0.8 + (0.2 * value),
            child: child,
          ),
        );
      },
      child: GestureDetector(
        onTap: isDisabled
            ? null
            : () {
                context.read<MediaGalleryBloc>().add(
                      MediaGalleryEvent.toggleSelection(asset),
                    );
              },
        child: AspectRatio(
          aspectRatio: 1, // Square tiles
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
                // Image thumbnail
                AssetEntityImage(
                  asset.assetEntity,
                  fit: BoxFit.cover,
                  isOriginal: false,
                  thumbnailSize: const ThumbnailSize.square(300),
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

                // Selection overlay
                if (isSelected)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          colorScheme.primary.withValues(alpha: 0.3),
                          colorScheme.secondary.withValues(alpha: 0.2),
                        ],
                      ),
                    ),
                  ),

                // Disabled overlay
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

                // Video duration badge
                if (isVideo)
                  Positioned(
                    bottom: 6,
                    left: 6,
                    child: TweenAnimationBuilder<double>(
                      duration: const Duration(milliseconds: 400),
                      tween: Tween(begin: 0.0, end: 1.0),
                      curve: Curves.easeOutBack,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: 0.7 + (0.3 * value),
                          child: Opacity(
                              opacity: value.clamp(0.0, 1.0), child: child),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.surface.withValues(alpha: 0.9),
                              colorScheme.surface.withValues(alpha: 0.7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: colorScheme.outline.withValues(alpha: 0.3),
                            width: 1,
                          ),
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
                              _formatDuration(asset.assetEntity.videoDuration),
                              style: TextStyle(
                                color: colorScheme.onSurface,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                // Selection number badge
                if (isSelected)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: TweenAnimationBuilder<double>(
                      key: ValueKey(selectionNumber),
                      duration: const Duration(milliseconds: 400),
                      tween: Tween(begin: 0.0, end: 1.0),
                      curve: Curves.elasticOut,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: 0.5 + (0.5 * value),
                          child: Opacity(opacity: value, child: child),
                        );
                      },
                      child: _buildSelectionBadge(selectionNumber, context),
                    ),
                  ),

                // Unselected circle indicator
                if (!isSelected && !isDisabled)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: TweenAnimationBuilder<double>(
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
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme.shadow.withValues(alpha: 0.3),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectionBadge(int number, BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: 26,
      height: 26,
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
        border: Border.all(
          color: colorScheme.onPrimary.withValues(alpha: 0.3),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withValues(alpha: 0.5),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(
            color: colorScheme.onPrimary,
            fontSize: 13,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }

  Widget _buildSkeletonGrid() {
    return AlignedGridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      padding: const EdgeInsets.all(2),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 21,
      itemBuilder: (_, __) => const AspectRatio(
        aspectRatio: 1,
        child: MediaSkeletonTile(),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  bool _shouldLoadMore(ScrollController controller) {
    if (!controller.hasClients) return false;
    return controller.position.extentAfter < 800;
  }
}

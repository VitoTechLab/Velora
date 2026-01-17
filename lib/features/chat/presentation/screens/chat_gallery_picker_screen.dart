import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:velora/core/themes/color_material.dart';
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
        builder: (context) => ChatGalleryPickerScreen(
          maxImages: maxImages,
          allowVideo: allowVideo,
          title: title,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
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
      backgroundColor: MaterialColorsCustom.black,
      appBar: AppBar(
        backgroundColor: MaterialColorsCustom.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          screenTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: [
          BlocBuilder<MediaGalleryBloc, MediaGalleryState>(
            builder: (context, state) {
              final selectedCount = state.selectedMedia.length;

              if (state.isConvertingFiles) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: MaterialColorsCustom.brandSeafoam,
                      ),
                    ),
                  ),
                );
              }

              return TextButton.icon(
                onPressed: selectedCount == 0 ? null : onSendPressed,
                icon: Icon(
                  Icons.send_rounded,
                  size: 18,
                  color: selectedCount == 0
                      ? Colors.white38
                      : MaterialColorsCustom.brandSeafoam,
                ),
                label: Text(
                  selectedCount > 0
                      ? t.chatGallerySendCount(selectedCount)
                      : t.chatGallerySend,
                  style: TextStyle(
                    color: selectedCount == 0
                        ? Colors.white38
                        : MaterialColorsCustom.brandSeafoam,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
    final selectedCount = state.selectedMedia.length;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: MaterialColorsCustom.greyMedium.withValues(alpha: 0.8),
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withValues(alpha: 0.1),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  MaterialColorsCustom.brandSeafoam,
                  MaterialColorsCustom.brandEmerald,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              t.chatGallerySelectedCount(selectedCount, maxImages),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              context
                  .read<MediaGalleryBloc>()
                  .add(const MediaGalleryEvent.clearSelection());
            },
            child: Text(
              t.chatGalleryClearAll,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ),
        ],
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
    final isVideo = asset.assetEntity.type == AssetType.video;

    return GestureDetector(
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
          duration: const Duration(milliseconds: 150),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected
                  ? MaterialColorsCustom.brandSeafoam
                  : Colors.transparent,
              width: 2,
            ),
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
                    color: MaterialColorsCustom.greyMedium,
                    child: const Center(
                      child: Icon(
                        Icons.broken_image,
                        color: Colors.white54,
                        size: 24,
                      ),
                    ),
                  );
                },
              ),

              // Selection overlay
              if (isSelected)
                Container(
                  color:
                      MaterialColorsCustom.brandSeafoam.withValues(alpha: 0.25),
                ),

              // Disabled overlay
              if (isDisabled)
                Container(
                  color: Colors.black.withValues(alpha: 0.5),
                ),

              // Video duration badge
              if (isVideo)
                Positioned(
                  bottom: 4,
                  left: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.videocam,
                          color: Colors.white,
                          size: 12,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          _formatDuration(asset.assetEntity.videoDuration),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              // Selection number badge
              if (isSelected)
                Positioned(
                  top: 6,
                  right: 6,
                  child: _buildSelectionBadge(selectionNumber),
                ),

              // Unselected circle indicator
              if (!isSelected && !isDisabled)
                Positioned(
                  top: 6,
                  right: 6,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.8),
                        width: 2,
                      ),
                      color: Colors.black.withValues(alpha: 0.3),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectionBadge(int number) {
    return Container(
      width: 24,
      height: 24,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            MaterialColorsCustom.brandSeafoam,
            MaterialColorsCustom.brandEmerald,
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$number',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
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

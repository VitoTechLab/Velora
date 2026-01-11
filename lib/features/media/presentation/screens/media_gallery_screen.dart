import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:velora/core/themes/color_material.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset_entity.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';
import 'package:velora/features/media/presentation/widgets/media_skeleton_tile.dart';
import 'package:velora/features/navigation/models/create_post_media_args.dart';
import 'package:velora/routes/app_router.dart';

class MediaGalleryScreen extends HookWidget {
  const MediaGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final mediaGalleryBloc = context.read<MediaGalleryBloc>();

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

    Future<void> onNextPressed() async {
      final selectedMedia = mediaGalleryBloc.state.selectedMedia;

      if (selectedMedia.isEmpty) {
        AppMessenger.showToast(
          message: 'Please select at least one image',
          icon: Icons.info_outline,
          duration: const Duration(seconds: 2),
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
          message: 'Unable to load the selected images. Please try again.',
          icon: Icons.error_outline,
          isError: true,
          duration: const Duration(seconds: 3),
        );
        return;
      }

      if (files.length != selectedCount) {
        AppMessenger.showToast(
          message: 'Some images could not be accessed. Please re-select them.',
          icon: Icons.error_outline,
          isError: true,
          duration: const Duration(seconds: 3),
        );
        return;
      }

      context.pushNamed(
        AppRouteName.postFeed,
        extra: CreatePostMediaArgs(selectedMedia: files),
      );
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
        title: const Text(
          'Select Photos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: [
          BlocBuilder<MediaGalleryBloc, MediaGalleryState>(
            builder: (context, state) {
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
              return TextButton(
                onPressed: state.selectedMedia.isEmpty ? null : onNextPressed,
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: state.selectedMedia.isEmpty
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
              duration: const Duration(seconds: 2),
            );
          }

          if (state.convertedFilesReady) {
            handleConversionResult(state);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return _mediaGallerySkeletonView();
          }

          return Column(
            children: [
              if (state.selectedMedia.isNotEmpty)
                _buildPreviewCarousel(context, state.selectedMedia),
              Expanded(
                child: _buildMasonryGallery(context, state, scrollController),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildPreviewCarousel(
    BuildContext context,
    List<GalleryMediaAsset> selectedMedia,
  ) {
    return Container(
      height: 280,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: PageView.builder(
          itemCount: selectedMedia.length,
          itemBuilder: (context, index) {
            final asset = selectedMedia[index];
            return Stack(
              fit: StackFit.expand,
              children: [
                // Image preview
                AssetEntityImage(
                  asset.assetEntity,
                  fit: BoxFit.cover,
                  isOriginal: false,
                  thumbnailSize: const ThumbnailSize.square(600),
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: MaterialColorsCustom.greyMedium,
                      child: const Center(
                        child: Icon(Icons.broken_image, color: Colors.white54),
                      ),
                    );
                  },
                ),

                // Gradient overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),

                // Remove button
                Positioned(
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    onTap: () {
                      context.read<MediaGalleryBloc>().add(
                        MediaGalleryEvent.toggleSelection(asset),
                      );
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),

                // Order indicator
                Positioned(
                  bottom: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          MaterialColorsCustom.brandSeafoam,
                          MaterialColorsCustom.brandEmerald,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: MaterialColorsCustom.brandSeafoam.withOpacity(
                            0.4,
                          ),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      '${index + 1} of ${selectedMedia.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildMasonryGallery(
    BuildContext context,
    MediaGalleryState state,
    ScrollController controller,
  ) {
    // Show skeleton saat media list masih kosong (loading pertama kali)
    if (state.mediaList.isEmpty && !state.isLoading) {
      return _mediaGallerySkeletonView();
    }

    return MasonryGridView.count(
      controller: controller,
      crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      padding: const EdgeInsets.all(4),
      itemCount: state.mediaList.length + (state.isLoadingMore ? 9 : 0),
      itemBuilder: (context, index) {
        // Show skeleton tiles saat load more
        if (index >= state.mediaList.length) {
          return const MediaSkeletonTile();
        }

        final asset = state.mediaList[index];
        final isSelected = state.selectedIds.contains(asset.id);
        final selectionNumber = isSelected
            ? state.selectedMedia.indexWhere((a) => a.id == asset.id) + 1
            : 0;

        return _buildMediaItem(context, asset, isSelected, selectionNumber);
      },
    );
  }

  Widget _buildMediaItem(
    BuildContext context,
    GalleryMediaAsset asset,
    bool isSelected,
    int selectionNumber,
  ) {
    final aspect = asset.aspectRatio;

    return GestureDetector(
      onTap: () {
        context.read<MediaGalleryBloc>().add(
          MediaGalleryEvent.toggleSelection(asset),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? MaterialColorsCustom.brandSeafoam
                : Colors.transparent,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: AspectRatio(
            aspectRatio: aspect,
            child: Stack(
              children: [
                // pakai Positioned.fill supaya cover
                Positioned.fill(
                  child: AssetEntityImage(
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
                            size: 20,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                if (isSelected)
                  Positioned.fill(
                    child: Container(
                      color: MaterialColorsCustom.brandSeafoam.withOpacity(0.2),
                    ),
                  ),

                if (isSelected)
                  Positioned(top: 8, right: 8, child: _badge(selectionNumber)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _shouldLoadMore(ScrollController controller) {
    if (!controller.hasClients) return false;
    return controller.position.extentAfter < 800;
  }

  Widget _badge(int n) => Container(
    width: 32,
    height: 32,
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
        '$n',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  Widget _mediaGallerySkeletonView() => MasonryGridView.count(
    crossAxisCount: 3,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    padding: const EdgeInsets.all(4),
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 21,
    itemBuilder: (_, _) => const MediaSkeletonTile(),
  );
}

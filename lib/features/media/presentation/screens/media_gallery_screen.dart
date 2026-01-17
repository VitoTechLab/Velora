import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
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

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorScheme.surface,
                colorScheme.surfaceContainerLowest,
              ],
            ),
            border: Border(
              bottom: BorderSide(
                color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.close, color: colorScheme.onSurface),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Select Photos',
          style: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
          ),
        ),
        centerTitle: false,
        actions: [
          BlocBuilder<MediaGalleryBloc, MediaGalleryState>(
            builder: (context, state) {
              if (state.isConvertingFiles) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            colorScheme.primaryContainer.withValues(alpha: 0.3),
                            colorScheme.secondaryContainer
                                .withValues(alpha: 0.2),
                          ],
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.primary.withValues(alpha: 0.1),
                            blurRadius: 8,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                );
              }
              return Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  gradient: state.selectedMedia.isEmpty
                      ? null
                      : LinearGradient(
                          colors: [
                            colorScheme.primary,
                            colorScheme.primary.withValues(alpha: 0.85),
                          ],
                        ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: state.selectedMedia.isEmpty
                      ? null
                      : [
                          BoxShadow(
                            color: colorScheme.primary.withValues(alpha: 0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: state.selectedMedia.isEmpty ? null : onNextPressed,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: state.selectedMedia.isEmpty
                              ? colorScheme.onSurfaceVariant
                                  .withValues(alpha: 0.4)
                              : colorScheme.onPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
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
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 280,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.12),
            blurRadius: 20,
            offset: const Offset(0, 8),
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
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            colorScheme.surfaceContainerHighest,
                            colorScheme.surfaceContainer,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.broken_image,
                          color: colorScheme.onSurfaceVariant
                              .withValues(alpha: 0.5),
                          size: 48,
                        ),
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
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          colorScheme.surface.withValues(alpha: 0.85),
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
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          colorScheme.error,
                          colorScheme.error.withValues(alpha: 0.85),
                        ],
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.error.withValues(alpha: 0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          context.read<MediaGalleryBloc>().add(
                                MediaGalleryEvent.toggleSelection(asset),
                              );
                        },
                        customBorder: const CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.close_rounded,
                            color: colorScheme.onError,
                            size: 20,
                          ),
                        ),
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
                      horizontal: 14,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          colorScheme.primary,
                          colorScheme.secondary,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: colorScheme.onPrimary.withValues(alpha: 0.2),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.primary.withValues(alpha: 0.4),
                          blurRadius: 12,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      '${index + 1} of ${selectedMedia.length}',
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
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
    final colorScheme = Theme.of(context).colorScheme;
    final aspect = asset.aspectRatio;

    return GestureDetector(
      onTap: () {
        context.read<MediaGalleryBloc>().add(
              MediaGalleryEvent.toggleSelection(asset),
            );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? colorScheme.primary : Colors.transparent,
            width: 2.5,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: 12,
                    spreadRadius: 1,
                  ),
                ]
              : null,
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
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.surfaceContainerHighest,
                              colorScheme.surfaceContainer,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.broken_image,
                            color: colorScheme.onSurfaceVariant
                                .withValues(alpha: 0.5),
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
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            colorScheme.primary.withValues(alpha: 0.25),
                            colorScheme.secondary.withValues(alpha: 0.15),
                          ],
                        ),
                      ),
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

  Widget _badge(int n) {
    return Builder(
      builder: (context) {
        final colorScheme = Theme.of(context).colorScheme;
        return Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorScheme.primary,
                colorScheme.secondary,
              ],
            ),
            shape: BoxShape.circle,
            border: Border.all(
              color: colorScheme.onPrimary.withValues(alpha: 0.3),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: colorScheme.primary.withValues(alpha: 0.4),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              '$n',
              style: TextStyle(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.w900,
                fontSize: 13,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _mediaGallerySkeletonView() => MasonryGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        padding: const EdgeInsets.all(4),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 21,
        itemBuilder: (_, __) => const MediaSkeletonTile(),
      );
}

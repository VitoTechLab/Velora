import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset_entity.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';
import 'package:velora/features/media/presentation/widgets/atoms/media_skeleton_tile.dart';
import 'package:velora/features/media/presentation/widgets/molecules/media_gallery_tile.dart';
import 'package:velora/features/navigation/models/create_post_media_args.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class MediaGalleryScreen extends HookWidget {
  const MediaGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final mediaGalleryBloc = context.read<MediaGalleryBloc>();
    final t = AppLocalizations.of(context)!;

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
          message: t.chatGallerySelectAtLeastOne,
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
          message: t.chatGalleryUnableToLoad,
          icon: Icons.error_outline,
          isError: true,
          duration: const Duration(seconds: 3),
        );
        return;
      }

      if (files.length != selectedCount) {
        AppMessenger.showToast(
          message: t.chatGallerySomeImagesNotAccessed,
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
            color: colorScheme.surface,
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
          t.chatGallerySelectPhotos,
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
                        color: colorScheme.primaryContainer.withValues(
                          alpha: 0.3,
                        ),
                        shape: BoxShape.circle,
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
                  borderRadius: BorderRadius.circular(12),
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
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      child: Text(
                        t.postCreateAppBarNext,
                        style: TextStyle(
                          color: state.selectedMedia.isEmpty
                              ? colorScheme.onSurfaceVariant.withValues(
                                  alpha: 0.4,
                                )
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
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
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
                  thumbnailSize: const ThumbnailSize(600, 600),
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.broken_image,
                          color: colorScheme.onSurfaceVariant.withValues(
                            alpha: 0.5,
                          ),
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
                      color: colorScheme.surface.withValues(alpha: 0.85),
                    ),
                  ),
                ),

                // Remove button
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorScheme.error,
                      shape: BoxShape.circle,
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
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: colorScheme.onPrimary.withValues(alpha: 0.2),
                        width: 1,
                      ),
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

    return GridView.builder(
      controller: controller,
      padding: const EdgeInsets.all(4),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 1,
      ),
      itemCount: state.mediaList.length + (state.isLoadingMore ? 9 : 0),
      itemBuilder: (context, index) {
        // Show skeleton tiles saat load more
        if (index >= state.mediaList.length) {
          return const AspectRatio(aspectRatio: 1, child: MediaSkeletonTile());
        }

        final asset = state.mediaList[index];
        final isSelected = state.selectedIds.contains(asset.id);
        final selectionNumber = isSelected
            ? state.selectedMedia.indexWhere((a) => a.id == asset.id) + 1
            : 0;

        return MediaGalleryTile(
          asset: asset,
          isSelected: isSelected,
          selectionNumber: selectionNumber,
          isDisabled: false,
          onTap: () {
            context.read<MediaGalleryBloc>().add(
              MediaGalleryEvent.toggleSelection(asset),
            );
          },
        );
      },
    );
  }

  bool _shouldLoadMore(ScrollController controller) {
    if (!controller.hasClients) return false;
    return controller.position.extentAfter < 800;
  }

  Widget _mediaGallerySkeletonView() => GridView.builder(
    padding: const EdgeInsets.all(4),
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      childAspectRatio: 1,
    ),
    itemCount: 21,
    itemBuilder: (_, __) =>
        const AspectRatio(aspectRatio: 1, child: MediaSkeletonTile()),
  );
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velora/core/themes/color_material.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Custom media gallery with masonry/staggered grid layout
class CustomMediaGallery extends HookWidget {
  final List<File> selectedMedia;
  final Set<int> selectionOrder;
  final Function(File media, int index) onMediaSelected;
  final ImagePicker? imagePicker;

  const CustomMediaGallery({
    super.key,
    required this.selectedMedia,
    required this.selectionOrder,
    required this.onMediaSelected,
    this.imagePicker,
  });

  @override
  Widget build(BuildContext context) {
    final picker = useMemoized(() => imagePicker ?? ImagePicker(), [
      imagePicker,
    ]);
    final galleryImages = useState<List<XFile>>([]);
    final isLoading = useState(true);

    final t = AppLocalizations.of(context)!;

    Future<void> loadGalleryImages() async {
      isLoading.value = true;
      try {
        final images = await picker.pickMultiImage(
          maxWidth: 1920,
          maxHeight: 1920,
          imageQuality: 85,
        );
        galleryImages.value = images;
      } catch (e) {
        if (context.mounted) {
          AppMessenger.showToast(
            message: t.postGalleryLoadError('$e'),
            icon: Icons.error_outline,
            isError: true,
          );
        }
      } finally {
        isLoading.value = false;
      }
    }

    useEffect(() {
      loadGalleryImages();
      return null;
    }, const []);

    if (isLoading.value) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      );
    }

    if (galleryImages.value.isEmpty) {
      return SliverToBoxAdapter(
        child: _EmptyGalleryPlaceholder(onSelectImages: loadGalleryImages),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          final xFile = galleryImages.value[index];
          final file = File(xFile.path);
          final isSelected = selectedMedia.any(
            (media) => media.path == file.path,
          );
          final selectionIndex = isSelected
              ? selectedMedia.indexWhere((media) => media.path == file.path) + 1
              : -1;

          return _MediaThumbnail(
            file: file,
            isSelected: isSelected,
            selectionNumber: selectionIndex,
            onTap: () => onMediaSelected(file, index),
          );
        }, childCount: galleryImages.value.length),
      ),
    );
  }
}

class _MediaThumbnail extends HookWidget {
  final File file;
  final bool isSelected;
  final int selectionNumber;
  final VoidCallback onTap;

  const _MediaThumbnail({
    required this.file,
    required this.isSelected,
    required this.selectionNumber,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    final scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.92,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final t = AppLocalizations.of(context)!;

    return Semantics(
      label: t.postGalleryImageLabel,
      hint: isSelected
          ? t.postGalleryImageHintSelected(selectionNumber)
          : t.postGalleryImageHintSelect,
      child: GestureDetector(
        onTapDown: (_) => controller.forward(),
        onTapUp: (_) {
          controller.reverse();
          onTap();
        },
        onTapCancel: () => controller.reverse(),
        child: ScaleTransition(
          scale: scaleAnimation,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? colorScheme.secondary : Colors.transparent,
                width: 3,
              ),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: colorScheme.secondary.withValues(alpha: 0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.file(file, fit: BoxFit.cover),
                  if (isSelected)
                    Container(
                      color: colorScheme.secondary.withValues(alpha: 0.2),
                    ),
                  if (isSelected)
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              MaterialColorsCustom.brandSeafoam,
                              MaterialColorsCustom.brandEmerald,
                            ],
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '$selectionNumber',
                            style: textTheme.labelSmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyGalleryPlaceholder extends StatelessWidget {
  final VoidCallback onSelectImages;

  const _EmptyGalleryPlaceholder({required this.onSelectImages});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.photo_library_outlined,
              size: 56,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            t.postGalleryEmptyTitle,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            t.postGalleryEmptySubtitle,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: onSelectImages,
            icon: const Icon(Icons.add_photo_alternate_outlined),
            label: Text(t.postGallerySelectButton),
            style: FilledButton.styleFrom(
              backgroundColor: colorScheme.primary,
              foregroundColor: colorScheme.onPrimary,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Custom media gallery with grid layout for media selection
class CustomMediaGallery extends HookWidget {
  const CustomMediaGallery({
    super.key,
    required this.selectedMedia,
    required this.selectionOrder,
    required this.onMediaSelected,
    this.imagePicker,
  });

  final List<File> selectedMedia;
  final Set<int> selectionOrder;
  final Function(File media, int index) onMediaSelected;
  final ImagePicker? imagePicker;

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
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withValues(alpha: 0.3),
                    Theme.of(context)
                        .colorScheme
                        .secondaryContainer
                        .withValues(alpha: 0.2),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withValues(alpha: 0.1),
                    blurRadius: 16,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
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
                color: isSelected ? colorScheme.primary : Colors.transparent,
                width: 2.5,
              ),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: colorScheme.primary.withValues(alpha: 0.35),
                        blurRadius: 12,
                        spreadRadius: 1,
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
                  if (isSelected)
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Container(
                        width: 28,
                        height: 28,
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
                            '$selectionNumber',
                            style: textTheme.labelSmall?.copyWith(
                              color: colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                              fontSize: 12,
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
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeOutBack,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Opacity(
                  opacity: value,
                  child: child,
                ),
              );
            },
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colorScheme.primaryContainer.withValues(alpha: 0.3),
                    colorScheme.secondaryContainer.withValues(alpha: 0.2),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    blurRadius: 20,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    colorScheme.primary,
                    colorScheme.secondary,
                  ],
                ).createShader(bounds),
                child: Icon(
                  Icons.photo_library_outlined,
                  size: 56,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            t.postGalleryEmptyTitle,
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurface,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            t.postGalleryEmptySubtitle,
            textAlign: TextAlign.center,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              letterSpacing: 0.1,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colorScheme.primary,
                  colorScheme.primary.withValues(alpha: 0.85),
                ],
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.primary.withValues(alpha: 0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onSelectImages,
                borderRadius: BorderRadius.circular(24),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.add_photo_alternate_outlined,
                        color: colorScheme.onPrimary,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        t.postGallerySelectButton,
                        style: textTheme.labelLarge?.copyWith(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.3,
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
    );
  }
}

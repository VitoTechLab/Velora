import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Data class for media preview result
class MediaPreviewResult {
  final List<File> files;
  final String? caption;

  const MediaPreviewResult({required this.files, this.caption});
}

/// Screen for previewing and editing media before sending
///
/// Features:
/// - Display one or multiple images/videos
/// - Swipe between images in gallery mode
/// - Add caption/message
/// - Remove individual images
class MediaPreviewScreen extends HookWidget {
  /// List of files to preview
  final List<File> files;

  /// Whether to show caption input
  final bool showCaptionInput;

  /// Title override
  final String? title;

  /// Whether this is from camera (single capture)
  final bool isFromCamera;

  const MediaPreviewScreen({
    super.key,
    required this.files,
    this.showCaptionInput = true,
    this.title,
    this.isFromCamera = false,
  });

  /// Show preview screen and return result with files and caption
  static Future<MediaPreviewResult?> show(
    BuildContext context, {
    required List<File> files,
    bool showCaptionInput = true,
    String? title,
    bool isFromCamera = false,
  }) async {
    if (files.isEmpty) return null;

    return await Navigator.of(context).push<MediaPreviewResult>(
      MaterialPageRoute(
        builder: (context) => MediaPreviewScreen(
          files: files,
          showCaptionInput: showCaptionInput,
          title: title,
          isFromCamera: isFromCamera,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // State
    final selectedFiles = useState<List<File>>(List.from(files));
    final currentIndex = useState<int>(0);
    final captionController = useTextEditingController();
    final captionFocusNode = useFocusNode();
    final pageController = usePageController(initialPage: 0);

    // Screen title
    final screenTitle = title ?? t.mediaPreviewTitle;

    // Handle send
    void handleSend() {
      if (selectedFiles.value.isEmpty) {
        Navigator.pop(context);
        return;
      }

      final caption = captionController.text.trim();
      Navigator.pop(
        context,
        MediaPreviewResult(
          files: selectedFiles.value,
          caption: caption.isNotEmpty ? caption : null,
        ),
      );
    }

    // Handle remove file
    void handleRemoveFile(int index) {
      if (selectedFiles.value.length <= 1) {
        // Last file - close screen
        Navigator.pop(context);
        return;
      }

      final newFiles = List<File>.from(selectedFiles.value);
      newFiles.removeAt(index);
      selectedFiles.value = newFiles;

      // Adjust current index if needed
      if (currentIndex.value >= newFiles.length) {
        currentIndex.value = newFiles.length - 1;
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          selectedFiles.value.length > 1
              ? '$screenTitle (${currentIndex.value + 1}/${selectedFiles.value.length})'
              : screenTitle,
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          if (selectedFiles.value.length > 1)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: () => handleRemoveFile(currentIndex.value),
              tooltip: t.mediaPreviewRemove,
            ),
        ],
      ),
      body: Column(
        children: [
          // Image preview area
          Expanded(
            child: selectedFiles.value.length == 1
                ? _SingleImagePreview(file: selectedFiles.value.first)
                : _MultiImagePreview(
                    files: selectedFiles.value,
                    pageController: pageController,
                    currentIndex: currentIndex,
                  ),
          ),

          // Thumbnail strip for multiple images
          if (selectedFiles.value.length > 1)
            _ThumbnailStrip(
              files: selectedFiles.value,
              currentIndex: currentIndex.value,
              onThumbnailTap: (index) {
                currentIndex.value = index;
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              onRemove: handleRemoveFile,
            ),

          // Caption input and send button
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 8,
              bottom: MediaQuery.of(context).viewInsets.bottom > 0
                  ? 8
                  : MediaQuery.of(context).padding.bottom + 8,
            ),
            child: Row(
              children: [
                // Caption input
                if (showCaptionInput)
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: captionController,
                        focusNode: captionFocusNode,
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurface,
                        ),
                        decoration: InputDecoration(
                          hintText: t.mediaPreviewAddCaption,
                          hintStyle: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        maxLines: 3,
                        minLines: 1,
                        textCapitalization: TextCapitalization.sentences,
                      ),
                    ),
                  )
                else
                  const Spacer(),

                const SizedBox(width: 12),

                // Send button
                FloatingActionButton(
                  onPressed: handleSend,
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                  elevation: 0,
                  child: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Single image preview with zoom support
class _SingleImagePreview extends StatelessWidget {
  final File file;

  const _SingleImagePreview({required this.file});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 0.5,
      maxScale: 4.0,
      child: Center(
        child: Image.file(
          file,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Icon(
                Icons.broken_image_outlined,
                size: 64,
                color: Colors.white54,
              ),
            );
          },
        ),
      ),
    );
  }
}

/// Multiple images preview with PageView
class _MultiImagePreview extends HookWidget {
  final List<File> files;
  final PageController pageController;
  final ValueNotifier<int> currentIndex;

  const _MultiImagePreview({
    required this.files,
    required this.pageController,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: files.length,
      onPageChanged: (index) => currentIndex.value = index,
      itemBuilder: (context, index) {
        return InteractiveViewer(
          minScale: 0.5,
          maxScale: 4.0,
          child: Center(
            child: Image.file(
              files[index],
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(
                    Icons.broken_image_outlined,
                    size: 64,
                    color: Colors.white54,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

/// Thumbnail strip for navigating between images
class _ThumbnailStrip extends StatelessWidget {
  final List<File> files;
  final int currentIndex;
  final Function(int) onThumbnailTap;
  final Function(int) onRemove;

  const _ThumbnailStrip({
    required this.files,
    required this.currentIndex,
    required this.onThumbnailTap,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 80,
      color: Colors.black87,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: files.length,
        itemBuilder: (context, index) {
          final isSelected = index == currentIndex;

          return GestureDetector(
            onTap: () => onThumbnailTap(index),
            child: Container(
              width: 64,
              height: 64,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected ? colorScheme.primary : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Stack(
                children: [
                  // Thumbnail image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.file(
                      files[index],
                      width: 64,
                      height: 64,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 64,
                          height: 64,
                          color: Colors.grey[800],
                          child: const Icon(
                            Icons.broken_image_outlined,
                            color: Colors.white54,
                            size: 24,
                          ),
                        );
                      },
                    ),
                  ),

                  // Remove button
                  Positioned(
                    top: 2,
                    right: 2,
                    child: GestureDetector(
                      onTap: () => onRemove(index),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

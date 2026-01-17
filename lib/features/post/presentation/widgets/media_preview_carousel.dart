import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Media preview carousel with page indicators
class MediaPreviewCarousel extends HookWidget {
  const MediaPreviewCarousel({
    super.key,
    required this.mediaFiles,
    this.onRemove,
  });

  final List<File> mediaFiles;
  final Function(int index)? onRemove;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final pageController = usePageController();
    final currentPage = useState(0);

    useEffect(() {
      if (mediaFiles.isEmpty) {
        if (currentPage.value != 0) currentPage.value = 0;
        return null;
      }

      if (currentPage.value >= mediaFiles.length) {
        final newPage = mediaFiles.length - 1;
        currentPage.value = newPage;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (pageController.hasClients) {
            pageController.jumpToPage(newPage);
          }
        });
      }
      return null;
    }, [mediaFiles.length]);

    return Semantics(
      label: t.postMediaPreviewLabel,
      hint: t.postMediaPreviewHint,
      child: Container(
        margin: const EdgeInsets.all(16),
        height: 300,
        decoration: BoxDecoration(
          color: colorScheme.surface,
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
          child: Stack(
            children: [
              // Image carousel
              PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  currentPage.value = index;
                },
                itemCount: mediaFiles.length,
                itemBuilder: (context, index) {
                  return Image.file(mediaFiles[index], fit: BoxFit.cover);
                },
              ),

              // Page indicators with gradient
              if (mediaFiles.length > 1)
                Positioned(
                  bottom: 16,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      mediaFiles.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: currentPage.value == index ? 28 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          gradient: currentPage.value == index
                              ? LinearGradient(
                                  colors: [
                                    colorScheme.primary,
                                    colorScheme.secondary,
                                  ],
                                )
                              : null,
                          color: currentPage.value == index
                              ? null
                              : colorScheme.onSurface.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: currentPage.value == index
                              ? [
                                  BoxShadow(
                                    color: colorScheme.primary
                                        .withValues(alpha: 0.3),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ]
                              : null,
                        ),
                      ),
                    ),
                  ),
                ),

              // Remove button with gradient (optional)
              if (onRemove != null)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Semantics(
                    button: true,
                    label: t.postMediaRemoveLabel,
                    hint: t.postMediaRemoveHint(currentPage.value + 1),
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
                          onTap: () => onRemove?.call(currentPage.value),
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
                ),

              // Image counter with gradient
              Positioned(
                top: 12,
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
                    borderRadius: BorderRadius.circular(16),
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
                    '${currentPage.value + 1}/${mediaFiles.length}',
                    style: textTheme.labelMedium?.copyWith(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

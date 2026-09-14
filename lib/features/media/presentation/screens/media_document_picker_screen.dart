import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart' as p;
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/media/domain/usecases/pick_documents_usecase.dart';
import 'package:velora/features/media/presentation/models/selected_document.dart';
import 'package:velora/features/media/presentation/widgets/molecules/media_document_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Media document picker screen
///
/// Elegant list tile UI for selecting documents
class MediaDocumentPickerScreen extends HookWidget {
  /// Maximum number of documents that can be selected
  final int maxDocuments;

  /// Allowed file extensions
  final List<String>? allowedExtensions;

  const MediaDocumentPickerScreen({
    super.key,
    this.maxDocuments = 10,
    this.allowedExtensions,
  });

  static const List<String> _defaultExtensions = [
    'pdf',
    'doc',
    'docx',
    'xls',
    'xlsx',
    'ppt',
    'pptx',
    'txt',
    'rtf',
    'csv',
    'zip',
    'rar',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    final selectedDocuments = useState<List<SelectedDocument>>([]);
    final isPickingFiles = useState(false);

    Future<void> pickDocuments() async {
      if (isPickingFiles.value) return;

      isPickingFiles.value = true;

      try {
        final remainingSlots = maxDocuments - selectedDocuments.value.length;

        if (remainingSlots <= 0) {
          AppMessenger.showToast(
            message: t.chatDocumentMaxReached(maxDocuments),
            icon: Icons.info_outline,
          );
          return;
        }

        final result = await getIt<PickDocumentsUseCase>()(
          allowedExtensions: allowedExtensions ?? _defaultExtensions,
          allowMultiple: true,
        );

        final files = result.fold((_) {
          AppMessenger.showToast(
            message: t.chatDocumentPickError,
            icon: Icons.error_outline,
            isError: true,
          );
          return <File>[];
        }, (pickedFiles) => pickedFiles);

        if (files.isEmpty) return;

        final newDocs = <SelectedDocument>[];

        for (final file in files) {
          if (newDocs.length >= remainingSlots) break;

          final isDuplicate = selectedDocuments.value.any(
            (doc) => doc.file.path == file.path,
          );

          if (!isDuplicate) {
            final name = p.basename(file.path);
            final extension = name.contains('.') ? name.split('.').last : '';

            newDocs.add(
              SelectedDocument(
                file: file,
                name: name,
                extension: extension,
                sizeBytes: await file.length(),
              ),
            );
          }
        }

        if (newDocs.isNotEmpty) {
          selectedDocuments.value = [...selectedDocuments.value, ...newDocs];
        }

        if (files.length > remainingSlots) {
          AppMessenger.showToast(
            message: t.chatDocumentSomeLimited(maxDocuments),
            icon: Icons.info_outline,
          );
        }
      } catch (e) {
        AppMessenger.showToast(
          message: t.chatDocumentPickError,
          icon: Icons.error_outline,
          isError: true,
        );
      } finally {
        isPickingFiles.value = false;
      }
    }

    void removeDocument(SelectedDocument doc) {
      selectedDocuments.value = selectedDocuments.value
          .where((d) => d.file.path != doc.file.path)
          .toList();
    }

    void sendDocuments() {
      if (selectedDocuments.value.isEmpty) {
        AppMessenger.showToast(
          message: t.chatDocumentSelectAtLeastOne,
          icon: Icons.info_outline,
        );
        return;
      }

      context.pop(selectedDocuments.value.map((d) => d.file).toList());
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest.withValues(
              alpha: 0.5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => context.pop(),
              borderRadius: BorderRadius.circular(12),
              child: Icon(Icons.close, color: theme.colorScheme.onSurface),
            ),
          ),
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [theme.colorScheme.primary, theme.colorScheme.secondary],
          ).createShader(bounds),
          child: Text(
            t.chatDocumentTitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.2,
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              gradient: selectedDocuments.value.isEmpty
                  ? null
                  : LinearGradient(
                      colors: [
                        theme.colorScheme.primary,
                        theme.colorScheme.primary.withValues(alpha: 0.85),
                      ],
                    ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: selectedDocuments.value.isEmpty
                  ? null
                  : [
                      BoxShadow(
                        color: theme.colorScheme.primary.withValues(alpha: 0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: selectedDocuments.value.isEmpty ? null : sendDocuments,
                borderRadius: BorderRadius.circular(12),
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
                        color: selectedDocuments.value.isEmpty
                            ? theme.colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.4,
                              )
                            : theme.colorScheme.onPrimary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        selectedDocuments.value.isNotEmpty
                            ? t.chatDocumentSendCount(
                                selectedDocuments.value.length,
                              )
                            : t.chatDocumentSend,
                        style: TextStyle(
                          color: selectedDocuments.value.isEmpty
                              ? theme.colorScheme.onSurfaceVariant.withValues(
                                  alpha: 0.4,
                                )
                              : theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          // Selection count header
          if (selectedDocuments.value.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.3,
                ),
                border: Border(
                  bottom: BorderSide(
                    color: theme.colorScheme.outlineVariant.withValues(
                      alpha: 0.3,
                    ),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: theme.colorScheme.onPrimary.withValues(
                          alpha: 0.2,
                        ),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          size: 16,
                          color: theme.colorScheme.onPrimary,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          t.chatDocumentSelectedCount(
                            selectedDocuments.value.length,
                            maxDocuments,
                          ),
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => selectedDocuments.value = [],
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.clear_all_rounded,
                              size: 18,
                              color: theme.colorScheme.error,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              t.chatDocumentClearAll,
                              style: TextStyle(
                                color: theme.colorScheme.error,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // Document list
          Expanded(
            child: selectedDocuments.value.isEmpty
                ? _buildEmptyState(context, pickDocuments, isPickingFiles.value)
                : _buildDocumentList(
                    context,
                    selectedDocuments.value,
                    removeDocument,
                  ),
          ),

          // Add more button (when documents exist)
          if (selectedDocuments.value.isNotEmpty &&
              selectedDocuments.value.length < maxDocuments)
            _buildAddMoreButton(context, pickDocuments, isPickingFiles.value),
        ],
      ),
    );
  }

  Widget _buildEmptyState(
    BuildContext context,
    VoidCallback onPickFiles,
    bool isLoading,
  ) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeOutBack,
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value,
                  child: Opacity(opacity: value.clamp(0.0, 1.0), child: child),
                );
              },
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withValues(
                    alpha: 0.3,
                  ),
                  shape: BoxShape.circle,
                ),
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [
                      theme.colorScheme.primary,
                      theme.colorScheme.secondary,
                    ],
                  ).createShader(bounds),
                  child: Icon(
                    Icons.folder_open_outlined,
                    size: 56,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              t.chatDocumentEmptyTitle,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t.chatDocumentEmptySubtitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                letterSpacing: 0.1,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: isLoading ? null : onPickFiles,
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        isLoading
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: theme.colorScheme.onPrimary,
                                ),
                              )
                            : Icon(
                                Icons.attach_file_rounded,
                                color: theme.colorScheme.onPrimary,
                                size: 20,
                              ),
                        const SizedBox(width: 8),
                        Text(
                          t.chatDocumentBrowseFiles,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
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
      ),
    );
  }

  Widget _buildDocumentList(
    BuildContext context,
    List<SelectedDocument> documents,
    void Function(SelectedDocument) onRemove,
  ) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: documents.length,
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Divider(
          height: 1,
          indent: 56,
          color: Theme.of(
            context,
          ).colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      itemBuilder: (context, index) {
        final doc = documents[index];
        return MediaDocumentTile(document: doc, onRemove: () => onRemove(doc));
      },
    );
  }

  Widget _buildAddMoreButton(
    BuildContext context,
    VoidCallback onPickFiles,
    bool isLoading,
  ) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.primary.withValues(alpha: 0.5),
              width: 1.5,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isLoading ? null : onPickFiles,
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isLoading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: theme.colorScheme.primary,
                            ),
                          )
                        : Icon(
                            Icons.add_rounded,
                            color: theme.colorScheme.primary,
                            size: 20,
                          ),
                    const SizedBox(width: 8),
                    Text(
                      t.chatDocumentAddMore,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Result model for selected document
class SelectedDocument {
  final File file;
  final String name;
  final String extension;
  final int sizeBytes;

  const SelectedDocument({
    required this.file,
    required this.name,
    required this.extension,
    required this.sizeBytes,
  });

  String get formattedSize {
    if (sizeBytes < 1024) {
      return '$sizeBytes B';
    } else if (sizeBytes < 1024 * 1024) {
      return '${(sizeBytes / 1024).toStringAsFixed(1)} KB';
    } else {
      return '${(sizeBytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
  }
}

/// Chat document picker screen
///
/// Elegant list tile UI for selecting documents
class ChatDocumentPickerScreen extends HookWidget {
  /// Maximum number of documents that can be selected
  final int maxDocuments;

  /// Allowed file extensions
  final List<String>? allowedExtensions;

  const ChatDocumentPickerScreen({
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

        final result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: allowedExtensions ?? _defaultExtensions,
          allowMultiple: true,
          withData: false,
        );

        if (result == null || result.files.isEmpty) return;

        final newDocs = <SelectedDocument>[];

        for (final platformFile in result.files) {
          if (newDocs.length >= remainingSlots) break;

          if (platformFile.path != null) {
            final file = File(platformFile.path!);
            if (await file.exists()) {
              // Check for duplicates
              final isDuplicate = selectedDocuments.value.any(
                (doc) => doc.file.path == file.path,
              );

              if (!isDuplicate) {
                newDocs.add(SelectedDocument(
                  file: file,
                  name: platformFile.name,
                  extension: platformFile.extension ?? '',
                  sizeBytes: platformFile.size,
                ));
              }
            }
          }
        }

        if (newDocs.isNotEmpty) {
          selectedDocuments.value = [...selectedDocuments.value, ...newDocs];
        }

        if (result.files.length > remainingSlots) {
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

      context.pop(
        selectedDocuments.value.map((d) => d.file).toList(),
      );
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.colorScheme.surface,
                theme.colorScheme.surfaceContainerLowest,
              ],
            ),
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
            color: theme.colorScheme.surfaceContainerHighest
                .withValues(alpha: 0.5),
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
            colors: [
              theme.colorScheme.primary,
              theme.colorScheme.secondary,
            ],
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
              borderRadius: BorderRadius.circular(20),
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
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.send_rounded,
                        size: 18,
                        color: selectedDocuments.value.isEmpty
                            ? theme.colorScheme.onSurfaceVariant
                                .withValues(alpha: 0.4)
                            : theme.colorScheme.onPrimary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        selectedDocuments.value.isNotEmpty
                            ? t.chatDocumentSendCount(
                                selectedDocuments.value.length)
                            : t.chatDocumentSend,
                        style: TextStyle(
                          color: selectedDocuments.value.isEmpty
                              ? theme.colorScheme.onSurfaceVariant
                                  .withValues(alpha: 0.4)
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
                gradient: LinearGradient(
                  colors: [
                    theme.colorScheme.surfaceContainerHighest
                        .withValues(alpha: 0.3),
                    theme.colorScheme.surfaceContainer.withValues(alpha: 0.2),
                  ],
                ),
                border: Border(
                  bottom: BorderSide(
                    color:
                        theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
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
                      gradient: LinearGradient(
                        colors: [
                          theme.colorScheme.primary,
                          theme.colorScheme.secondary,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color:
                            theme.colorScheme.onPrimary.withValues(alpha: 0.2),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:
                              theme.colorScheme.primary.withValues(alpha: 0.3),
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
                            horizontal: 12, vertical: 6),
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
                      theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                      theme.colorScheme.secondaryContainer
                          .withValues(alpha: 0.2),
                    ],
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withValues(alpha: 0.1),
                      blurRadius: 20,
                      spreadRadius: 3,
                    ),
                  ],
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
                gradient: LinearGradient(
                  colors: [
                    theme.colorScheme.primary,
                    theme.colorScheme.primary.withValues(alpha: 0.85),
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: isLoading ? null : onPickFiles,
                  borderRadius: BorderRadius.circular(24),
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
          color: Theme.of(context)
              .colorScheme
              .outlineVariant
              .withValues(alpha: 0.3),
        ),
      ),
      itemBuilder: (context, index) {
        final doc = documents[index];
        return _DocumentListTile(
          document: doc,
          onRemove: () => onRemove(doc),
        );
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
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            theme.colorScheme.surface,
            theme.colorScheme.surfaceContainerLowest,
          ],
        ),
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, -2),
          ),
        ],
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

/// Elegant document list tile widget
class _DocumentListTile extends StatelessWidget {
  final SelectedDocument document;
  final VoidCallback onRemove;

  const _DocumentListTile({
    required this.document,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dismissible(
      key: ValueKey(document.file.path),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onRemove(),
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.error,
              theme.colorScheme.error.withValues(alpha: 0.85),
            ],
          ),
        ),
        child: Icon(
          Icons.delete_outline_rounded,
          color: theme.colorScheme.onError,
          size: 24,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color:
              theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          leading: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: _getExtensionGradient(document.extension),
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: _getExtensionGradient(document.extension)[0]
                      .withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Text(
                document.extension.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          title: Text(
            document.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              document.formattedSize,
              style: TextStyle(
                fontSize: 12,
                color: theme.colorScheme.onSurfaceVariant,
                letterSpacing: 0.1,
              ),
            ),
          ),
          trailing: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.error.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onRemove,
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.close_rounded,
                    color: theme.colorScheme.error,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Color> _getExtensionGradient(String ext) {
    switch (ext.toLowerCase()) {
      case 'pdf':
        return [const Color(0xFFE53935), const Color(0xFFC62828)];
      case 'doc':
      case 'docx':
        return [const Color(0xFF1976D2), const Color(0xFF1565C0)];
      case 'xls':
      case 'xlsx':
      case 'csv':
        return [const Color(0xFF43A047), const Color(0xFF388E3C)];
      case 'ppt':
      case 'pptx':
        return [const Color(0xFFFF7043), const Color(0xFFF4511E)];
      case 'txt':
      case 'rtf':
        return [const Color(0xFF757575), const Color(0xFF616161)];
      case 'zip':
      case 'rar':
        return [const Color(0xFFFFB300), const Color(0xFFFFA000)];
      default:
        return [const Color(0xFF26A69A), const Color(0xFF00897B)];
    }
  }
}

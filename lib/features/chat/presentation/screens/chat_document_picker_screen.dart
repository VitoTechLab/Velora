import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/themes/color_material.dart';
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

  /// Show document picker and return selected files
  static Future<List<File>?> show(
    BuildContext context, {
    int maxDocuments = 10,
    List<String>? allowedExtensions,
  }) async {
    return await Navigator.of(context).push<List<File>>(
      MaterialPageRoute(
        builder: (context) => ChatDocumentPickerScreen(
          maxDocuments: maxDocuments,
          allowedExtensions: allowedExtensions,
        ),
      ),
    );
  }

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

      Navigator.of(context).pop(
        selectedDocuments.value.map((d) => d.file).toList(),
      );
    }

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(t.chatDocumentTitle),
        centerTitle: false,
        actions: [
          TextButton.icon(
            onPressed: selectedDocuments.value.isEmpty ? null : sendDocuments,
            icon: Icon(
              Icons.send_rounded,
              size: 18,
              color: selectedDocuments.value.isEmpty
                  ? theme.disabledColor
                  : MaterialColorsCustom.brandSeafoam,
            ),
            label: Text(
              selectedDocuments.value.isNotEmpty
                  ? t.chatDocumentSendCount(selectedDocuments.value.length)
                  : t.chatDocumentSend,
              style: TextStyle(
                color: selectedDocuments.value.isEmpty
                    ? theme.disabledColor
                    : MaterialColorsCustom.brandSeafoam,
                fontWeight: FontWeight.w600,
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest
                    .withValues(alpha: 0.5),
                border: Border(
                  bottom: BorderSide(
                    color: theme.dividerColor.withValues(alpha: 0.5),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
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
                    ),
                    child: Text(
                      t.chatDocumentSelectedCount(
                        selectedDocuments.value.length,
                        maxDocuments,
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => selectedDocuments.value = [],
                    child: Text(
                      t.chatDocumentClearAll,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onSurface.withValues(alpha: 0.7),
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
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    MaterialColorsCustom.brandSeafoam.withValues(alpha: 0.2),
                    MaterialColorsCustom.brandEmerald.withValues(alpha: 0.2),
                  ],
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.folder_open_outlined,
                size: 48,
                color: MaterialColorsCustom.brandSeafoam.withValues(alpha: 0.8),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              t.chatDocumentEmptyTitle,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t.chatDocumentEmptySubtitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            FilledButton.icon(
              onPressed: isLoading ? null : onPickFiles,
              icon: isLoading
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.attach_file_rounded),
              label: Text(t.chatDocumentBrowseFiles),
              style: FilledButton.styleFrom(
                backgroundColor: MaterialColorsCustom.brandSeafoam,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
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
      separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
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
        color: theme.scaffoldBackgroundColor,
        border: Border(
          top: BorderSide(
            color: theme.dividerColor.withValues(alpha: 0.5),
          ),
        ),
      ),
      child: SafeArea(
        child: OutlinedButton.icon(
          onPressed: isLoading ? null : onPickFiles,
          icon: isLoading
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.add_rounded),
          label: Text(t.chatDocumentAddMore),
          style: OutlinedButton.styleFrom(
            foregroundColor: MaterialColorsCustom.brandSeafoam,
            side: const BorderSide(
              color: MaterialColorsCustom.brandSeafoam,
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
            minimumSize: const Size.fromHeight(48),
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
        color: theme.colorScheme.error,
        child: const Icon(
          Icons.delete_outline,
          color: Colors.white,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
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
          ),
          child: Center(
            child: Text(
              document.extension.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        title: Text(
          document.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          document.formattedSize,
          style: TextStyle(
            fontSize: 13,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.close,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
          ),
          onPressed: onRemove,
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
        return [
          MaterialColorsCustom.brandSeafoam,
          MaterialColorsCustom.brandEmerald,
        ];
    }
  }
}

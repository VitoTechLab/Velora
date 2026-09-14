import 'package:flutter/material.dart';
import 'package:velora/features/media/presentation/models/selected_document.dart';

class MediaDocumentTile extends StatelessWidget {
  const MediaDocumentTile({
    super.key,
    required this.document,
    required this.onRemove,
  });

  final SelectedDocument document;
  final VoidCallback onRemove;

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
        child: Icon(
          Icons.delete_outline_rounded,
          color: theme.colorScheme.onError,
          size: 24,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withValues(
            alpha: 0.28,
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.24),
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 6,
          ),
          leading: _DocumentExtensionMark(extension: document.extension),
          title: Text(
            document.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
              height: 1.2,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              document.formattedSize,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          trailing: IconButton(
            onPressed: onRemove,
            icon: const Icon(Icons.close_rounded),
            color: theme.colorScheme.error,
            tooltip: MaterialLocalizations.of(context).deleteButtonTooltip,
          ),
        ),
      ),
    );
  }
}

class _DocumentExtensionMark extends StatelessWidget {
  const _DocumentExtensionMark({required this.extension});

  final String extension;

  @override
  Widget build(BuildContext context) {
    final ext = extension.isEmpty ? 'FILE' : extension.toUpperCase();
    final gradient = _extensionGradient(extension);

    return Container(
      width: 46,
      height: 46,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradient,
        ),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Text(
        ext.length > 4 ? ext.substring(0, 4) : ext,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10.5,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.4,
        ),
      ),
    );
  }

  List<Color> _extensionGradient(String ext) {
    switch (ext.toLowerCase()) {
      case 'pdf':
        return const [Color(0xFFE53935), Color(0xFFC62828)];
      case 'doc':
      case 'docx':
        return const [Color(0xFF1976D2), Color(0xFF1565C0)];
      case 'xls':
      case 'xlsx':
      case 'csv':
        return const [Color(0xFF43A047), Color(0xFF388E3C)];
      case 'ppt':
      case 'pptx':
        return const [Color(0xFFFF7043), Color(0xFFF4511E)];
      case 'txt':
      case 'rtf':
        return const [Color(0xFF757575), Color(0xFF616161)];
      case 'zip':
      case 'rar':
        return const [Color(0xFFFFB300), Color(0xFFFFA000)];
      default:
        return const [Color(0xFF26A69A), Color(0xFF00897B)];
    }
  }
}

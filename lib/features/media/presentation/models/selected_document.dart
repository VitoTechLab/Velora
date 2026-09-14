import 'dart:io';

class SelectedDocument {
  const SelectedDocument({
    required this.file,
    required this.name,
    required this.extension,
    required this.sizeBytes,
  });

  final File file;
  final String name;
  final String extension;
  final int sizeBytes;

  String get formattedSize {
    if (sizeBytes < 1024) return '$sizeBytes B';
    if (sizeBytes < 1024 * 1024) {
      return '${(sizeBytes / 1024).toStringAsFixed(1)} KB';
    }
    return '${(sizeBytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}

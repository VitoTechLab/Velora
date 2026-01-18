/// Arguments for chat document picker screen
class ChatDocumentPickerArgs {
  /// Maximum number of documents that can be selected
  final int maxDocuments;

  /// Allowed file extensions
  final List<String>? allowedExtensions;

  const ChatDocumentPickerArgs({
    this.maxDocuments = 10,
    this.allowedExtensions,
  });
}

/// Temporary storage untuk draft caption saat create post
/// Digunakan untuk transfer data caption dari create screen ke upload status card
class PostDraftService {
  static String? _caption;
  static String? _userId;

  /// Save draft caption dan userId saat mulai create post
  static void saveDraft({required String caption, required String userId}) {
    _caption = caption;
    _userId = userId;
  }

  /// Get caption yang disimpan
  static String getCaption() => _caption ?? '';

  /// Get userId yang disimpan
  static String getUserId() => _userId ?? '';

  /// Check apakah post ini milik user tertentu
  static bool isMyPost(String userId) => _userId == userId;

  /// Clear draft setelah selesai
  static void clear() {
    _caption = null;
    _userId = null;
  }
}

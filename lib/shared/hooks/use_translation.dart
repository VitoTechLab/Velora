import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/translation/translation.dart';

/// Translation state for translatable content
enum TranslationStatus { original, loading, translated }

/// Result of the useTranslation hook
class TranslationResult {
  final TranslationStatus status;
  final String displayText;
  final Future<void> Function() toggle;
  final String Function(String original, String translating, String seeOriginal)
      getButtonText;

  /// Whether the translate button should be shown
  /// False if source language == target language or detection in progress
  final bool shouldShowButton;

  /// Whether language detection is in progress
  final bool isDetecting;

  const TranslationResult({
    required this.status,
    required this.displayText,
    required this.toggle,
    required this.getButtonText,
    required this.shouldShowButton,
    required this.isDetecting,
  });

  bool get isLoading => status == TranslationStatus.loading;
  bool get isTranslated => status == TranslationStatus.translated;
}

/// Hook for handling text translation with toggle functionality
///
/// Automatically detects source language on mount and hides the translate
/// button if source language matches the user's target language.
///
/// Example:
/// ```dart
/// final translation = useTranslation(comment.content);
///
/// Text(translation.displayText);
///
/// // Only show button if languages are different
/// if (translation.shouldShowButton)
///   TextButton(
///     onPressed: translation.toggle,
///     child: Text(translation.getButtonText(
///       t.feedSeeTranslation,
///       t.feedTranslating,
///       t.feedSeeOriginal,
///     )),
///   ),
/// ```
TranslationResult useTranslation(String originalText) {
  final context = useContext();
  final status = useState(TranslationStatus.original);
  final translatedText = useState<String?>(null);
  final isDetecting = useState(true);
  final shouldShowButton = useState(false);

  // Get target language from current locale
  final locale = Localizations.localeOf(context);
  final targetLang = locale.languageCode;

  // Auto-detect source language on mount to determine if button should show
  useEffect(() {
    Future<void> detectSourceLanguage() async {
      if (originalText.trim().isEmpty) {
        isDetecting.value = false;
        shouldShowButton.value = false;
        return;
      }

      try {
        final translationService = getIt<TranslationService>();
        final detectedLang = await translationService.detectLanguage(originalText);

        if (detectedLang == null) {
          // Could not detect, hide button
          shouldShowButton.value = false;
        } else {
          // Show button only if languages are different
          shouldShowButton.value = detectedLang != targetLang;
        }
      } catch (e) {
        shouldShowButton.value = false;
      } finally {
        isDetecting.value = false;
      }
    }

    detectSourceLanguage();
    return null;
  }, [originalText, targetLang]);

  Future<void> toggle() async {
    if (status.value == TranslationStatus.loading) return;

    if (status.value == TranslationStatus.translated) {
      status.value = TranslationStatus.original;
      return;
    }

    status.value = TranslationStatus.loading;

    try {
      final translationService = getIt<TranslationService>();

      final result = await translationService.translate(
        text: originalText,
        targetLanguageCode: targetLang,
      );

      if (result != null) {
        translatedText.value = result.translatedText;
        status.value = TranslationStatus.translated;
      } else {
        // Same language or failed - hide button for next time
        shouldShowButton.value = false;
        status.value = TranslationStatus.original;
      }
    } catch (e) {
      status.value = TranslationStatus.original;
    }
  }

  String getButtonText(String original, String translating, String seeOriginal) {
    switch (status.value) {
      case TranslationStatus.original:
        return original;
      case TranslationStatus.loading:
        return translating;
      case TranslationStatus.translated:
        return seeOriginal;
    }
  }

  final displayText = status.value == TranslationStatus.translated
      ? translatedText.value ?? originalText
      : originalText;

  return TranslationResult(
    status: status.value,
    displayText: displayText,
    toggle: toggle,
    getButtonText: getButtonText,
    shouldShowButton: shouldShowButton.value,
    isDetecting: isDetecting.value,
  );
}

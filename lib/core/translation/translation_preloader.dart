import 'dart:async';

import 'package:velora/core/translation/translation_service.dart';

/// Preloads translation models at app startup
/// 
/// This class downloads required translation models in the background
/// to avoid delays during runtime translation.
class TranslationPreloader {
  /// Creates a preloader with the given translation service
  TranslationPreloader(this._service);

  final TranslationService _service;
  bool _initialized = false;

  /// Preloads translation models for the specified languages
  /// 
  /// This method should be called once at app start or after login.
  /// Subsequent calls will be ignored.
  /// 
  /// Example:
  /// ```dart
  /// await preloader.preload(languages: ['en', 'id', 'ja']);
  /// ```
  Future<void> preload({
    List<String> languages = const ['en', 'id'],
  }) async {
    if (_initialized) return;
    _initialized = true;

    for (final lang in languages) {
      final downloaded = await _service.isModelDownloaded(lang);
      if (!downloaded) {
        await _service.downloadModel(lang);
      }
    }

    // Warm-up translator (silent - no error propagation)
    unawaited(_warmUp());
  }

  /// Performs a test translation to warm up the service
  Future<void> _warmUp() async {
    try {
      await _service.translate(
        text: 'warmup',
        targetLanguageCode: 'id',
      );
    } catch (_) {
      // Silent - warmup is best effort only
    }
  }
}

import 'dart:async';

import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:velora/core/utils/log_alias.dart';

/// Supported languages for translation
enum SupportedLanguage {
  english('en', TranslateLanguage.english),
  indonesian('id', TranslateLanguage.indonesian),
  japanese('ja', TranslateLanguage.japanese),
  korean('ko', TranslateLanguage.korean),
  chinese('zh', TranslateLanguage.chinese);

  const SupportedLanguage(this.code, this.mlKitLanguage);

  final String code;
  final TranslateLanguage mlKitLanguage;

  static SupportedLanguage? fromCode(String code) {
    final normalized = _mapLang(code);
    return SupportedLanguage.values.cast<SupportedLanguage?>().firstWhere(
      (lang) => lang?.code == normalized,
      orElse: () => null,
    );
  }

  /// Maps various language codes to our supported format
  static String _mapLang(String code) {
    final lowerCode = code.toLowerCase().trim();

    // Handle Chinese variants
    if (lowerCode.startsWith('zh')) return 'zh';

    // Handle common variations
    switch (lowerCode) {
      case 'en-us':
      case 'en-gb':
      case 'eng':
        return 'en';
      case 'id-id':
      case 'ind':
        return 'id';
      case 'ja-jp':
      case 'jpn':
        return 'ja';
      case 'ko-kr':
      case 'kor':
        return 'ko';
      case 'zh-cn':
      case 'zh-tw':
      case 'zh-hans':
      case 'zh-hant':
      case 'cmn':
      case 'zho':
        return 'zh';
      default:
        return lowerCode;
    }
  }
}

/// Translation result containing translated text and detected language
class TranslationResult {
  const TranslationResult({
    required this.translatedText,
    required this.sourceLanguage,
    required this.targetLanguage,
  });

  final String translatedText;
  final String sourceLanguage;
  final String targetLanguage;
}

/// Service for detecting language and translating text using ML Kit
class TranslationService {
  TranslationService();

  static const _logTag = 'TranslationService';

  final LanguageIdentifier _languageIdentifier = LanguageIdentifier(
    confidenceThreshold: 0.5,
  );

  final Map<String, OnDeviceTranslator> _translatorCache = {};

  bool _isDisposed = false;

  /// Detects the language of the given text
  Future<String?> detectLanguage(String text) async {
    if (_isDisposed) return null;
    if (text.trim().isEmpty) return null;

    try {
      final detectedCode = await _languageIdentifier.identifyLanguage(text);

      if (detectedCode == 'und') {
        logi('Language detection undetermined for text', tag: _logTag);
        return null;
      }

      final mapped = SupportedLanguage._mapLang(detectedCode);
      logi('Detected language: $detectedCode -> $mapped', tag: _logTag);
      return mapped;
    } catch (e) {
      loge('Language detection failed', error: e, tag: _logTag);
      return null;
    }
  }

  /// Translates text to the target language
  /// Returns null if translation fails or languages are not supported
  Future<TranslationResult?> translate({
    required String text,
    required String targetLanguageCode,
    String? sourceLanguageCode,
  }) async {
    if (_isDisposed) return null;
    if (text.trim().isEmpty) return null;

    try {
      // Detect source language if not provided
      final detectedSource = sourceLanguageCode ?? await detectLanguage(text);
      if (detectedSource == null) {
        logw('Could not detect source language', tag: _logTag);
        return null;
      }

      // Check if source and target are the same
      final normalizedTarget = SupportedLanguage._mapLang(targetLanguageCode);
      if (detectedSource == normalizedTarget) {
        logi('Source and target language are the same, skipping', tag: _logTag);
        return null;
      }

      // Get supported languages
      final sourceLang = SupportedLanguage.fromCode(detectedSource);
      final targetLang = SupportedLanguage.fromCode(normalizedTarget);

      if (sourceLang == null) {
        logw('Source language not supported: $detectedSource', tag: _logTag);
        return null;
      }

      if (targetLang == null) {
        logw('Target language not supported: $normalizedTarget', tag: _logTag);
        return null;
      }

      // Get or create translator
      final cacheKey = '${sourceLang.code}_${targetLang.code}';
      final translator = _translatorCache.putIfAbsent(
        cacheKey,
        () => OnDeviceTranslator(
          sourceLanguage: sourceLang.mlKitLanguage,
          targetLanguage: targetLang.mlKitLanguage,
        ),
      );

      logi(
        'Translating from ${sourceLang.code} to ${targetLang.code}',
        tag: _logTag,
      );

      final translatedText = await translator.translateText(text);

      return TranslationResult(
        translatedText: translatedText,
        sourceLanguage: sourceLang.code,
        targetLanguage: targetLang.code,
      );
    } catch (e) {
      loge('Translation failed', error: e, tag: _logTag);
      return null;
    }
  }

  /// Checks if model download is required for the given language pair
  Future<bool> isModelDownloaded(String languageCode) async {
    final lang = SupportedLanguage.fromCode(languageCode);
    if (lang == null) return false;

    try {
      final modelManager = OnDeviceTranslatorModelManager();
      return await modelManager.isModelDownloaded(lang.mlKitLanguage.bcpCode);
    } catch (e) {
      loge('Failed to check model status', error: e, tag: _logTag);
      return false;
    }
  }

  /// Downloads the translation model for the given language
  Future<bool> downloadModel(String languageCode) async {
    final lang = SupportedLanguage.fromCode(languageCode);
    if (lang == null) return false;

    try {
      logi('Downloading model for ${lang.code}', tag: _logTag);
      final modelManager = OnDeviceTranslatorModelManager();
      return await modelManager.downloadModel(lang.mlKitLanguage.bcpCode);
    } catch (e) {
      loge('Failed to download model', error: e, tag: _logTag);
      return false;
    }
  }

  /// Disposes resources
  Future<void> dispose() async {
    if (_isDisposed) return;
    _isDisposed = true;

    await _languageIdentifier.close();

    for (final translator in _translatorCache.values) {
      await translator.close();
    }
    _translatorCache.clear();

    logi('TranslationService disposed', tag: _logTag);
  }
}

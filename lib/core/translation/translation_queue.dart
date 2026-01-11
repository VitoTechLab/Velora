import 'dart:async';

import 'package:velora/core/translation/translation_service.dart';

/// Task for queued translation operations
class _Task {
  const _Task(this.text, this.targetLang, this.completer);

  final String text;
  final String targetLang;
  final Completer<TranslationResult?> completer;
}

/// Queue-based translation processor
/// 
/// Handles multiple translation requests sequentially to avoid
/// overwhelming the ML Kit translation service.
class TranslationQueue {
  /// Creates a queue with the given translation service
  TranslationQueue(this._service);

  final TranslationService _service;
  final List<_Task> _queue = [];
  bool _processing = false;

  /// Enqueues a translation task and returns a future with the result
  /// 
  /// Example:
  /// ```dart
  /// final result = await queue.enqueue(
  ///   text: 'Hello',
  ///   targetLang: 'id',
  /// );
  /// ```
  Future<TranslationResult?> enqueue({
    required String text,
    required String targetLang,
  }) {
    final completer = Completer<TranslationResult?>();
    _queue.add(_Task(text, targetLang, completer));
    _process();
    return completer.future;
  }

  /// Processes queued tasks sequentially
  Future<void> _process() async {
    if (_processing || _queue.isEmpty) return;
    _processing = true;

    while (_queue.isNotEmpty) {
      final task = _queue.removeAt(0);
      try {
        final result = await _service.translate(
          text: task.text,
          targetLanguageCode: task.targetLang,
        );
        task.completer.complete(result);
      } catch (e) {
        task.completer.completeError(e);
      }
    }

    _processing = false;
  }

  /// Clears all pending tasks
  void dispose() {
    _queue.clear();
  }
}

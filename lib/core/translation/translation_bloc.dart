import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/translation/translation_queue.dart';
import 'package:velora/core/translation/translation_state.dart';

/// BLoC for managing translation UI state
/// 
/// Provides reactive state management for translation operations,
/// including loading states and error handling.
class TranslationBloc extends Cubit<TranslationState> {
  /// Creates a bloc with the given translation queue
  TranslationBloc(this._queue) : super(const TranslationState());

  final TranslationQueue _queue;

  /// Translates the given text to the target language
  /// 
  /// Emits loading state during translation and updates with
  /// the result or error upon completion.
  /// 
  /// Example:
  /// ```dart
  /// await bloc.translate('Hello', targetLang: 'id');
  /// ```
  Future<void> translate(
    String text, {
    required String targetLang,
  }) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final result = await _queue.enqueue(
        text: text,
        targetLang: targetLang,
      );

      emit(state.copyWith(
        isLoading: false,
        result: result?.translatedText,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  /// Clears the current translation result and error
  void clear() {
    emit(const TranslationState());
  }
}
